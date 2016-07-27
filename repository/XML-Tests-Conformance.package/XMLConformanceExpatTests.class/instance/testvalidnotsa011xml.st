tests
testvalidnotsa011xml
	"Source file: xmltest/valid/not-sa/011.xml"

	(self isSkippableTest: #testvalidnotsa011xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa011xml
				documentURI: 'valid/not-sa/011.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions