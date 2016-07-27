tests - exception raising
testinvalidattr09xml
	"Source file: sun/invalid/attr09.xml"

	(self isSkippableTest: #testinvalidattr09xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidattr09xml
				documentURI: 'invalid/attr09.xml']
		raise: self parserExceptions