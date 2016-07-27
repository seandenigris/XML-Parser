tests - exception raising
testinvalidattr05xml
	"Source file: sun/invalid/attr05.xml"

	(self isSkippableTest: #testinvalidattr05xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidattr05xml
				documentURI: 'invalid/attr05.xml']
		raise: self parserExceptions