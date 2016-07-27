tests
testp44pass3xml
	"Source file: oasis/p44pass3.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep44pass3xml
				documentURI: 'p44pass3.xml']
		raise: self exceptionClass