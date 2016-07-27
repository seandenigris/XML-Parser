tests - exception raising
testinvalidoptional25xml
	"Source file: sun/invalid/optional25.xml"

	(self isSkippableTest: #testinvalidoptional25xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidoptional25xml
				documentURI: 'invalid/optional25.xml']
		raise: self parserExceptions