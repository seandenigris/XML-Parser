tests - exception raising
testinvalidattr07xml
	"Source file: sun/invalid/attr07.xml"

	(self isSkippableTest: #testinvalidattr07xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidattr07xml
				documentURI: 'invalid/attr07.xml']
		raise: self parserExceptions