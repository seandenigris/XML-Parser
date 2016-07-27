tests
testp44pass2xml
	"Source file: oasis/p44pass2.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep44pass2xml
				documentURI: 'p44pass2.xml']
		raise: self exceptionClass