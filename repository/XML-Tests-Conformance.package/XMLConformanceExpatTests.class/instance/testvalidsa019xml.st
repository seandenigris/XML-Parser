tests
testvalidsa019xml
	"Source file: xmltest/valid/sa/019.xml"

	(self isSkippableTest: #testvalidsa019xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa019xml
				documentURI: 'valid/sa/019.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions