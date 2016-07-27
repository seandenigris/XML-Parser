tests - exception raising
testinvalidoptional24xml
	"Source file: sun/invalid/optional24.xml"

	self
		should: [
			self
				parse: self class sourceinvalidoptional24xml
				documentURI: 'invalid/optional24.xml']
		raise: self parserExceptions