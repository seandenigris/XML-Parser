tests
testvalidsa089xml
	"Source file: xmltest/valid/sa/089.xml"

	(self isSkippableTest: #testvalidsa089xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa089xml
				documentURI: 'valid/sa/089.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions