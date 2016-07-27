tests
testp28pass3xml
	"Source file: oasis/p28pass3.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep28pass3xml
				documentURI: 'p28pass3.xml']
		raise: self exceptionClass