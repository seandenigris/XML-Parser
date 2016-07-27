tests
testvalidsa085xml
	"Source file: xmltest/valid/sa/085.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa085xml
				documentURI: 'valid/sa/085.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions