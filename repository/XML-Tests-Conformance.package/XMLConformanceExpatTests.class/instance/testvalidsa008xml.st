tests
testvalidsa008xml
	"Source file: xmltest/valid/sa/008.xml"

	(self isSkippableTest: #testvalidsa008xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa008xml
				documentURI: 'valid/sa/008.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions