tests
testvalidvlang02xml
	"Source file: sun/valid/v-lang02.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidvlang02xml
				documentURI: 'valid/v-lang02.xml']
		raise: self exceptionClass