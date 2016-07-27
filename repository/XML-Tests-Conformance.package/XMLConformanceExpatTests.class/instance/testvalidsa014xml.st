tests
testvalidsa014xml
	"Source file: xmltest/valid/sa/014.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa014xml
				documentURI: 'valid/sa/014.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions