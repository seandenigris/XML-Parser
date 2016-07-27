tests - exception raising
testinvalidattr07xml
	"Source file: sun/invalid/attr07.xml"

	self
		should: [
			self
				parse: self class sourceinvalidattr07xml
				documentURI: 'invalid/attr07.xml']
		raise: self exceptionClass