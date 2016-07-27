tests - exception raising
testinvalidnotsa13xml
	"Source file: sun/invalid/not-sa13.xml"

	(self isSkippableTest: #testinvalidnotsa13xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidnotsa13xml
				documentURI: 'invalid/not-sa13.xml']
		raise: self parserExceptions