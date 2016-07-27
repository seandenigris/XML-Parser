tests - exception raising
testinvalidid08xml
	"Source file: sun/invalid/id08.xml"

	self
		should: [
			self
				parse: self class sourceinvalidid08xml
				documentURI: 'invalid/id08.xml']
		raise: self parserExceptions