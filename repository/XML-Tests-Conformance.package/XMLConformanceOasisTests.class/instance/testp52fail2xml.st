tests - exception raising
testp52fail2xml
	"Source file: oasis/p52fail2.xml"

	self
		should: [
			self
				parse: self class sourcep52fail2xml
				documentURI: 'p52fail2.xml']
		raise: self exceptionClass