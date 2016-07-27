tests - exception raising
testp03fail20xml
	"Source file: oasis/p03fail20.xml"

	self
		should: [
			self
				parse: self class sourcep03fail20xml
				documentURI: 'p03fail20.xml']
		raise: self parserExceptions