tests
testp68pass1xml
	"Source file: oasis/p68pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep68pass1xml
				documentURI: 'p68pass1.xml']
		raise: self exceptionClass