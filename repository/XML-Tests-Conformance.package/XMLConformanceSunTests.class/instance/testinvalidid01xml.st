tests - exception raising
testinvalidid01xml
	"Source file: sun/invalid/id01.xml"

	self
		should: [
			self
				parse: self class sourceinvalidid01xml
				documentURI: 'invalid/id01.xml']
		raise: self parserExceptions