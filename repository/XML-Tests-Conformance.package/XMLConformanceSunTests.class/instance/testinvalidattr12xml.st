tests - exception raising
testinvalidattr12xml
	"Source file: sun/invalid/attr12.xml"

	(self isSkippableTest: #testinvalidattr12xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidattr12xml
				documentURI: 'invalid/attr12.xml']
		raise: self parserExceptions