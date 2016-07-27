tests - exception raising
testp47fail3xml
	"Source file: oasis/p47fail3.xml"

	self
		should: [
			self
				parse: self class sourcep47fail3xml
				documentURI: 'p47fail3.xml']
		raise: self parserExceptions