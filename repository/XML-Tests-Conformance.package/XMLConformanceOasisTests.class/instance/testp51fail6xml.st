tests - exception raising
testp51fail6xml
	"Source file: oasis/p51fail6.xml"

	self
		should: [
			self
				parse: self class sourcep51fail6xml
				documentURI: 'p51fail6.xml']
		raise: self exceptionClass