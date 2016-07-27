tests
testvalidvlang06xml
	"Source file: sun/valid/v-lang06.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidvlang06xml
				documentURI: 'valid/v-lang06.xml']
		raise: self exceptionClass