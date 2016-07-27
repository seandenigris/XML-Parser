tests
testvalidnotsa013xml
	"Source file: xmltest/valid/not-sa/013.xml"

	(self isSkippableTest: #testvalidnotsa013xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa013xml
				documentURI: 'valid/not-sa/013.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions