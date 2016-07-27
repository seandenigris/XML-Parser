tests - exception raising
testinvalidnotsa07xml
	"Source file: sun/invalid/not-sa07.xml"

	self
		should: [
			self
				parse: self class sourceinvalidnotsa07xml
				documentURI: 'invalid/not-sa07.xml']
		raise: self exceptionClass