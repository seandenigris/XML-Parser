tests - exception raising
testinvalidoptional08xml
	"Source file: sun/invalid/optional08.xml"

	(self isSkippableTest: #testinvalidoptional08xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidoptional08xml
				documentURI: 'invalid/optional08.xml']
		raise: self parserExceptions