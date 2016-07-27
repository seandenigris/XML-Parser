tests - exception raising
testp14fail3xml
	"Source file: oasis/p14fail3.xml"

	self
		should: [
			self
				parse: self class sourcep14fail3xml
				documentURI: 'p14fail3.xml']
		raise: self exceptionClass