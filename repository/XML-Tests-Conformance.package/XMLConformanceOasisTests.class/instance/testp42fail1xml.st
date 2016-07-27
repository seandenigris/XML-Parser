tests - exception raising
testp42fail1xml
	"Source file: oasis/p42fail1.xml"

	self
		should: [
			self
				parse: self class sourcep42fail1xml
				documentURI: 'p42fail1.xml']
		raise: self exceptionClass