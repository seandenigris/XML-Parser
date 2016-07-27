tests - exception raising
testinvalidnotsa08xml
	"Source file: sun/invalid/not-sa08.xml"

	self
		should: [
			self
				parse: self class sourceinvalidnotsa08xml
				documentURI: 'invalid/not-sa08.xml']
		raise: self parserExceptions