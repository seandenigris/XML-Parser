tests
testvalidsa077xml
	"Source file: xmltest/valid/sa/077.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa077xml
				documentURI: 'valid/sa/077.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions