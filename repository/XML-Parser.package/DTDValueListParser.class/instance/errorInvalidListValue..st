private
errorInvalidListValue: aValue
	XMLValidationException
		formatSignal: 'Invalid value "{1}" in list'
		with: aValue