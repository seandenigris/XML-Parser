tests - exception raising
testinvalidoptional07xml
	"Source file: sun/invalid/optional07.xml"

	(self isSkippableTest: #testinvalidoptional07xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidoptional07xml
				documentURI: 'invalid/optional07.xml']
		raise: self parserExceptions