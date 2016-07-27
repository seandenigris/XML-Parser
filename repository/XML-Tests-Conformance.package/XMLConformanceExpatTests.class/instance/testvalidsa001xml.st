tests
testvalidsa001xml
	"Source file: xmltest/valid/sa/001.xml"

	(self isSkippableTest: #testvalidsa001xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa001xml
				documentURI: 'valid/sa/001.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions