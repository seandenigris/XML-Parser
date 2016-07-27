tests - exception raising
testinvalidoptional03xml
	"Source file: sun/invalid/optional03.xml"

	self
		should: [
			self
				parse: self class sourceinvalidoptional03xml
				documentURI: 'invalid/optional03.xml']
		raise: self parserExceptions