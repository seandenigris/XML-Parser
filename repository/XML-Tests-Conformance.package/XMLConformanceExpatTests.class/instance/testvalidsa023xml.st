tests
testvalidsa023xml
	"Source file: xmltest/valid/sa/023.xml"

	(self isSkippableTest: #testvalidsa023xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa023xml
				documentURI: 'valid/sa/023.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions