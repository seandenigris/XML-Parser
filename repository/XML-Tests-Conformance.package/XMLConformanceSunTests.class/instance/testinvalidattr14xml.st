tests - exception raising
testinvalidattr14xml
	"Source file: sun/invalid/attr14.xml"

	(self isSkippableTest: #testinvalidattr14xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidattr14xml
				documentURI: 'invalid/attr14.xml']
		raise: self parserExceptions