tests
testvalidsa073xml
	"Source file: xmltest/valid/sa/073.xml"

	(self isSkippableTest: #testvalidsa073xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa073xml
				documentURI: 'valid/sa/073.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions