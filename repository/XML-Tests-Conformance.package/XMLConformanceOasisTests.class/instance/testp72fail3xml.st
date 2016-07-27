tests - exception raising
testp72fail3xml
	"Source file: oasis/p72fail3.xml"

	self
		should: [
			self
				parse: self class sourcep72fail3xml
				documentURI: 'p72fail3.xml']
		raise: self parserExceptions