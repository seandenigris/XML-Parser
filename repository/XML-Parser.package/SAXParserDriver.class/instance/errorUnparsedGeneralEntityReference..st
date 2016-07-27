private
errorUnparsedGeneralEntityReference: aName
	XMLWellFormednessException
		formatSignal: 'Illegal unparsed general entity reference &{1};'
		with: aName