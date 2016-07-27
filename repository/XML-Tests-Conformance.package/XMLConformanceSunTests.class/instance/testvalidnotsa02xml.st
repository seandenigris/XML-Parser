tests
testvalidnotsa02xml
	"Source file: sun/valid/not-sa02.xml"

	(self isSkippableTest: #testvalidnotsa02xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa02xml
				documentURI: 'valid/not-sa02.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions