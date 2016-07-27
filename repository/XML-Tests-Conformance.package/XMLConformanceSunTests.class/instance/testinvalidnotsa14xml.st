tests - exception raising
testinvalidnotsa14xml
	"Source file: sun/invalid/not-sa14.xml"

	(self isSkippableTest: #testinvalidnotsa14xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidnotsa14xml
				documentURI: 'invalid/not-sa14.xml']
		raise: self parserExceptions