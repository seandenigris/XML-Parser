tests
testvaliddtd01xml
	"Source file: sun/valid/dtd01.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevaliddtd01xml
				documentURI: 'valid/dtd01.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions