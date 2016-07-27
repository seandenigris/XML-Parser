private
errorUnexpectedElement: aName
	XMLValidationException signal:
		'Unexpected <', aName, '> element in <', self name, '> element'.