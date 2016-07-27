tests
testvalidsa001xml
	"Source file: xmltest/valid/sa/001.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa001xml
				documentURI: 'valid/sa/001.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions