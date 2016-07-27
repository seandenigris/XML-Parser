tests
testvalidsa043xml
	"Source file: xmltest/valid/sa/043.xml"

	(self isSkippableTest: #testvalidsa043xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa043xml
				documentURI: 'valid/sa/043.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions