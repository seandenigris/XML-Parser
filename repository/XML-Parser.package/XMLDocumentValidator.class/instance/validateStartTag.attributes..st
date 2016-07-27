validation
validateStartTag: aName attributes: anAttributeDictionary
	(self hasElementValidators or: [self hasAttributeValidators])
		ifFalse: [^ self].

	self
		validateStartTag: aName;
		validateAttributes: anAttributeDictionary
		with: (self attributeValidatorsFor: aName).