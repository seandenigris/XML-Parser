tests
testvalidsa075xml
	"Source file: xmltest/valid/sa/075.xml"

	(self isSkippableTest: #testvalidsa075xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa075xml
				documentURI: 'valid/sa/075.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions