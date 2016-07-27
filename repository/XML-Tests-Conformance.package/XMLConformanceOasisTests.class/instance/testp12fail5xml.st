tests - exception raising
testp12fail5xml
	"Source file: oasis/p12fail5.xml"

	self
		should: [
			self
				parse: self class sourcep12fail5xml
				documentURI: 'p12fail5.xml']
		raise: self parserExceptions