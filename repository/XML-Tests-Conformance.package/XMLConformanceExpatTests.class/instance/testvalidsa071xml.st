tests
testvalidsa071xml
	"Source file: xmltest/valid/sa/071.xml"

	(self isSkippableTest: #testvalidsa071xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa071xml
				documentURI: 'valid/sa/071.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions