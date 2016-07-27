tests - exception raising
testinvalidid04xml
	"Source file: sun/invalid/id04.xml"

	self
		should: [
			self
				parse: self class sourceinvalidid04xml
				documentURI: 'invalid/id04.xml']
		raise: self exceptionClass