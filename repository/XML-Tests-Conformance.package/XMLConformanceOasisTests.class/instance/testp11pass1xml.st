tests
testp11pass1xml
	"Source file: oasis/p11pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep11pass1xml
				documentURI: 'p11pass1.xml']
		raise: self exceptionClass