tests
testvalidsa051xml
	"Source file: xmltest/valid/sa/051.xml"

	(self isSkippableTest: #testvalidsa051xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa051xml
				documentURI: 'valid/sa/051.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions