tests - exception raising
testp40fail4xml
	"Source file: oasis/p40fail4.xml"

	self
		should: [
			self
				parse: self class sourcep40fail4xml
				documentURI: 'p40fail4.xml']
		raise: self parserExceptions