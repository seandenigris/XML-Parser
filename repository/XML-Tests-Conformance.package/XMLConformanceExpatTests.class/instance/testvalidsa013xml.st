tests
testvalidsa013xml
	"Source file: xmltest/valid/sa/013.xml"

	(self isSkippableTest: #testvalidsa013xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa013xml
				documentURI: 'valid/sa/013.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions