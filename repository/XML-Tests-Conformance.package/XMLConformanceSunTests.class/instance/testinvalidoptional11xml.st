tests - exception raising
testinvalidoptional11xml
	"Source file: sun/invalid/optional11.xml"

	(self isSkippableTest: #testinvalidoptional11xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidoptional11xml
				documentURI: 'invalid/optional11.xml']
		raise: self parserExceptions