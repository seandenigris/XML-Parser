tests
testvalidsa107xml
	"Source file: xmltest/valid/sa/107.xml"

	(self isSkippableTest: #testvalidsa107xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa107xml
				documentURI: 'valid/sa/107.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions