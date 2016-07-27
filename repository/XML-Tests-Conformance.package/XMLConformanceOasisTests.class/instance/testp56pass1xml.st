tests
testp56pass1xml
	"Source file: oasis/p56pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep56pass1xml
				documentURI: 'p56pass1.xml']
		raise: self exceptionClass