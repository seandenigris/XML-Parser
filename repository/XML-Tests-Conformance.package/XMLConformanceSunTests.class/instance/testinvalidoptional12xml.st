tests - exception raising
testinvalidoptional12xml
	"Source file: sun/invalid/optional12.xml"

	(self isSkippableTest: #testinvalidoptional12xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidoptional12xml
				documentURI: 'invalid/optional12.xml']
		raise: self parserExceptions