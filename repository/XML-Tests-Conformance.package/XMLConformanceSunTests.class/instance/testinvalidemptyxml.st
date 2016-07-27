tests - exception raising
testinvalidemptyxml
	"Source file: sun/invalid/empty.xml"

	self
		should: [
			self
				parse: self class sourceinvalidemptyxml
				documentURI: 'invalid/empty.xml']
		raise: self exceptionClass