tests
testvalidsa022xml
	"Source file: xmltest/valid/sa/022.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa022xml
				documentURI: 'valid/sa/022.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions