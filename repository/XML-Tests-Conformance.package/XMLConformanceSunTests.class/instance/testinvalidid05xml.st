tests - exception raising
testinvalidid05xml
	"Source file: sun/invalid/id05.xml"

	(self isSkippableTest: #testinvalidid05xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidid05xml
				documentURI: 'invalid/id05.xml']
		raise: self parserExceptions