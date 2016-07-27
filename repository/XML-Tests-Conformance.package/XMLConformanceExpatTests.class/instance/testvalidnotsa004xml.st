tests
testvalidnotsa004xml
	"Source file: xmltest/valid/not-sa/004.xml"

	(self isSkippableTest: #testvalidnotsa004xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa004xml
				documentURI: 'valid/not-sa/004.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions