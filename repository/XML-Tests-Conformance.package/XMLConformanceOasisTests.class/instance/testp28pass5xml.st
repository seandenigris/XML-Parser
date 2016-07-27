tests
testp28pass5xml
	"Source file: oasis/p28pass5.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep28pass5xml
				documentURI: 'p28pass5.xml']
		raise: self exceptionClass