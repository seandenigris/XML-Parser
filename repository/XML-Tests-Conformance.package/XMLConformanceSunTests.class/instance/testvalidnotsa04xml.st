tests
testvalidnotsa04xml
	"Source file: sun/valid/not-sa04.xml"

	(self isSkippableTest: #testvalidnotsa04xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa04xml
				documentURI: 'valid/not-sa04.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions