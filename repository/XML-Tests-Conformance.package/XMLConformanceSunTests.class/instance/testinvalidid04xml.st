tests - exception raising
testinvalidid04xml
	"Source file: sun/invalid/id04.xml"

	(self isSkippableTest: #testinvalidid04xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidid04xml
				documentURI: 'invalid/id04.xml']
		raise: self parserExceptions