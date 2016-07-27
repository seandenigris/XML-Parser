tests
testvalidvlang03xml
	"Source file: sun/valid/v-lang03.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidvlang03xml
				documentURI: 'valid/v-lang03.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions