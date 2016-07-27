tests
testvalidsa042xml
	"Source file: xmltest/valid/sa/042.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa042xml
				documentURI: 'valid/sa/042.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions