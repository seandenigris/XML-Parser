tests
testvalidsa090xml
	"Source file: xmltest/valid/sa/090.xml"

	(self isSkippableTest: #testvalidsa090xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa090xml
				documentURI: 'valid/sa/090.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions