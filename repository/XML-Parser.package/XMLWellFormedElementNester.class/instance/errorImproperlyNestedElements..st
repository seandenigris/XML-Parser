private
errorImproperlyNestedElements: anElementName
	XMLWellFormednessException
		formatSignal: '<{1}> element ended before its child element(s) {2}'
		with: anElementName
		with: (self enclosedElementsAsString: anElementName)