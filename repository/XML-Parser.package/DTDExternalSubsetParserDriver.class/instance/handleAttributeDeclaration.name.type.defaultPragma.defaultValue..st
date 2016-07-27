handling - dtd
handleAttributeDeclaration: anElement name: anAttribute type: aType defaultPragma: aDefaultPragma defaultValue: aDefaultValue
	self isValidating
		ifTrue: [
			self doctypeDefinition
				addValidatorForAttributeIn: anElement
				named: anAttribute
				type: aType
				defaultPragma: aDefaultPragma
				defaultValue: aDefaultValue]