tests - exception raising
testp03fail23xml
	"Source file: oasis/p03fail23.xml"

	self
		should: [
			self
				parse: self class sourcep03fail23xml
				documentURI: 'p03fail23.xml']
		raise: self parserExceptions