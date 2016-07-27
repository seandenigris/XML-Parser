tests - exception raising
testinvalidrootxml
	"Source file: sun/invalid/root.xml"

	self
		should: [
			self
				parse: self class sourceinvalidrootxml
				documentURI: 'invalid/root.xml']
		raise: self exceptionClass