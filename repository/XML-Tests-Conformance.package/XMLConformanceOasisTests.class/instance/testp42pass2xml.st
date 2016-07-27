tests
testp42pass2xml
	"Source file: oasis/p42pass2.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep42pass2xml
				documentURI: 'p42pass2.xml']
		raise: self exceptionClass