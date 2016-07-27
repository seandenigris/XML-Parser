tests
testvalidsa034xml
	"Source file: xmltest/valid/sa/034.xml"

	(self isSkippableTest: #testvalidsa034xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa034xml
				documentURI: 'valid/sa/034.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions