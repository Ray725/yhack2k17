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
      employmentSelection: [],
      employmentOptions: [],
      lowRiskCount: 0,
      medRiskCount: 0,
      highRiskCount: 0,
      peopleCovered: 0,
      annualIncome: 0,
      maritalSelection: [],
      maritalOptions: [],
      height: 0,
      weight: 0,
      tobaccoSelection: [],
      tobaccoOptions: [],
      genderAssignedAtBirthOptions: [],
      genderAssignedAtBirthSelection: [],
      age: 0,
      latitude: 0,
      longitude: 0
		};
    this.handleFullNameChange = this.handleFullNameChange.bind(this);
		this.handleFormSubmit = this.handleFormSubmit.bind(this);
		this.handleClearForm = this.handleClearForm.bind(this);
    this.handleEmploymentSelection = this.handleEmploymentSelection.bind(this);
    this.handleLowRiskChange = this.handleLowRiskChange.bind(this);
    this.handleMediumRiskChange = this.handleMediumRiskChange.bind(this);
    this.handleHighRiskChange = this.handleHighRiskChange.bind(this);
    this.handlePeopleCoveredChange = this.handlePeopleCoveredChange.bind(this);
    this.handleAnnualIncomeChange = this.handleAnnualIncomeChange.bind(this);
    this.handleMaritalSelection = this.handleMaritalSelection.bind(this);
    this.handleHeightChange = this.handleHeightChange.bind(this);
    this.handleWeightChange = this.handleWeightChange.bind(this);
    this.handleTobaccoSelection = this.handleTobaccoSelection.bind(this);
    this.handleGenderSelection = this.handleGenderSelection.bind(this);
    this.handleAgeChange = this.handleAgeChange.bind(this);
    this.handleLongitudeChange = this.handleLongitudeChange.bind(this);
    this.handleLatitudeChange = this.handleLatitudeChange.bind(this);
	}
	componentDidMount() {
		fetch('./fake_db.json')
			.then(res => res.json())
			.then(data => {
				this.setState({
					ownerName: data.ownerName,
          lowRiskCount: data.lowRiskCount,
          mediumRiskCount: data.mediumRiskCount,
          highRiskCount: data.highRiskCount,
          peopleCovered: data.peopleCovered,
          annualIncome: data.annualIncome,
          maritalOptions: data.maritalOptions,
          maritalSelection: data.maritalSelection,
          height: data.height,
          weight: data.weight,
          tobaccoOptions: data.tobaccoOptions,
          tobaccoSelection: data.tobaccoSelection,
          genderAssignedAtBirthOptions: data.genderAssignedAtBirthOptions,
          genderAssignedAtBirthSelection: data.genderAssignedAtBirthSelection,
          age: data.age,
          longitude: data.longitude,
          latitude: data.latitude
				});
			});
	}
	handleFullNameChange(e) {
		this.setState({ ownerName: e.target.value }, () => console.log('name:', this.state.ownerName));
	}
	handleLowRiskChange(e) {
		this.setState({ lowRiskCount: e.target.value }, () => console.log('low risk count', this.state.lowRiskCount));
	}
  handleMediumRiskChange(e) {
		this.setState({ mediumRiskCount: e.target.value }, () => console.log('medium risk count', this.state.mediumRiskCount));
	}
  handleHighRiskChange(e) {
		this.setState({ highRiskCount: e.target.value }, () => console.log('high risk count', this.state.highRiskCount));
	}
  handlePeopleCoveredChange(e) {
		this.setState({ peopleCovered: e.target.value }, () => console.log('people covered', this.state.peopleCovered));
	}
  handleAnnualIncomeChange(e) {
		this.setState({ annualIncome: e.target.value }, () => console.log('annual income', this.state.annualIncome));
	}
  handleHeightChange(e) {
		this.setState({ height: e.target.value }, () => console.log('height', this.state.height));
	}
  handleWeightChange(e) {
		this.setState({ weight: e.target.value }, () => console.log('weight', this.state.weight));
	}
  handleAgeChange(e) {
		this.setState({ age: e.target.value }, () => console.log('age', this.state.age));
	}
  handleLongitudeChange(e) {
		this.setState({ longitude: e.target.value }, () => console.log('longitude', this.state.longitude));
	}
  handleLatitudeChange(e) {
		this.setState({ latitude: e.target.value }, () => console.log('latitude', this.state.latitude));
	}
  /*
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
  */
  handleEmploymentSelection(e) {
		this.setState({ employmentSelection: [e.target.value] }, () => console.log('employment', this.state.employmentSelection));
	}
  handleMaritalSelection(e) {
		this.setState({ maritalSelection: [e.target.value] }, () => console.log('marital status', this.state.maritalSelection));
	}
  handleTobaccoSelection(e) {
		this.setState({ tobaccoSelection: [e.target.value] }, () => console.log('tobacco', this.state.tobaccoSelection));
	}
  handleGenderSelection(e) {
		this.setState({ genderAssignedAtBirthSelection: [e.target.value] }, () => console.log('gender assigned at birth', this.state.genderAssignedAtBirthSelection));
	}
  /*
	handleDescriptionChange(e) {
		// const textArray = e.target.value.split('').filter(x => x !== 'e');
		// console.log('string split into array of letters',textArray);
		// const filteredText = textArray.join('');
		// this.setState({ description: filteredText }, () => console.log('description', this.state.description));
		this.setState({ description: e.target.value }, () => console.log('description', this.state.description));
	}
  */
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
      lowRiskCount: this.state.lowRiskCount,
      mediumRiskCount: this.state.mediumRiskCount,
      highRiskCount: this.state.highRiskCount,
      peopleCovered: this.state.peopleCovered,
      annualIncome: this.state.annualIncome,
      maritalSelection: this.state.maritalSelection,
      height: this.state.height,
      weight: this.state.weight,
      tobaccoSelection: this.state.tobaccoSelection,
      genderAssignedAtBirthSelection: this.state.genderAssignedAtBirthSelection,
      age: this.state.age,
      longitude: this.state.longitude,
      latitude: this.state.latitude
		};

		console.log('Send this in a POST request:', formPayload);
    document.querySelector(".Plans").innerHTML = "Name: " + formPayload.ownerName
    + " Age: " + formPayload.age + " Income: " + formPayload.annualIncome;
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
					name={'lowRiskCount'}
					controlFunc={this.handleLowRiskChange}
					content={this.state.lowRiskCount}
					placeholder={'Enter number of low-risk preconditions'} />
        <SingleInput
					inputType={'number'}
					title={'How many medium-risk preconditions do you have?'}
					name={'mediumRiskCount'}
					controlFunc={this.handleMediumRiskChange}
					content={this.state.mediumRiskCount}
					placeholder={'Enter number of medium-risk preconditions'} />
        <SingleInput
					inputType={'number'}
					title={'How many high-risk preconditions do you have?'}
					name={'highRiskCount'}
					controlFunc={this.handleHighRiskChange}
					content={this.state.highRiskCount}
					placeholder={'Enter number of high-risk preconditions'} />
        <SingleInput
					inputType={'number'}
					title={'How many people would you like to cover?'}
					name={'peopleCovered'}
					controlFunc={this.handlePeopleCoveredChange}
					content={this.state.peopleCovered}
					placeholder={'Enter number of people you would like to cover'} />
        <SingleInput
					inputType={'number'}
					title={'What is your annual income?'}
					name={'annualIncome'}
					controlFunc={this.handleAnnualIncomeChange}
					content={this.state.annualIncome}
					placeholder={'Enter your annual income'} />
        <CheckboxOrRadioGroup
					title={'Are you married?'}
					setName={'maritalStatus'}
					controlFunc={this.handleMaritalSelection}
					type={'radio'}
					options={this.state.maritalOptions}
					selectedOptions={this.state.maritalSelection} />
        <SingleInput
					inputType={'number'}
					title={'What is your height in inches?'}
					name={'height'}
					controlFunc={this.handleHeightChange}
					content={this.state.height}
					placeholder={'Enter your height'} />
        <SingleInput
					inputType={'number'}
					title={'What is your weight in pounds?'}
					name={'weight'}
					controlFunc={this.handleWeightChange}
					content={this.state.weight}
					placeholder={'Enter number your weight in pounds'} />
        <CheckboxOrRadioGroup
					title={'Do you smoke tobacco?'}
					setName={'tobacco'}
					controlFunc={this.handleTobaccoSelection}
					type={'radio'}
					options={this.state.tobaccoOptions}
					selectedOptions={this.state.tobaccoSelection} />
        <CheckboxOrRadioGroup
					title={'What was your gender assigned at birth?'}
					setName={'gender'}
					controlFunc={this.handleGenderSelection}
					type={'radio'}
					options={this.state.genderAssignedAtBirthOptions}
					selectedOptions={this.state.genderAssignedAtBirthSelection} />
        <SingleInput
					inputType={'number'}
					title={'What is your age?'}
					name={'age'}
					controlFunc={this.handleAgeChange}
					content={this.state.age}
					placeholder={'Enter your age'} />
        <SingleInput
					inputType={'number'}
					title={'What is your latitude?'}
					name={'latitude'}
					controlFunc={this.handleLatitudeChange}
					content={this.state.latitude}
					placeholder={'Enter your latitude'} />
        <SingleInput
					inputType={'number'}
					title={'What is your longitude?'}
					name={'longitude'}
					controlFunc={this.handleLongitudeChange}
					content={this.state.longitude}
					placeholder={'Enter your longitude'} />
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
