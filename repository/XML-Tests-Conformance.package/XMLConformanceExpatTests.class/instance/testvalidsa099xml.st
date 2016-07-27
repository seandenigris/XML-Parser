tests
testvalidsa099xml
	"Source file: xmltest/valid/sa/099.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa099xml
				documentURI: 'valid/sa/099.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions