tests
testvalidnotsa006xml
	"Source file: xmltest/valid/not-sa/006.xml"

	(self isSkippableTest: #testvalidnotsa006xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa006xml
				documentURI: 'valid/not-sa/006.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions