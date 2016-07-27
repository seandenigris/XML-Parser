tests
testvalidsa041xml
	"Source file: xmltest/valid/sa/041.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa041xml
				documentURI: 'valid/sa/041.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions