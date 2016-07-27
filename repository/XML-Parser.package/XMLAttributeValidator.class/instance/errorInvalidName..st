private
errorInvalidName: aName
	XMLValidationException
		formatSignal: 'Invalid name "{1}" in attribute "{2}"'
		with: aName
		with: self attribute