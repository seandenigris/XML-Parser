tests
testp66pass1xml
	"Source file: oasis/p66pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep66pass1xml
				documentURI: 'p66pass1.xml']
		raise: self exceptionClass