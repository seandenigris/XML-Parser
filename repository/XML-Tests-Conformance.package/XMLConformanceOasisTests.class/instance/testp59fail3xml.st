tests - exception raising
testp59fail3xml
	"Source file: oasis/p59fail3.xml"

	self
		should: [
			self
				parse: self class sourcep59fail3xml
				documentURI: 'p59fail3.xml']
		raise: self parserExceptions