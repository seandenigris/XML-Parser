validation
validatePrefixedAttributeNames: aDictionary
	aDictionary keysDo: [:attributeName |
		self
			validatePrefixedAttributeName: attributeName
			in: aDictionary]