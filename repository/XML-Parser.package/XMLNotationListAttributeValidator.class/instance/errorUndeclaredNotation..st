private 
errorUndeclaredNotation: aNotation
	XMLValidationException
		formatSignal: 'Undeclared NOTATION "{1}" in attribute "{2}"'
		with: aNotation
		with: self attribute