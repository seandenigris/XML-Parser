tests
testvaliddtd00xml
	"Source file: sun/valid/dtd00.xml"

	(self isSkippableTest: #testvaliddtd00xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevaliddtd00xml
				documentURI: 'valid/dtd00.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions