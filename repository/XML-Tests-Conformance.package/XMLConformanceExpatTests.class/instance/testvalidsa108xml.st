tests
testvalidsa108xml
	"Source file: xmltest/valid/sa/108.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa108xml
				documentURI: 'valid/sa/108.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions