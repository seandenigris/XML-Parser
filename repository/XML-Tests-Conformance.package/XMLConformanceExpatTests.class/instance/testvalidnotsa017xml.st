tests
testvalidnotsa017xml
	"Source file: xmltest/valid/not-sa/017.xml"

	(self isSkippableTest: #testvalidnotsa017xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa017xml
				documentURI: 'valid/not-sa/017.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions