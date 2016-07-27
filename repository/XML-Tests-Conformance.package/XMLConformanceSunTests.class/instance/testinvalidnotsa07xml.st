tests - exception raising
testinvalidnotsa07xml
	"Source file: sun/invalid/not-sa07.xml"

	(self isSkippableTest: #testinvalidnotsa07xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidnotsa07xml
				documentURI: 'invalid/not-sa07.xml']
		raise: self parserExceptions