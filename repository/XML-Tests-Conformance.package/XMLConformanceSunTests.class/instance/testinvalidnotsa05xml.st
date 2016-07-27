tests - exception raising
testinvalidnotsa05xml
	"Source file: sun/invalid/not-sa05.xml"

	(self isSkippableTest: #testinvalidnotsa05xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidnotsa05xml
				documentURI: 'invalid/not-sa05.xml']
		raise: self parserExceptions