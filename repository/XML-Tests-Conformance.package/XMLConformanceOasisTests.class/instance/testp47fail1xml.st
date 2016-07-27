tests - exception raising
testp47fail1xml
	"Source file: oasis/p47fail1.xml"

	self
		should: [
			self
				parse: self class sourcep47fail1xml
				documentURI: 'p47fail1.xml']
		raise: self parserExceptions