tests
testp24pass3xml
	"Source file: oasis/p24pass3.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep24pass3xml
				documentURI: 'p24pass3.xml']
		raise: self exceptionClass