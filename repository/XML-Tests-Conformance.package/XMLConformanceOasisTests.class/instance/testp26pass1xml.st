tests
testp26pass1xml
	"Source file: oasis/p26pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep26pass1xml
				documentURI: 'p26pass1.xml']
		raise: self exceptionClass