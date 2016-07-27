private
errorInvalidID: anId inAttribute: anAttribute
	XMLValidationException
		formatSignal: 'Invalid element ID value "{1}" in attribute "{2}"'
		with: anId
		with: anAttribute