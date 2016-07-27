tests
testp40pass1xml
	"Source file: oasis/p40pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep40pass1xml
				documentURI: 'p40pass1.xml']
		raise: self exceptionClass