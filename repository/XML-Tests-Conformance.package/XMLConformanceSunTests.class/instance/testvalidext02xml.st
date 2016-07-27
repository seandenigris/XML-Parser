tests
testvalidext02xml
	"Source file: sun/valid/ext02.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidext02xml
				documentURI: 'valid/ext02.xml']
		raise: self exceptionClass