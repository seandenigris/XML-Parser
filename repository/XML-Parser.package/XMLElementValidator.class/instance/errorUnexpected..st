private
errorUnexpected: aDescription
	XMLValidationException
		formatSignal: 'Unexpected {1} in {2} type element <{3}>'
		with: aDescription
		with: self type
		with: self element