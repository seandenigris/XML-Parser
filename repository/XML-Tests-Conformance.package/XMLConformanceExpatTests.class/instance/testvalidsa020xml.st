tests
testvalidsa020xml
	"Source file: xmltest/valid/sa/020.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa020xml
				documentURI: 'valid/sa/020.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions