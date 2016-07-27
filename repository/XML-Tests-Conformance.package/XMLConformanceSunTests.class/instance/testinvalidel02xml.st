tests - exception raising
testinvalidel02xml
	"Source file: sun/invalid/el02.xml"

	(self isSkippableTest: #testinvalidel02xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidel02xml
				documentURI: 'invalid/el02.xml']
		raise: self parserExceptions