class initialization
initializeAttributeDefaultValidatorClasses
	(AttributeDefaultValidatorClasses := Dictionary new)
		at: '' put: XMLAttributeDefaultValueValidator;
		at: 'FIXED' put: XMLAttributeDefaultFixedValueValidator;
		at: 'IMPLIED' put: XMLAttributeDefaultImpliedValidator;
		at: 'REQUIRED' put: XMLAttributeDefaultRequiredValidator