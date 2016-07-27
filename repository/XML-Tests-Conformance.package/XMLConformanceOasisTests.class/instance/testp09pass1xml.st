tests
testp09pass1xml
	"Source file: oasis/p09pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep09pass1xml
				documentURI: 'p09pass1.xml']
		raise: self exceptionClass