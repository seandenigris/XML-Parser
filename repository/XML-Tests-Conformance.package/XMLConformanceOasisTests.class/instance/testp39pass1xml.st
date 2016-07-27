tests
testp39pass1xml
	"Source file: oasis/p39pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep39pass1xml
				documentURI: 'p39pass1.xml']
		raise: self exceptionClass