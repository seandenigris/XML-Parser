tests - exception raising
testinvalidnotsa12xml
	"Source file: sun/invalid/not-sa12.xml"

	(self isSkippableTest: #testinvalidnotsa12xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidnotsa12xml
				documentURI: 'invalid/not-sa12.xml']
		raise: self parserExceptions