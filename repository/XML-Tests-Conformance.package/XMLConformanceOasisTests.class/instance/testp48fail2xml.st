tests - exception raising
testp48fail2xml
	"Source file: oasis/p48fail2.xml"

	self
		should: [
			self
				parse: self class sourcep48fail2xml
				documentURI: 'p48fail2.xml']
		raise: self parserExceptions