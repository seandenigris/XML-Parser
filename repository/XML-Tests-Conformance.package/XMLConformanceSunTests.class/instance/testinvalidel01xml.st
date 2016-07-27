tests - exception raising
testinvalidel01xml
	"Source file: sun/invalid/el01.xml"

	(self isSkippableTest: #testinvalidel01xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidel01xml
				documentURI: 'invalid/el01.xml']
		raise: self parserExceptions