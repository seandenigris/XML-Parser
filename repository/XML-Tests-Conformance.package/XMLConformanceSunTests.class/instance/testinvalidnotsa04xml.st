tests - exception raising
testinvalidnotsa04xml
	"Source file: sun/invalid/not-sa04.xml"

	(self isSkippableTest: #testinvalidnotsa04xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidnotsa04xml
				documentURI: 'invalid/not-sa04.xml']
		raise: self parserExceptions