tests - exception raising
testinvalidattr06xml
	"Source file: sun/invalid/attr06.xml"

	(self isSkippableTest: #testinvalidattr06xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidattr06xml
				documentURI: 'invalid/attr06.xml']
		raise: self parserExceptions