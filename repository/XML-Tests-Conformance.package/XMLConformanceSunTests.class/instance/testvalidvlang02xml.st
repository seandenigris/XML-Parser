tests
testvalidvlang02xml
	"Source file: sun/valid/v-lang02.xml"

	(self isSkippableTest: #testvalidvlang02xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidvlang02xml
				documentURI: 'valid/v-lang02.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions