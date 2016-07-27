tests - exception raising
testinvalidid01xml
	"Source file: sun/invalid/id01.xml"

	(self isSkippableTest: #testinvalidid01xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidid01xml
				documentURI: 'invalid/id01.xml']
		raise: self parserExceptions