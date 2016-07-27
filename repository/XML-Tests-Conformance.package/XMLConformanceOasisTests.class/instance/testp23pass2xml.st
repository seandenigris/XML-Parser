tests
testp23pass2xml
	"Source file: oasis/p23pass2.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep23pass2xml
				documentURI: 'p23pass2.xml']
		raise: self exceptionClass