private
errorDuplicateID: anId inAttribute: anAttribute
	XMLValidationException
		formatSignal: 'Duplicate element ID "{1}" used in attribute "{2}"'
		with: anId
		with: anAttribute