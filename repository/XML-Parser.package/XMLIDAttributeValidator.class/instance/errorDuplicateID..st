private
errorDuplicateID: anId
	XMLValidationException
		formatSignal: 'ID "{1}" used more than once for attribute "{2}"'
		with: anId
		with: self attribute