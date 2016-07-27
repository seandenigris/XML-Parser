tests - exception raising
testinvalidoptional21xml
	"Source file: sun/invalid/optional21.xml"

	(self isSkippableTest: #testinvalidoptional21xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidoptional21xml
				documentURI: 'invalid/optional21.xml']
		raise: self parserExceptions