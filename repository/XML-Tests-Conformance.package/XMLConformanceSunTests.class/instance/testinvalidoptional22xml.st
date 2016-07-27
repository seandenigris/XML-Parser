tests - exception raising
testinvalidoptional22xml
	"Source file: sun/invalid/optional22.xml"

	self
		should: [
			self
				parse: self class sourceinvalidoptional22xml
				documentURI: 'invalid/optional22.xml']
		raise: self parserExceptions