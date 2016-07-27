tests
testvalidextsa006xml
	"Source file: xmltest/valid/ext-sa/006.xml"

	(self isSkippableTest: #testvalidextsa006xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidextsa006xml
				documentURI: 'valid/ext-sa/006.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions