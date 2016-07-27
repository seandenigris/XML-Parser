tests - exception raising
testinvalidoptional21xml
	"Source file: sun/invalid/optional21.xml"

	self
		should: [
			self
				parse: self class sourceinvalidoptional21xml
				documentURI: 'invalid/optional21.xml']
		raise: self parserExceptions