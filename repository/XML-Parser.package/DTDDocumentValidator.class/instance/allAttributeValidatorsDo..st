enumerating
allAttributeValidatorsDo: aBlock
	^ self dtd attributeValidators do: [:each | each valuesDo: aBlock]