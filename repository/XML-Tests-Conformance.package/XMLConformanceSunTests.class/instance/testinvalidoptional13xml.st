tests - exception raising
testinvalidoptional13xml
	"Source file: sun/invalid/optional13.xml"

	(self isSkippableTest: #testinvalidoptional13xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidoptional13xml
				documentURI: 'invalid/optional13.xml']
		raise: self parserExceptions