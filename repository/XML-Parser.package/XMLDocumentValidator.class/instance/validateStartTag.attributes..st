validating
validateStartTag: anElement attributes: anAttributeDictionary
	(self hasElementValidators
		or: [self hasAttributeValidators])
		ifTrue: [
			self validateStartTag: anElement.
			self
				validateAttributes: anAttributeDictionary
				with: (self attributeValidatorsFor: anElement)]