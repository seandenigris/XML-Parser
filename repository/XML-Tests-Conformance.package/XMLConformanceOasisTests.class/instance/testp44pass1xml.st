tests
testp44pass1xml
	"Source file: oasis/p44pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep44pass1xml
				documentURI: 'p44pass1.xml']
		raise: self exceptionClass