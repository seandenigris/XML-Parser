private
errorUnknownIDReference: anId
	XMLValidationException
		formatSignal: 'Reference to unknown element ID "{1}"'
		with: anId