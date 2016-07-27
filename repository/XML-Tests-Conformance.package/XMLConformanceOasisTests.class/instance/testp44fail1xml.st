tests - exception raising
testp44fail1xml
	"Source file: oasis/p44fail1.xml"

	self
		should: [
			self
				parse: self class sourcep44fail1xml
				documentURI: 'p44fail1.xml']
		raise: self parserExceptions