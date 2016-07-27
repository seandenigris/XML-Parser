tests - exception raising
testinvaliddtd01xml
	"Source file: sun/invalid/dtd01.xml"

	(self isSkippableTest: #testinvaliddtd01xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvaliddtd01xml
				documentURI: 'invalid/dtd01.xml']
		raise: self parserExceptions