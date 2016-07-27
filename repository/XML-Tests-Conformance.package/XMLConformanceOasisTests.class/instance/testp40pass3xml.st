tests
testp40pass3xml
	"Source file: oasis/p40pass3.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep40pass3xml
				documentURI: 'p40pass3.xml']
		raise: self exceptionClass