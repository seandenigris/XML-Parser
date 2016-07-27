tests
testvalidnotsa026xml
	"Source file: xmltest/valid/not-sa/026.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa026xml
				documentURI: 'valid/not-sa/026.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions