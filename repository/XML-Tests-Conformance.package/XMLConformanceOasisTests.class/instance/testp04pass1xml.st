tests
testp04pass1xml
	"Source file: oasis/p04pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep04pass1xml
				documentURI: 'p04pass1.xml']
		raise: self exceptionClass