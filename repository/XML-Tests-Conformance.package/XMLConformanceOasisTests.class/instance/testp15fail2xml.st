tests - exception raising
testp15fail2xml
	"Source file: oasis/p15fail2.xml"

	self
		should: [
			self
				parse: self class sourcep15fail2xml
				documentURI: 'p15fail2.xml']
		raise: self exceptionClass