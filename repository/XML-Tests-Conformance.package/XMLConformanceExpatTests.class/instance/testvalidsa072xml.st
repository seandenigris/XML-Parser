tests
testvalidsa072xml
	"Source file: xmltest/valid/sa/072.xml"

	(self isSkippableTest: #testvalidsa072xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa072xml
				documentURI: 'valid/sa/072.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions