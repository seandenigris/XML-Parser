tests
testvalidnotsa001xml
	"Source file: xmltest/valid/not-sa/001.xml"

	(self isSkippableTest: #testvalidnotsa001xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa001xml
				documentURI: 'valid/not-sa/001.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions