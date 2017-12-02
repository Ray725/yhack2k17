# Grab and parse files from ViTech API

from dateutil import relativedelta, parser
from datetime import datetime
import pytz
import csv
import json

print("Opening participant_detail.json..")
participant_detail_json = json.load(open('JSON/participant_detail.json'))["response"]["docs"]
print("Opening participant.json..")
participant_json = json.load(open('JSON/participant.json'))["response"]["docs"]
print("Opening quotes.json..")
quotes_json = json.load(open('JSON/quotes.json'))["response"]["docs"]

participants = {}
print("Parsing participant.json...")
for participant in participant_json:
    participants[participant["id"]] = participant

print("Parsing quotes.json...")
quotes = {}
for quote in quotes_json:
    quotes[quote["id"]] = quote

# Generate Dictionary
people = []
counter = 0
print("Assembling dictionaries...")

for person in participant_detail_json:
    if counter % 1000 == 0:
        print("Row {} of {}".format(counter, len(participant_detail_json)))
    counter += 1
    person_dict = dict()
    person_dict["employed"] = 0 if person.get("EMPLOYMENT_STATUS") is "Unemployed" else 1
    person_dict["peopleCovered"] = person.get("PEOPLE_COVERED")
    person_dict["annualIncome"] = person.get("ANNUAL_INCOME")
    person_dict["maritalStatus"] = 0 if person.get("MARITAL_STATUS") is "S" else 1
    person_dict["height"] = person.get("HEIGHT")
    person_dict["weight"] = person.get("WEIGHT")
    person_dict["tobacco"] = 0 if person.get("TOBACCO") is "No" else 1

    # Sum up preconditions
    precon = person.get("PRE_CONDITIONS")
    if precon:
        person_dict["highRisk"] = precon.count("High")
        person_dict["mediumRisk"] = precon.count("Medium")
        person_dict["lowRisk"] = precon.count("Low")
    else:
        person_dict["highRisk"] = 0
        person_dict["mediumRisk"] = 0
        person_dict["lowRisk"] = 0

    # Grab participant for each person
    participant = participants.get(person["id"])
    if not participant:
        participants.pop(person["id"], None)
        participant_detail_json.remove(person)
        continue

    person_dict["sex"] = 0 if participant.get("sex") is "M" else 1
    person_dict["age"] = relativedelta.relativedelta(pytz.utc.localize(datetime.today()), parser.parse(participant["DOB"])).years
    person_dict["latitude"] = participant.get("latitude")
    person_dict["longitude"] = participant.get("longitude")

    # Grab quote for each person
    quote = quotes[person["id"]]
    if not quote:
        participants.pop(person["id"], None)
        participant_detail_json.remove(person)
        continue

    person_dict["bronze"] = quote.get("BRONZE")
    person_dict["silver"] = quote.get("SILVER")
    person_dict["gold"] = quote.get("GOLD")
    person_dict["platinum"] = quote.get("PLATINUM")

    people.append(person_dict)

# Create CSV
keys = people[0].keys()
with open('people4.csv', 'w') as output_file:
    dict_writer = csv.DictWriter(output_file, keys)
    dict_writer.writeheader()
    dict_writer.writerows(people)
