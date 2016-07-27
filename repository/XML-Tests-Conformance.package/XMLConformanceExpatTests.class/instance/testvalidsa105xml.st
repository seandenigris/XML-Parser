tests
testvalidsa105xml
	"Source file: xmltest/valid/sa/105.xml"

	(self isSkippableTest: #testvalidsa105xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa105xml
				documentURI: 'valid/sa/105.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions