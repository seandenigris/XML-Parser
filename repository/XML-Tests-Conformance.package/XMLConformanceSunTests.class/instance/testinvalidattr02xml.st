tests - exception raising
testinvalidattr02xml
	"Source file: sun/invalid/attr02.xml"

	(self isSkippableTest: #testinvalidattr02xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidattr02xml
				documentURI: 'invalid/attr02.xml']
		raise: self parserExceptions