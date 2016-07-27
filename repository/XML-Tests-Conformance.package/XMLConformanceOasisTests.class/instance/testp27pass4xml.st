tests
testp27pass4xml
	"Source file: oasis/p27pass4.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep27pass4xml
				documentURI: 'p27pass4.xml']
		raise: self exceptionClass