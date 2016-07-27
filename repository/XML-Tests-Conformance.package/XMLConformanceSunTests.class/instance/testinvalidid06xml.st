tests - exception raising
testinvalidid06xml
	"Source file: sun/invalid/id06.xml"

	(self isSkippableTest: #testinvalidid06xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidid06xml
				documentURI: 'invalid/id06.xml']
		raise: self parserExceptions