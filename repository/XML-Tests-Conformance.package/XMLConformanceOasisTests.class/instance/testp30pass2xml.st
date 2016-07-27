tests
testp30pass2xml
	"Source file: oasis/p30pass2.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep30pass2xml
				documentURI: 'p30pass2.xml']
		raise: self exceptionClass