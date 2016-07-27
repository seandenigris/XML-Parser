private
errorUnexpectedElement: anElement
	XMLValidationException
		formatSignal: 'Unexpected <{1}> element in {2} type element <{3}>'
		with: anElement
		with: self type
		with: self element