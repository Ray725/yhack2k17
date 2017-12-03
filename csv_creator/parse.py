# Grab and parse files from ViTech API

from dateutil import relativedelta, parser
from datetime import datetime
import pytz
import csv
import json

print("Opening participant_detail.json..")
participant_detail_json = json.load(open('JSON/detail.json'))["response"]["docs"]
print("Opening participant.json..")
participant_json = json.load(open('JSON/participant.json'))["response"]["docs"]
print("Opening quotes.json..")
quotes_json = json.load(open('JSON/quotes.json'))["response"]["docs"]

initial = {}

print("Parsing participant.json...")
for participant in participant_json:
    initial[participant["id"]] = participant

secondary = {}
for detail in participant_detail_json:
    last = initial.get(detail["id"])
    if last:
        secondary[detail["id"]] = (last, detail)


final = []
for quote in quotes_json:
    last = secondary.get(quote["id"])
    if last:
        final.append((last[0], last[1], quote))


# Generate Dictionary
people = []
counter = 0
print("Assembling dictionaries...")

for total_person in final:
    if counter % 1000 == 0:
        print("Row {} of {}".format(counter, len(final)))
    counter += 1

    person_dict = {}

    # participant
    participant = total_person[0]
    person_dict["sex"] = 0 if participant.get("sex") is "M" else 1
    person_dict["age"] = relativedelta.relativedelta(pytz.utc.localize(datetime.today()), parser.parse(participant["DOB"])).years
    person_dict["latitude"] = participant.get("latitude")
    person_dict["longitude"] = participant.get("longitude")

    # participant_detail
    participant_detail = total_person[1]
    person_dict = dict()
    person_dict["employed"] = 0 if participant_detail.get("EMPLOYMENT_STATUS") is "Unemployed" else 1
    person_dict["peopleCovered"] = participant_detail.get("PEOPLE_COVERED")
    person_dict["annualIncome"] = participant_detail.get("ANNUAL_INCOME")
    person_dict["maritalStatus"] = 0 if participant_detail.get("MARITAL_STATUS") is "S" else 1
    person_dict["height"] = participant_detail.get("HEIGHT")
    person_dict["weight"] = participant_detail.get("WEIGHT")
    person_dict["tobacco"] = 0 if participant_detail.get("TOBACCO") is "No" else 1
    precon = participant_detail.get("PRE_CONDITIONS")
    if precon:
        person_dict["highRisk"] = precon.count("High")
        person_dict["mediumRisk"] = precon.count("Medium")
        person_dict["lowRisk"] = precon.count("Low")
    else:
        person_dict["highRisk"] = 0
        person_dict["mediumRisk"] = 0
        person_dict["lowRisk"] = 0
    person_dict["coverage"] = participant_detail.get("OPTIONAL_INSURED") - 500000

    # quotes
    quote = total_person[2]
    person_dict["bronze"] = quote.get("BRONZE")
    person_dict["silver"] = quote.get("SILVER")
    person_dict["gold"] = quote.get("GOLD")
    person_dict["platinum"] = quote.get("PLATINUM")

    people.append(person_dict)

# Create CSV
keys = people[0].keys()
with open('people.csv', 'w') as output_file:
    dict_writer = csv.DictWriter(output_file, keys)
    dict_writer.writeheader()
    dict_writer.writerows(people)