tests - exception raising
testp60fail3xml
	"Source file: oasis/p60fail3.xml"

	self
		should: [
			self
				parse: self class sourcep60fail3xml
				documentURI: 'p60fail3.xml']
		raise: self exceptionClass