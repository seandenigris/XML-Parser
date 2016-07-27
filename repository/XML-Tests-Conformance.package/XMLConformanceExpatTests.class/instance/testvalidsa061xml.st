tests
testvalidsa061xml
	"Source file: xmltest/valid/sa/061.xml"

	(self isSkippableTest: #testvalidsa061xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa061xml
				documentURI: 'valid/sa/061.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions