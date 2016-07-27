tests - exception raising
testinvalidid07xml
	"Source file: sun/invalid/id07.xml"

	(self isSkippableTest: #testinvalidid07xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidid07xml
				documentURI: 'invalid/id07.xml']
		raise: self parserExceptions