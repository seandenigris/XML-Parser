tests
testvalidsa112xml
	"Source file: xmltest/valid/sa/112.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa112xml
				documentURI: 'valid/sa/112.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions