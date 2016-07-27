tests - exception raising
testp53fail1xml
	"Source file: oasis/p53fail1.xml"

	self
		should: [
			self
				parse: self class sourcep53fail1xml
				documentURI: 'p53fail1.xml']
		raise: self exceptionClass