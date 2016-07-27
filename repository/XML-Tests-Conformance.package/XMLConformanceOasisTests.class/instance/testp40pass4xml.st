tests
testp40pass4xml
	"Source file: oasis/p40pass4.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep40pass4xml
				documentURI: 'p40pass4.xml']
		raise: self exceptionClass