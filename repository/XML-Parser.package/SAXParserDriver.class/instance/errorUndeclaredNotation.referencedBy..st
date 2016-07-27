private
errorUndeclaredNotation: aNotation referencedBy: anEntity
	XMLValidationException
		formatSignal: 'Undeclared notation "{1}" referenced by &{2}; entity'
		with: aNotation
		with: anEntity