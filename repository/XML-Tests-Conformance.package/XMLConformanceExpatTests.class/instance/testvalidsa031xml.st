tests
testvalidsa031xml
	"Source file: xmltest/valid/sa/031.xml"

	(self isSkippableTest: #testvalidsa031xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa031xml
				documentURI: 'valid/sa/031.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions