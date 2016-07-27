tests
testp50pass1xml
	"Source file: oasis/p50pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep50pass1xml
				documentURI: 'p50pass1.xml']
		raise: self exceptionClass