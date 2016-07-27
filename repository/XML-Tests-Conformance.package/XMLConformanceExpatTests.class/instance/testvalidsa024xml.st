tests
testvalidsa024xml
	"Source file: xmltest/valid/sa/024.xml"

	(self isSkippableTest: #testvalidsa024xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa024xml
				documentURI: 'valid/sa/024.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions