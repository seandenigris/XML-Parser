tests
testvalidsa038xml
	"Source file: xmltest/valid/sa/038.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa038xml
				documentURI: 'valid/sa/038.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions