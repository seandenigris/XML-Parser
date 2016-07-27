tests
testvalidsa067xml
	"Source file: xmltest/valid/sa/067.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa067xml
				documentURI: 'valid/sa/067.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions