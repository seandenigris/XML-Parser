tests - exception raising
testinvaliddtd03xml
	"Source file: sun/invalid/dtd03.xml"

	(self isSkippableTest: #testinvaliddtd03xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvaliddtd03xml
				documentURI: 'invalid/dtd03.xml']
		raise: self parserExceptions