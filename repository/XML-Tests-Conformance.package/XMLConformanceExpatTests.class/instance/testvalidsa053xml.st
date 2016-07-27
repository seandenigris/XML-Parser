tests
testvalidsa053xml
	"Source file: xmltest/valid/sa/053.xml"

	(self isSkippableTest: #testvalidsa053xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa053xml
				documentURI: 'valid/sa/053.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions