tests - exception raising
testinvalidattr15xml
	"Source file: sun/invalid/attr15.xml"

	(self isSkippableTest: #testinvalidattr15xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidattr15xml
				documentURI: 'invalid/attr15.xml']
		raise: self parserExceptions