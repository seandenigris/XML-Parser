tests
testvalidsa02xml
	"Source file: sun/valid/sa02.xml"

	(self isSkippableTest: #testvalidsa02xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa02xml
				documentURI: 'valid/sa02.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions