tests
testvalidsa044xml
	"Source file: xmltest/valid/sa/044.xml"

	(self isSkippableTest: #testvalidsa044xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa044xml
				documentURI: 'valid/sa/044.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions