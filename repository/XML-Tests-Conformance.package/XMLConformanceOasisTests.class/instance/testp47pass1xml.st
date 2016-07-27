tests
testp47pass1xml
	"Source file: oasis/p47pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep47pass1xml
				documentURI: 'p47pass1.xml']
		raise: self exceptionClass