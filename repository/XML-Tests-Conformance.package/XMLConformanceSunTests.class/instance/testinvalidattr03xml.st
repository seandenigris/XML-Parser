tests - exception raising
testinvalidattr03xml
	"Source file: sun/invalid/attr03.xml"

	(self isSkippableTest: #testinvalidattr03xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidattr03xml
				documentURI: 'invalid/attr03.xml']
		raise: self parserExceptions