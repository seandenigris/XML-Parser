tests
testvalidnotsa014xml
	"Source file: xmltest/valid/not-sa/014.xml"

	(self isSkippableTest: #testvalidnotsa014xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa014xml
				documentURI: 'valid/not-sa/014.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions