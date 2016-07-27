tests - exception raising
testp68fail2xml
	"Source file: oasis/p68fail2.xml"

	self
		should: [
			self
				parse: self class sourcep68fail2xml
				documentURI: 'p68fail2.xml']
		raise: self exceptionClass