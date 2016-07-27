tests - exception raising
testp51fail1xml
	"Source file: oasis/p51fail1.xml"

	self
		should: [
			self
				parse: self class sourcep51fail1xml
				documentURI: 'p51fail1.xml']
		raise: self exceptionClass