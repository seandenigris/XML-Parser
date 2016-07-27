tests
testvalidsa05xml
	"Source file: sun/valid/sa05.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa05xml
				documentURI: 'valid/sa05.xml']
		raise: self exceptionClass