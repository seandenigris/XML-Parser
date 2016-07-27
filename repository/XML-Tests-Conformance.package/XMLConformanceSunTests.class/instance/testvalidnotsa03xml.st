tests
testvalidnotsa03xml
	"Source file: sun/valid/not-sa03.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa03xml
				documentURI: 'valid/not-sa03.xml']
		raise: self exceptionClass