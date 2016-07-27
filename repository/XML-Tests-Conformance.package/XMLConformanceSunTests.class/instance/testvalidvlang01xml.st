tests
testvalidvlang01xml
	"Source file: sun/valid/v-lang01.xml"

	(self isSkippableTest: #testvalidvlang01xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidvlang01xml
				documentURI: 'valid/v-lang01.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions