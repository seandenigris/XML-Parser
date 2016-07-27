tests
testvalidsa111xml
	"Source file: xmltest/valid/sa/111.xml"

	(self isSkippableTest: #testvalidsa111xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa111xml
				documentURI: 'valid/sa/111.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions