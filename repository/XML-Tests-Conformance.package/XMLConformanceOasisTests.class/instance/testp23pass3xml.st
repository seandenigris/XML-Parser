tests
testp23pass3xml
	"Source file: oasis/p23pass3.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep23pass3xml
				documentURI: 'p23pass3.xml']
		raise: self exceptionClass