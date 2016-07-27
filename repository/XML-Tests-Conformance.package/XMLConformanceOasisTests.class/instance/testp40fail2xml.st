tests - exception raising
testp40fail2xml
	"Source file: oasis/p40fail2.xml"

	self
		should: [
			self
				parse: self class sourcep40fail2xml
				documentURI: 'p40fail2.xml']
		raise: self parserExceptions