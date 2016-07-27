tests
testvalidextsa011xml
	"Source file: xmltest/valid/ext-sa/011.xml"

	(self isSkippableTest: #testvalidextsa011xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidextsa011xml
				documentURI: 'valid/ext-sa/011.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions