tests - exception raising
testp60fail5xml
	"Source file: oasis/p60fail5.xml"

	self
		should: [
			self
				parse: self class sourcep60fail5xml
				documentURI: 'p60fail5.xml']
		raise: self exceptionClass