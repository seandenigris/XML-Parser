tests
testp32pass1xml
	"Source file: oasis/p32pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep32pass1xml
				documentURI: 'p32pass1.xml']
		raise: self exceptionClass