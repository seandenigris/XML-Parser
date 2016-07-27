tests - exception raising
testp53fail3xml
	"Source file: oasis/p53fail3.xml"

	self
		should: [
			self
				parse: self class sourcep53fail3xml
				documentURI: 'p53fail3.xml']
		raise: self parserExceptions