tests
testvalidnotsa010xml
	"Source file: xmltest/valid/not-sa/010.xml"

	(self isSkippableTest: #testvalidnotsa010xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa010xml
				documentURI: 'valid/not-sa/010.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions