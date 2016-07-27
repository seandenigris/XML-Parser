tests - exception raising
testinvalidoptional07xml
	"Source file: sun/invalid/optional07.xml"

	self
		should: [
			self
				parse: self class sourceinvalidoptional07xml
				documentURI: 'invalid/optional07.xml']
		raise: self exceptionClass