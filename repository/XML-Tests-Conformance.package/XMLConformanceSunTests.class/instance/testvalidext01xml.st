tests
testvalidext01xml
	"Source file: sun/valid/ext01.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidext01xml
				documentURI: 'valid/ext01.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions