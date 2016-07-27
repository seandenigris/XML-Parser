tests
testp01pass1xml
	"Source file: oasis/p01pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep01pass1xml
				documentURI: 'p01pass1.xml']
		raise: self exceptionClass