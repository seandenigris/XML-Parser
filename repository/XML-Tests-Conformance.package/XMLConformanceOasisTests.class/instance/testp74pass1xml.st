tests
testp74pass1xml
	"Source file: oasis/p74pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep74pass1xml
				documentURI: 'p74pass1.xml']
		raise: self exceptionClass