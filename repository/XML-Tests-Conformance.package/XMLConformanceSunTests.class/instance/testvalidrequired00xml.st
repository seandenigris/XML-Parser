tests
testvalidrequired00xml
	"Source file: sun/valid/required00.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidrequired00xml
				documentURI: 'valid/required00.xml']
		raise: self exceptionClass