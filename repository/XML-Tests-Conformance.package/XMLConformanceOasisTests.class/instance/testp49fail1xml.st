tests - exception raising
testp49fail1xml
	"Source file: oasis/p49fail1.xml"

	self
		should: [
			self
				parse: self class sourcep49fail1xml
				documentURI: 'p49fail1.xml']
		raise: self parserExceptions