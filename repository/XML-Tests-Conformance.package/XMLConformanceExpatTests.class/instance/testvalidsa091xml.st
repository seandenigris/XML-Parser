tests
testvalidsa091xml
	"Source file: xmltest/valid/sa/091.xml"

	(self isSkippableTest: #testvalidsa091xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa091xml
				documentURI: 'valid/sa/091.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions