tests - exception raising
testinvaliddtd06xml
	"Source file: sun/invalid/dtd06.xml"

	(self isSkippableTest: #testinvaliddtd06xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvaliddtd06xml
				documentURI: 'invalid/dtd06.xml']
		raise: self parserExceptions