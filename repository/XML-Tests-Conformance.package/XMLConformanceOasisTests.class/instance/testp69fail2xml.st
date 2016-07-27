tests - exception raising
testp69fail2xml
	"Source file: oasis/p69fail2.xml"

	self
		should: [
			self
				parse: self class sourcep69fail2xml
				documentURI: 'p69fail2.xml']
		raise: self exceptionClass