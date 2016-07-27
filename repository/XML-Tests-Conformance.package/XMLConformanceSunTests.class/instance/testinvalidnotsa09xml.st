tests - exception raising
testinvalidnotsa09xml
	"Source file: sun/invalid/not-sa09.xml"

	(self isSkippableTest: #testinvalidnotsa09xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidnotsa09xml
				documentURI: 'invalid/not-sa09.xml']
		raise: self parserExceptions