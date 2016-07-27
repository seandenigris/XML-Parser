parsing
parse
	| validator defaultPragma defaultValue |

	defaultPragma := self parseDefaultPragma.
	defaultValue := self parseDefaultValue.
	validator :=
		self validatorClassForType
			element: element
			name: name
			defaultPragma: defaultPragma
			defaultValue: defaultValue.

	validator isEnumerationValidator
		ifTrue: [validator values: (self parseEnumerationType)].

	^ validator.