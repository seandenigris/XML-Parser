tests - exception raising
testp39fail5xml
	"Source file: oasis/p39fail5.xml"

	self
		should: [
			self
				parse: self class sourcep39fail5xml
				documentURI: 'p39fail5.xml']
		raise: self parserExceptions