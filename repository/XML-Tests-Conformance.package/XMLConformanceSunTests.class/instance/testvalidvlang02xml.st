tests
testvalidvlang02xml
	"Source file: sun/valid/v-lang02.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidvlang02xml
				documentURI: 'valid/v-lang02.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions