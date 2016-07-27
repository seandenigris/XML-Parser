tests
testvalidsa066xml
	"Source file: xmltest/valid/sa/066.xml"

	(self isSkippableTest: #testvalidsa066xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa066xml
				documentURI: 'valid/sa/066.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions