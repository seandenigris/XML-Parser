tests
testvalidsa028xml
	"Source file: xmltest/valid/sa/028.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa028xml
				documentURI: 'valid/sa/028.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions