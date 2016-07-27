tests - exception raising
testinvalidoptional14xml
	"Source file: sun/invalid/optional14.xml"

	(self isSkippableTest: #testinvalidoptional14xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidoptional14xml
				documentURI: 'invalid/optional14.xml']
		raise: self parserExceptions