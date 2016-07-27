tests
testvalidsa079xml
	"Source file: xmltest/valid/sa/079.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa079xml
				documentURI: 'valid/sa/079.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions