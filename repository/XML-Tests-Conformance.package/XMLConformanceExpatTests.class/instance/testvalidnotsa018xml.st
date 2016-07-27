tests
testvalidnotsa018xml
	"Source file: xmltest/valid/not-sa/018.xml"

	(self isSkippableTest: #testvalidnotsa018xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa018xml
				documentURI: 'valid/not-sa/018.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions