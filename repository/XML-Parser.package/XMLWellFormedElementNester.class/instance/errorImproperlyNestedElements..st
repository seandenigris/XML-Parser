errors
errorImproperlyNestedElements: anElementName
	XMLWellFormednessException signal:
		('<{1}> element ended before its child {2} element(s)'
			format: (Array with: anElementName with: (self enclosedElementsAsString: anElementName)))