tests - exception raising
testinvalidoptional20xml
	"Source file: sun/invalid/optional20.xml"

	(self isSkippableTest: #testinvalidoptional20xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidoptional20xml
				documentURI: 'invalid/optional20.xml']
		raise: self parserExceptions