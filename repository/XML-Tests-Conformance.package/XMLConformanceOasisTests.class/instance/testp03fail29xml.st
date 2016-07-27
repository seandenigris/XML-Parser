tests - exception raising
testp03fail29xml
	"Source file: oasis/p03fail29.xml"

	self
		should: [
			self
				parse: self class sourcep03fail29xml
				documentURI: 'p03fail29.xml']
		raise: self parserExceptions