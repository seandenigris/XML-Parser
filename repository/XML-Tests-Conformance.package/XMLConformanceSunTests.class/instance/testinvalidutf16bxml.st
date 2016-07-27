tests - exception raising
testinvalidutf16bxml
	"Source file: sun/invalid/utf16b.xml"

	(self isSkippableTest: #testinvalidutf16bxml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidutf16bxml
				documentURI: 'invalid/utf16b.xml']
		raise: self parserExceptions