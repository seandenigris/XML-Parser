tests - exception raising
testp60fail2xml
	"Source file: oasis/p60fail2.xml"

	self
		should: [
			self
				parse: self class sourcep60fail2xml
				documentURI: 'p60fail2.xml']
		raise: self parserExceptions