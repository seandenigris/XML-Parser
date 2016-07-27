tests
testvalidvlang05xml
	"Source file: sun/valid/v-lang05.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidvlang05xml
				documentURI: 'valid/v-lang05.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions