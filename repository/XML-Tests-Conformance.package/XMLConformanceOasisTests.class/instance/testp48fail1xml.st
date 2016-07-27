tests - exception raising
testp48fail1xml
	"Source file: oasis/p48fail1.xml"

	self
		should: [
			self
				parse: self class sourcep48fail1xml
				documentURI: 'p48fail1.xml']
		raise: self parserExceptions