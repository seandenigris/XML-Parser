tests
testvalidsa011xml
	"Source file: xmltest/valid/sa/011.xml"

	(self isSkippableTest: #testvalidsa011xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa011xml
				documentURI: 'valid/sa/011.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions