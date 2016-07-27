tests
testvalidnotsa024xml
	"Source file: xmltest/valid/not-sa/024.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa024xml
				documentURI: 'valid/not-sa/024.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions