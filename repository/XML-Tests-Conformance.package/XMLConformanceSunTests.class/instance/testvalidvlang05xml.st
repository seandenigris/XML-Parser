tests
testvalidvlang05xml
	"Source file: sun/valid/v-lang05.xml"

	(self isSkippableTest: #testvalidvlang05xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidvlang05xml
				documentURI: 'valid/v-lang05.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions