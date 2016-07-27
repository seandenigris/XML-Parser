tests - exception raising
testinvalidid09xml
	"Source file: sun/invalid/id09.xml"

	(self isSkippableTest: #testinvalidid09xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidid09xml
				documentURI: 'invalid/id09.xml']
		raise: self parserExceptions