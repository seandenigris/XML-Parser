tests - exception raising
testp22fail1xml
	"Source file: oasis/p22fail1.xml"

	self
		should: [
			self
				parse: self class sourcep22fail1xml
				documentURI: 'p22fail1.xml']
		raise: self exceptionClass