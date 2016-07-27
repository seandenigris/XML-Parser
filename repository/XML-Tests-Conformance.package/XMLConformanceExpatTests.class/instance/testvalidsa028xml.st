tests
testvalidsa028xml
	"Source file: xmltest/valid/sa/028.xml"

	(self isSkippableTest: #testvalidsa028xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa028xml
				documentURI: 'valid/sa/028.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions