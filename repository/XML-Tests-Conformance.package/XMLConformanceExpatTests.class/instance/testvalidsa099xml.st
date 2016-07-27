tests
testvalidsa099xml
	"Source file: xmltest/valid/sa/099.xml"

	(self isSkippableTest: #testvalidsa099xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa099xml
				documentURI: 'valid/sa/099.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions