validation
validatePrefixedAttributeNames: aDictionary
	aDictionary keysDo: [:each | self validatePrefixedAttributeName: each in: aDictionary]