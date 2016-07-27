tests - exception raising
testinvalidnotsa10xml
	"Source file: sun/invalid/not-sa10.xml"

	self
		should: [
			self
				parse: self class sourceinvalidnotsa10xml
				documentURI: 'invalid/not-sa10.xml']
		raise: self exceptionClass