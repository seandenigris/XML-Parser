tests - exception raising
testp12fail7xml
	"Source file: oasis/p12fail7.xml"

	self
		should: [
			self
				parse: self class sourcep12fail7xml
				documentURI: 'p12fail7.xml']
		raise: self parserExceptions