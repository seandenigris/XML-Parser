private
errorUnexpectedPCData: aString
	XMLValidationException signal:
		'Unexpected PCDATA in <', self name, '> element'.