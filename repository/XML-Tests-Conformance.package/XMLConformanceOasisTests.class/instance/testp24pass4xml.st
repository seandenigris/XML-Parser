tests
testp24pass4xml
	"Source file: oasis/p24pass4.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep24pass4xml
				documentURI: 'p24pass4.xml']
		raise: self exceptionClass