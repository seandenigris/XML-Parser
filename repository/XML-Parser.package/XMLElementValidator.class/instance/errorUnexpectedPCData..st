private
errorUnexpectedPCData: aString
	XMLValidationException signal:
		'Unexpected PCDATA in <', self element, '> element'.