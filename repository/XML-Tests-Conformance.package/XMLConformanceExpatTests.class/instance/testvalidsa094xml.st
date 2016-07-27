tests
testvalidsa094xml
	"Source file: xmltest/valid/sa/094.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa094xml
				documentURI: 'valid/sa/094.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions