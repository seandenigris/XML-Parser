tests
testp23pass4xml
	"Source file: oasis/p23pass4.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep23pass4xml
				documentURI: 'p23pass4.xml']
		raise: self exceptionClass