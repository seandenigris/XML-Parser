tests - exception raising
testinvalidutf16lxml
	"Source file: sun/invalid/utf16l.xml"

	(self isSkippableTest: #testinvalidutf16lxml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidutf16lxml
				documentURI: 'invalid/utf16l.xml']
		raise: self parserExceptions