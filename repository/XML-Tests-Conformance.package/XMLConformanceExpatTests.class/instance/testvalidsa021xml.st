tests
testvalidsa021xml
	"Source file: xmltest/valid/sa/021.xml"

	(self isSkippableTest: #testvalidsa021xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa021xml
				documentURI: 'valid/sa/021.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions