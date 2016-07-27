tests
testp18pass1xml
	"Source file: oasis/p18pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep18pass1xml
				documentURI: 'p18pass1.xml']
		raise: self exceptionClass