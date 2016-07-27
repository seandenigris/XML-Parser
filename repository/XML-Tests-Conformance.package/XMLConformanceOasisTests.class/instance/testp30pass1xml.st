tests
testp30pass1xml
	"Source file: oasis/p30pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep30pass1xml
				documentURI: 'p30pass1.xml']
		raise: self exceptionClass