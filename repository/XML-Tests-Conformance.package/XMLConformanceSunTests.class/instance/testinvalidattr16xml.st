tests - exception raising
testinvalidattr16xml
	"Source file: sun/invalid/attr16.xml"

	(self isSkippableTest: #testinvalidattr16xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidattr16xml
				documentURI: 'invalid/attr16.xml']
		raise: self parserExceptions