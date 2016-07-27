tests - exception raising
testinvalidoptional09xml
	"Source file: sun/invalid/optional09.xml"

	(self isSkippableTest: #testinvalidoptional09xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidoptional09xml
				documentURI: 'invalid/optional09.xml']
		raise: self parserExceptions