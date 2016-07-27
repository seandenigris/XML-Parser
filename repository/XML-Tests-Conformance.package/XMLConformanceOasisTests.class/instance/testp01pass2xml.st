tests
testp01pass2xml
	"Source file: oasis/p01pass2.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep01pass2xml
				documentURI: 'p01pass2.xml']
		raise: self exceptionClass