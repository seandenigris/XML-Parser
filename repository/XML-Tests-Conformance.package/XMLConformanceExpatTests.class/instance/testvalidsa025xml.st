tests
testvalidsa025xml
	"Source file: xmltest/valid/sa/025.xml"

	(self isSkippableTest: #testvalidsa025xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa025xml
				documentURI: 'valid/sa/025.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions