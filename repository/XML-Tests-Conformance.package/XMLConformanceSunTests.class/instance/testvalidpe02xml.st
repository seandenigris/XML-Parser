tests
testvalidpe02xml
	"Source file: sun/valid/pe02.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidpe02xml
				documentURI: 'valid/pe02.xml']
		raise: self exceptionClass