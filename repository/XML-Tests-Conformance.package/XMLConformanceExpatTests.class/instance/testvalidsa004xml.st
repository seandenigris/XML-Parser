tests
testvalidsa004xml
	"Source file: xmltest/valid/sa/004.xml"

	(self isSkippableTest: #testvalidsa004xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa004xml
				documentURI: 'valid/sa/004.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions