tests
testp12pass1xml
	"Source file: oasis/p12pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep12pass1xml
				documentURI: 'p12pass1.xml']
		raise: self exceptionClass