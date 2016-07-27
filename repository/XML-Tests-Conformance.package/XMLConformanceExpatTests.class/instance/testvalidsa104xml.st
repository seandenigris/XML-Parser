tests
testvalidsa104xml
	"Source file: xmltest/valid/sa/104.xml"

	(self isSkippableTest: #testvalidsa104xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa104xml
				documentURI: 'valid/sa/104.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions