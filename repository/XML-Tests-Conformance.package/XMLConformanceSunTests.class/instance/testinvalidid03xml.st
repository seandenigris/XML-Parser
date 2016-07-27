tests - exception raising
testinvalidid03xml
	"Source file: sun/invalid/id03.xml"

	self
		should: [
			self
				parse: self class sourceinvalidid03xml
				documentURI: 'invalid/id03.xml']
		raise: self parserExceptions