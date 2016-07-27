tests
testvalidsa109xml
	"Source file: xmltest/valid/sa/109.xml"

	(self isSkippableTest: #testvalidsa109xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa109xml
				documentURI: 'valid/sa/109.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions