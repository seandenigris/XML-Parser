tests
testvalidsa087xml
	"Source file: xmltest/valid/sa/087.xml"

	(self isSkippableTest: #testvalidsa087xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa087xml
				documentURI: 'valid/sa/087.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions