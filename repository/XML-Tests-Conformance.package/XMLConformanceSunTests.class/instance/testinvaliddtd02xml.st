tests - exception raising
testinvaliddtd02xml
	"Source file: sun/invalid/dtd02.xml"

	(self isSkippableTest: #testinvaliddtd02xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvaliddtd02xml
				documentURI: 'invalid/dtd02.xml']
		raise: self parserExceptions