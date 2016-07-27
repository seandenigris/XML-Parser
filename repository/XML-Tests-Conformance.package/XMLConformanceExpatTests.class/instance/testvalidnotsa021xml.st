tests
testvalidnotsa021xml
	"Source file: xmltest/valid/not-sa/021.xml"

	(self isSkippableTest: #testvalidnotsa021xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa021xml
				documentURI: 'valid/not-sa/021.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions