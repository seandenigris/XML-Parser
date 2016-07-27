tests
testp31pass2xml
	"Source file: oasis/p31pass2.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep31pass2xml
				documentURI: 'p31pass2.xml']
		raise: self exceptionClass