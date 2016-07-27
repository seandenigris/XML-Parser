private
errorInvalidUnparsedEntityReference: aName
	XMLValidationException
		formatSignal: 'Unrecognized unparsed entity "{1}" in "{2}" attribute'
		with: aName
		with: self attribute