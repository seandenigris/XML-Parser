tests - exception raising
testp58fail2xml
	"Source file: oasis/p58fail2.xml"

	self
		should: [
			self
				parse: self class sourcep58fail2xml
				documentURI: 'p58fail2.xml']
		raise: self exceptionClass