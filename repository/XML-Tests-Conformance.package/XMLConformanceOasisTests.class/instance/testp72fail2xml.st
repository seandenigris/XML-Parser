tests - exception raising
testp72fail2xml
	"Source file: oasis/p72fail2.xml"

	(self isSkippableTest: #testp72fail2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep72fail2xml
				documentURI: 'p72fail2.xml']
		raise: self parserExceptions