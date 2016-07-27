tests - exception raising
testinvalidattr10xml
	"Source file: sun/invalid/attr10.xml"

	(self isSkippableTest: #testinvalidattr10xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidattr10xml
				documentURI: 'invalid/attr10.xml']
		raise: self parserExceptions