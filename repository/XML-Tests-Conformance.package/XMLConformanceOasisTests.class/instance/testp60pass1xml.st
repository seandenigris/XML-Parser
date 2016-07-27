tests
testp60pass1xml
	"Source file: oasis/p60pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep60pass1xml
				documentURI: 'p60pass1.xml']
		raise: self exceptionClass