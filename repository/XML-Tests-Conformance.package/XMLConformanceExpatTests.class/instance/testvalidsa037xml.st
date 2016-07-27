tests
testvalidsa037xml
	"Source file: xmltest/valid/sa/037.xml"

	(self isSkippableTest: #testvalidsa037xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa037xml
				documentURI: 'valid/sa/037.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions