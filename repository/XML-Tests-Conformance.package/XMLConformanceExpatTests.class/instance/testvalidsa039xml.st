tests
testvalidsa039xml
	"Source file: xmltest/valid/sa/039.xml"

	(self isSkippableTest: #testvalidsa039xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa039xml
				documentURI: 'valid/sa/039.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions