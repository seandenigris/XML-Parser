tests - exception raising
testp74fail2xml
	"Source file: oasis/p74fail2.xml"

	self
		should: [
			self
				parse: self class sourcep74fail2xml
				documentURI: 'p74fail2.xml']
		raise: self parserExceptions