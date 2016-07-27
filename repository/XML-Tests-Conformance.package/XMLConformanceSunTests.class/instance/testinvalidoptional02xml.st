tests - exception raising
testinvalidoptional02xml
	"Source file: sun/invalid/optional02.xml"

	(self isSkippableTest: #testinvalidoptional02xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidoptional02xml
				documentURI: 'invalid/optional02.xml']
		raise: self parserExceptions