tests
testvalidsa030xml
	"Source file: xmltest/valid/sa/030.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa030xml
				documentURI: 'valid/sa/030.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions