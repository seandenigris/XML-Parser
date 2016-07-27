tests
testvalidvlang03xml
	"Source file: sun/valid/v-lang03.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidvlang03xml
				documentURI: 'valid/v-lang03.xml']
		raise: self exceptionClass