tests
testvalidsa026xml
	"Source file: xmltest/valid/sa/026.xml"

	(self isSkippableTest: #testvalidsa026xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa026xml
				documentURI: 'valid/sa/026.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions