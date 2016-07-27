tests
testvalidsa03xml
	"Source file: sun/valid/sa03.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa03xml
				documentURI: 'valid/sa03.xml']
		raise: self exceptionClass