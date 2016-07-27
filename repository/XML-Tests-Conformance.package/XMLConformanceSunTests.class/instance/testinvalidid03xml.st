tests - exception raising
testinvalidid03xml
	"Source file: sun/invalid/id03.xml"

	(self isSkippableTest: #testinvalidid03xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidid03xml
				documentURI: 'invalid/id03.xml']
		raise: self parserExceptions