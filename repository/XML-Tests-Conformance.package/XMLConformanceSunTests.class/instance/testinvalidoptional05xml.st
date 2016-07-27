tests - exception raising
testinvalidoptional05xml
	"Source file: sun/invalid/optional05.xml"

	(self isSkippableTest: #testinvalidoptional05xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidoptional05xml
				documentURI: 'invalid/optional05.xml']
		raise: self parserExceptions