tests
testvalidsa078xml
	"Source file: xmltest/valid/sa/078.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa078xml
				documentURI: 'valid/sa/078.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions