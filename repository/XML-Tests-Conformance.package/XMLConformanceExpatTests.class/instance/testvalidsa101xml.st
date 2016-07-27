tests
testvalidsa101xml
	"Source file: xmltest/valid/sa/101.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa101xml
				documentURI: 'valid/sa/101.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions