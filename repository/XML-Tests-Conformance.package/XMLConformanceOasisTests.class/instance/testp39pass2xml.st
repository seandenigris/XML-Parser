tests
testp39pass2xml
	"Source file: oasis/p39pass2.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep39pass2xml
				documentURI: 'p39pass2.xml']
		raise: self exceptionClass