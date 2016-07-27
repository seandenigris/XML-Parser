entities
entity: aReference
	self isValidating
		ifFalse: [^ DTDEntityDeclaration name: aReference value: ''].

	^ self entities
		at: aReference
		ifAbsentPut: [self parseError: 'Undefined entity ', aReference printString]