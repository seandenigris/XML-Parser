tests
testvalidsa080xml
	"Source file: xmltest/valid/sa/080.xml"

	(self isSkippableTest: #testvalidsa080xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa080xml
				documentURI: 'valid/sa/080.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions