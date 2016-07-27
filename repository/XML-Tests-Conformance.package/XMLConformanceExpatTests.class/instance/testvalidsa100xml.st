tests
testvalidsa100xml
	"Source file: xmltest/valid/sa/100.xml"

	(self isSkippableTest: #testvalidsa100xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa100xml
				documentURI: 'valid/sa/100.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions