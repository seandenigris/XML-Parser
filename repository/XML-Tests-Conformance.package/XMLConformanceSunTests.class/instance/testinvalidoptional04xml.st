tests - exception raising
testinvalidoptional04xml
	"Source file: sun/invalid/optional04.xml"

	(self isSkippableTest: #testinvalidoptional04xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidoptional04xml
				documentURI: 'invalid/optional04.xml']
		raise: self parserExceptions