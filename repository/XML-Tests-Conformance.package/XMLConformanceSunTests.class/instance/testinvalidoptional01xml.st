tests - exception raising
testinvalidoptional01xml
	"Source file: sun/invalid/optional01.xml"

	(self isSkippableTest: #testinvalidoptional01xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidoptional01xml
				documentURI: 'invalid/optional01.xml']
		raise: self parserExceptions