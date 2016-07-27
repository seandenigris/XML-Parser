tests
testvalidsa074xml
	"Source file: xmltest/valid/sa/074.xml"

	(self isSkippableTest: #testvalidsa074xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa074xml
				documentURI: 'valid/sa/074.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions