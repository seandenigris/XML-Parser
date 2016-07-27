tests
testvalidnotsa03xml
	"Source file: sun/valid/not-sa03.xml"

	(self isSkippableTest: #testvalidnotsa03xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa03xml
				documentURI: 'valid/not-sa03.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions