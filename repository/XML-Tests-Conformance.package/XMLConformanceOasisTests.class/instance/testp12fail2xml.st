tests - exception raising
testp12fail2xml
	"Source file: oasis/p12fail2.xml"

	(self isSkippableTest: #testp12fail2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep12fail2xml
				documentURI: 'p12fail2.xml']
		raise: self parserExceptions