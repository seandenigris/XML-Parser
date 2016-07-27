handling tokens
handleAttributeDeclaration: anElement name: aName type: aType defaultPragma: aDefaultPragma defaultValue: aDefaultValue
	self isValidating
		ifTrue: [
			self dtd
				addValidatorForAttributeIn: anElement
				named: aName
				type: aType
				defaultPragma: aDefaultPragma
				defaultValue: aDefaultValue]