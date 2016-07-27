private
errorMultipleDeclarationsForElement: anElement
	XMLValidationException
		formatSignal: 'Multiple declarations for <{1}> element'
		with: anElement