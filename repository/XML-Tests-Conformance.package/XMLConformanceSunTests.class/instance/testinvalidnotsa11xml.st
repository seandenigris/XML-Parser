tests - exception raising
testinvalidnotsa11xml
	"Source file: sun/invalid/not-sa11.xml"

	(self isSkippableTest: #testinvalidnotsa11xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidnotsa11xml
				documentURI: 'invalid/not-sa11.xml']
		raise: self parserExceptions