tests
testp27pass3xml
	"Source file: oasis/p27pass3.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep27pass3xml
				documentURI: 'p27pass3.xml']
		raise: self exceptionClass