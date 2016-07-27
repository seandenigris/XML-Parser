tests
testvalidsa047xml
	"Source file: xmltest/valid/sa/047.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa047xml
				documentURI: 'valid/sa/047.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions