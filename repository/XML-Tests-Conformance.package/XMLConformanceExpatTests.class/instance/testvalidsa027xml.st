tests
testvalidsa027xml
	"Source file: xmltest/valid/sa/027.xml"

	(self isSkippableTest: #testvalidsa027xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa027xml
				documentURI: 'valid/sa/027.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions