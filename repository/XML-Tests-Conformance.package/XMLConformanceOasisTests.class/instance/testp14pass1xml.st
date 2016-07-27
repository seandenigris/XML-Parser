tests
testp14pass1xml
	"Source file: oasis/p14pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep14pass1xml
				documentURI: 'p14pass1.xml']
		raise: self exceptionClass