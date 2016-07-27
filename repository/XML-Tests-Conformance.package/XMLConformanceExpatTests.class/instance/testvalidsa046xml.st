tests
testvalidsa046xml
	"Source file: xmltest/valid/sa/046.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa046xml
				documentURI: 'valid/sa/046.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions