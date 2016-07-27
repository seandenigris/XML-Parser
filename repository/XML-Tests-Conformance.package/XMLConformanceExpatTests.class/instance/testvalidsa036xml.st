tests
testvalidsa036xml
	"Source file: xmltest/valid/sa/036.xml"

	(self isSkippableTest: #testvalidsa036xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa036xml
				documentURI: 'valid/sa/036.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions