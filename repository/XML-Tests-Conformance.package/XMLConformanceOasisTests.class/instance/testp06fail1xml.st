tests - exception raising
testp06fail1xml
	"Source file: oasis/p06fail1.xml"

	self
		should: [
			self
				parse: self class sourcep06fail1xml
				documentURI: 'p06fail1.xml']
		raise: self parserExceptions