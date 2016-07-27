tests
testp40pass2xml
	"Source file: oasis/p40pass2.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep40pass2xml
				documentURI: 'p40pass2.xml']
		raise: self exceptionClass