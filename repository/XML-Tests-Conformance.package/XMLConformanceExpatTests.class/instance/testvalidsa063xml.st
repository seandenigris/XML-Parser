tests
testvalidsa063xml
	"Source file: xmltest/valid/sa/063.xml"

	(self isSkippableTest: #testvalidsa063xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa063xml
				documentURI: 'valid/sa/063.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions