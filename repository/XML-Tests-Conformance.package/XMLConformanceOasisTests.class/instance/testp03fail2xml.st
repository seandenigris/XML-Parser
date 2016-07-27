tests - exception raising
testp03fail2xml
	"Source file: oasis/p03fail2.xml"

	self
		should: [
			self
				parse: self class sourcep03fail2xml
				documentURI: 'p03fail2.xml']
		raise: self parserExceptions