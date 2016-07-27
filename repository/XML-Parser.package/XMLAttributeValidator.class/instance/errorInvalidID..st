private
errorInvalidID: anId
	XMLValidationException
		formatSignal: 'Invalid ID "{1}" in attribute "{2}"'
		with: anId
		with: self attribute