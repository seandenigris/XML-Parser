tests - exception raising
testinvalidoptional10xml
	"Source file: sun/invalid/optional10.xml"

	(self isSkippableTest: #testinvalidoptional10xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidoptional10xml
				documentURI: 'invalid/optional10.xml']
		raise: self parserExceptions