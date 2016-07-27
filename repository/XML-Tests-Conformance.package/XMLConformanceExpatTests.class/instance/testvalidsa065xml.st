tests
testvalidsa065xml
	"Source file: xmltest/valid/sa/065.xml"

	(self isSkippableTest: #testvalidsa065xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa065xml
				documentURI: 'valid/sa/065.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions