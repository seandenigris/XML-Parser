tests
testp44pass5xml
	"Source file: oasis/p44pass5.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep44pass5xml
				documentURI: 'p44pass5.xml']
		raise: self exceptionClass