tests
testvalidsa007xml
	"Source file: xmltest/valid/sa/007.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa007xml
				documentURI: 'valid/sa/007.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions