tests - exception raising
testinvalidattr13xml
	"Source file: sun/invalid/attr13.xml"

	(self isSkippableTest: #testinvalidattr13xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidattr13xml
				documentURI: 'invalid/attr13.xml']
		raise: self parserExceptions