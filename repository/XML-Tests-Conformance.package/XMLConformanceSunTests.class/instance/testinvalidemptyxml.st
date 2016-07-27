tests - exception raising
testinvalidemptyxml
	"Source file: sun/invalid/empty.xml"

	(self isSkippableTest: #testinvalidemptyxml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidemptyxml
				documentURI: 'invalid/empty.xml']
		raise: self parserExceptions