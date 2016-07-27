tests
testvalidnotsa029xml
	"Source file: xmltest/valid/not-sa/029.xml"

	(self isSkippableTest: #testvalidnotsa029xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa029xml
				documentURI: 'valid/not-sa/029.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions