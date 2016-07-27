tests - exception raising
testp39fail1xml
	"Source file: oasis/p39fail1.xml"

	self
		should: [
			self
				parse: self class sourcep39fail1xml
				documentURI: 'p39fail1.xml']
		raise: self parserExceptions