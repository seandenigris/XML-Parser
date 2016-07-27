tests - exception raising
testp03fail13xml
	"Source file: oasis/p03fail13.xml"

	self
		should: [
			self
				parse: self class sourcep03fail13xml
				documentURI: 'p03fail13.xml']
		raise: self parserExceptions