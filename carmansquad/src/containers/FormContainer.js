import React, {Component} from 'react';
import CheckboxOrRadioGroup from '../components/CheckboxOrRadioGroup';
import SingleInput from '../components/SingleInput';
import TextArea from '../components/TextArea';
import Select from '../components/Select';

class FormContainer extends Component {
	constructor(props) {
		super(props);
		this.state = {
			ownerName: '',
			petSelections: [],
			selectedPets: [],
			ageOptions: [],
			ownerAgeRangeSelection: '',
			siblingOptions: [],
			siblingSelection: [],
			currentPetCount: 0,
			description: '',
      // this is where the real app data is held
      employmentSelection: [],
      employmentOptions: [],
      lowRisk: 0,
      medRisk: 0,
      highRisk: 0,
      peopleCovered: 0,
      annualIncome: 0,
      maritalStatus: 0,
      height: 0,
      weight: 0,
      tobacco: 0,
      sex: 0,
      age: 0
		};
		this.handleFormSubmit = this.handleFormSubmit.bind(this);
		this.handleClearForm = this.handleClearForm.bind(this);
		this.handleFullNameChange = this.handleFullNameChange.bind(this);
		this.handleCurrentPetCountChange = this.handleCurrentPetCountChange.bind(this);
		this.handleAgeRangeSelect = this.handleAgeRangeSelect.bind(this);
		this.handlePetSelection = this.handlePetSelection.bind(this);
		this.handleSiblingsSelection = this.handleSiblingsSelection.bind(this);
		this.handleDescriptionChange = this.handleDescriptionChange.bind(this);
    // this is real app stuff
    this.handleEmploymentSelection = this.handleEmploymentSelection.bind(this);
	}
	componentDidMount() {
		fetch('./fake_db.json')
			.then(res => res.json())
			.then(data => {
				this.setState({
					ownerName: data.ownerName,
					petSelections: data.petSelections,
					selectedPets: data.selectedPets,
					ageOptions: data.ageOptions,
					ownerAgeRangeSelection: data.ownerAgeRangeSelection,
					siblingOptions: data.siblingOptions,
          employmentOptions: data.employmentOptions,
          employmentSelection: data.employmentSelection,
					siblingSelection: data.siblingSelection,
					currentPetCount: data.currentPetCount,
					description: data.description
				});
			});
	}
	handleFullNameChange(e) {
		this.setState({ ownerName: e.target.value }, () => console.log('name:', this.state.ownerName));
	}
	handleCurrentPetCountChange(e) {
		this.setState({ currentPetCount: e.target.value }, () => console.log('pet count', this.state.currentPetCount));
	}
	handleAgeRangeSelect(e) {
		this.setState({ ownerAgeRangeSelection: e.target.value }, () => console.log('age range', this.state.ownerAgeRangeSelection));
	}
	handlePetSelection(e) {
		const newSelection = e.target.value;
		let newSelectionArray;
		if(this.state.selectedPets.indexOf(newSelection) > -1) {
			newSelectionArray = this.state.selectedPets.filter(s => s !== newSelection)
		} else {
			newSelectionArray = [...this.state.selectedPets, newSelection];
		}
		this.setState({ selectedPets: newSelectionArray }, () => console.log('pet selection', this.state.selectedPets));
	}
	handleSiblingsSelection(e) {
		this.setState({ siblingSelection: [e.target.value] }, () => console.log('siblingz', this.state.siblingSelection));
	}
  handleEmploymentSelection(e) {
		this.setState({ employmentSelection: [e.target.value] }, () => console.log('employment', this.state.employmentSelection));
	}
	handleDescriptionChange(e) {
		// const textArray = e.target.value.split('').filter(x => x !== 'e');
		// console.log('string split into array of letters',textArray);
		// const filteredText = textArray.join('');
		// this.setState({ description: filteredText }, () => console.log('description', this.state.description));
		this.setState({ description: e.target.value }, () => console.log('description', this.state.description));
	}
	handleClearForm(e) {
		e.preventDefault();
		this.setState({
			ownerName: '',
			selectedPets: [],
			ownerAgeRangeSelection: '',
			siblingSelection: [],
			currentPetCount: 0,
			description: ''
		});
	}
	handleFormSubmit(e) {
		e.preventDefault();

		const formPayload = {
			ownerName: this.state.ownerName,
			selectedPets: this.state.selectedPets,
			ownerAgeRangeSelection: this.state.ownerAgeRangeSelection,
			siblingSelection: this.state.siblingSelection,
			currentPetCount: this.state.currentPetCount,
			description: this.state.description
		};

		console.log('Send this in a POST request:', formPayload);
    document.querySelector(".Plans").innerHTML = formPayload;
		this.handleClearForm(e);
	}
	render() {
		return (
			<form className="container" onSubmit={this.handleFormSubmit}>
				<SingleInput
					inputType={'text'}
					title={'Fill out this form!'}
					name={'name'}
					controlFunc={this.handleFullNameChange}
					content={this.state.ownerName}
					placeholder={'Type first and last name here'} />
        <CheckboxOrRadioGroup
					title={'Are you employed?'}
					setName={'employed'}
					controlFunc={this.handleEmploymentSelection}
					type={'radio'}
					options={this.state.employmentOptions}
					selectedOptions={this.state.employmentSelection} />
        <SingleInput
					inputType={'number'}
					title={'How many low-risk preconditions do you have?'}
					name={'currentPetCount'}
					controlFunc={this.handleCurrentPetCountChange}
					content={this.state.currentPetCount}
					placeholder={'Enter number of current pets'} />
        <SingleInput
					inputType={'number'}
					title={'How many medium-risk preconditions do you have?'}
					name={'currentPetCount'}
					controlFunc={this.handleCurrentPetCountChange}
					content={this.state.currentPetCount}
					placeholder={'Enter number of current pets'} />
        <SingleInput
					inputType={'number'}
					title={'How many high-risk preconditions do you have?'}
					name={'currentPetCount'}
					controlFunc={this.handleCurrentPetCountChange}
					content={this.state.currentPetCount}
					placeholder={'Enter number of current pets'} />
        <SingleInput
					inputType={'number'}
					title={'How many people would you like to cover?'}
					name={'currentPetCount'}
					controlFunc={this.handleCurrentPetCountChange}
					content={this.state.currentPetCount}
					placeholder={'Enter number of current pets'} />
        <SingleInput
					inputType={'number'}
					title={'What is your annual income?'}
					name={'currentPetCount'}
					controlFunc={this.handleCurrentPetCountChange}
					content={this.state.currentPetCount}
					placeholder={'Enter number of current pets'} />
        <CheckboxOrRadioGroup
					title={'Are you married?'}
					setName={'siblings'}
					controlFunc={this.handleSiblingsSelection}
					type={'radio'}
					options={this.state.siblingOptions}
					selectedOptions={this.state.siblingSelection} />
        <SingleInput
					inputType={'number'}
					title={'What is your height in inches?'}
					name={'currentPetCount'}
					controlFunc={this.handleCurrentPetCountChange}
					content={this.state.currentPetCount}
					placeholder={'Enter number of current pets'} />
        <SingleInput
					inputType={'number'}
					title={'What is your weight in pounds?'}
					name={'currentPetCount'}
					controlFunc={this.handleCurrentPetCountChange}
					content={this.state.currentPetCount}
					placeholder={'Enter number of current pets'} />
        <CheckboxOrRadioGroup
					title={'Do you smoke tobacco?'}
					setName={'siblings'}
					controlFunc={this.handleSiblingsSelection}
					type={'radio'}
					options={this.state.siblingOptions}
					selectedOptions={this.state.siblingSelection} />
        <CheckboxOrRadioGroup
					title={'What is your gender?'}
					setName={'siblings'}
					controlFunc={this.handleSiblingsSelection}
					type={'radio'}
					options={this.state.siblingOptions}
					selectedOptions={this.state.siblingSelection} />
        <SingleInput
					inputType={'number'}
					title={'What is your age?'}
					name={'currentPetCount'}
					controlFunc={this.handleCurrentPetCountChange}
					content={this.state.currentPetCount}
					placeholder={'Enter number of current pets'} />
				<Select
					name={'ageRange'}
					placeholder={'Choose your age range'}
					controlFunc={this.handleAgeRangeSelect}
					options={this.state.ageOptions}
					selectedOption={this.state.ownerAgeRangeSelection} />
				<CheckboxOrRadioGroup
					title={'Which kinds of pets would you like to adopt?'}
					setName={'pets'}
					type={'checkbox'}
					controlFunc={this.handlePetSelection}
					options={this.state.petSelections}
					selectedOptions={this.state.selectedPets} />
				<CheckboxOrRadioGroup
					title={'Are you willing to adopt more than one pet if we have siblings for adoption?'}
					setName={'siblings'}
					controlFunc={this.handleSiblingsSelection}
					type={'radio'}
					options={this.state.siblingOptions}
					selectedOptions={this.state.siblingSelection} />
				<SingleInput
					inputType={'number'}
					title={'How many pets do you currently own?'}
					name={'currentPetCount'}
					controlFunc={this.handleCurrentPetCountChange}
					content={this.state.currentPetCount}
					placeholder={'Enter number of current pets'} />
				<TextArea
					title={'If you currently own pets, please write their names, breeds, and an outline of their personalities.'}
					rows={5}
					resize={false}
					content={this.state.description}
					name={'currentPetInfo'}
					controlFunc={this.handleDescriptionChange}
					placeholder={'Please be thorough in your descriptions'} />
				<input
					type="submit"
					className="btn btn-primary float-right"
					value="Submit"/>
				<button
					className="btn btn-link float-left"
					onClick={this.handleClearForm}>Clear form</button>
			</form>
		);
	}
}

export default FormContainer;
