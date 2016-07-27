tests
teste2xml
	"Source file: oasis/e2.xml"

	self
		shouldnt: [
			self
				parse: self class sourcee2xml
				documentURI: 'e2.xml']
		raise: self exceptionClass