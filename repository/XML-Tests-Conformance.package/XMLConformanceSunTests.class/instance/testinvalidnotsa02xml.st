tests - exception raising
testinvalidnotsa02xml
	"Source file: sun/invalid/not-sa02.xml"

	self
		should: [
			self
				parse: self class sourceinvalidnotsa02xml
				documentURI: 'invalid/not-sa02.xml']
		raise: self parserExceptions