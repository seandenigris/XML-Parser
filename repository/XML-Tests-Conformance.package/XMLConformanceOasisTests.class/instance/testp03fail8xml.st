tests - exception raising
testp03fail8xml
	"Source file: oasis/p03fail8.xml"

	self
		should: [
			self
				parse: self class sourcep03fail8xml
				documentURI: 'p03fail8.xml']
		raise: self parserExceptions