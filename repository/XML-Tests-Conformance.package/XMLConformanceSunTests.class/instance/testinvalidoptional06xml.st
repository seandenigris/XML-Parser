tests - exception raising
testinvalidoptional06xml
	"Source file: sun/invalid/optional06.xml"

	(self isSkippableTest: #testinvalidoptional06xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidoptional06xml
				documentURI: 'invalid/optional06.xml']
		raise: self parserExceptions