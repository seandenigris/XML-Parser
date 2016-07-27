tests
testp01pass3xml
	"Source file: oasis/p01pass3.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep01pass3xml
				documentURI: 'p01pass3.xml']
		raise: self exceptionClass