tests
testvalidsa029xml
	"Source file: xmltest/valid/sa/029.xml"

	(self isSkippableTest: #testvalidsa029xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa029xml
				documentURI: 'valid/sa/029.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions