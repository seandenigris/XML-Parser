enumerating
allAttributeValidatorsDo: aBlock
	^ self dtd attributeValidators valuesDo: [:each | each valuesDo: aBlock]