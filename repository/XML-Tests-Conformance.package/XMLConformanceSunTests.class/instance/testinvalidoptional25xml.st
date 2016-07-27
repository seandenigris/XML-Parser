tests - exception raising
testinvalidoptional25xml
	"Source file: sun/invalid/optional25.xml"

	self
		should: [
			self
				parse: self class sourceinvalidoptional25xml
				documentURI: 'invalid/optional25.xml']
		raise: self parserExceptions