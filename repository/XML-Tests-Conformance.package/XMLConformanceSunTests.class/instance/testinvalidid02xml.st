tests - exception raising
testinvalidid02xml
	"Source file: sun/invalid/id02.xml"

	self
		should: [
			self
				parse: self class sourceinvalidid02xml
				documentURI: 'invalid/id02.xml']
		raise: self parserExceptions