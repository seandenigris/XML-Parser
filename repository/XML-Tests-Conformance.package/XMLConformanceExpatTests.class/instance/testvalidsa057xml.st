tests
testvalidsa057xml
	"Source file: xmltest/valid/sa/057.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa057xml
				documentURI: 'valid/sa/057.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions