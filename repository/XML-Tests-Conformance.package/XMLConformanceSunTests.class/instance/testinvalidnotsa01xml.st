tests - exception raising
testinvalidnotsa01xml
	"Source file: sun/invalid/not-sa01.xml"

	self
		should: [
			self
				parse: self class sourceinvalidnotsa01xml
				documentURI: 'invalid/not-sa01.xml']
		raise: self parserExceptions