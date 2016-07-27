tests - exception raising
testp03fail15xml
	"Source file: oasis/p03fail15.xml"

	self
		should: [
			self
				parse: self class sourcep03fail15xml
				documentURI: 'p03fail15.xml']
		raise: self parserExceptions