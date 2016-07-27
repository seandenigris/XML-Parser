tests
testvalidsa010xml
	"Source file: xmltest/valid/sa/010.xml"

	(self isSkippableTest: #testvalidsa010xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa010xml
				documentURI: 'valid/sa/010.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions