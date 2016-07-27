tests - exception raising
testp16fail1xml
	"Source file: oasis/p16fail1.xml"

	self
		should: [
			self
				parse: self class sourcep16fail1xml
				documentURI: 'p16fail1.xml']
		raise: self parserExceptions