validation
validateStartTag: aName attributes: anAttributeDictionary
	self hasElementValidators
		ifTrue: [
			self elementValidatorStack
				ifNotEmpty: [self currentElementValidator validateStartTag: aName].
			self elementValidatorStack
				addLast:
					((self elementValidatorFor: aName)
						ifNil: [self defaultElementValidatorFor: aName])].

	self hasAttributeValidators
		ifTrue: [
			(self attributeValidatorsFor: aName)
				do: [:each |
					each
						validateDefaultValueIn: anAttributeDictionary;
						validateAttributes: anAttributeDictionary]].