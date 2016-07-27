tests - exception raising
testinvalidrequired00xml
	"Source file: sun/invalid/required00.xml"

	self
		should: [
			self
				parse: self class sourceinvalidrequired00xml
				documentURI: 'invalid/required00.xml']
		raise: self parserExceptions