tests - exception raising
testp58fail7xml
	"Source file: oasis/p58fail7.xml"

	self
		should: [
			self
				parse: self class sourcep58fail7xml
				documentURI: 'p58fail7.xml']
		raise: self parserExceptions