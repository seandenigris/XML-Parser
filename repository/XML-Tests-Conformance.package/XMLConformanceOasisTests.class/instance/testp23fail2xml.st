tests - exception raising
testp23fail2xml
	"Source file: oasis/p23fail2.xml"

	(self isSkippableTest: #testp23fail2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep23fail2xml
				documentURI: 'p23fail2.xml']
		raise: self parserExceptions