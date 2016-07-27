tests - exception raising
testp02fail2xml
	"Source file: oasis/p02fail2.xml"

	(self isSkippableTest: #testp02fail2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep02fail2xml
				documentURI: 'p02fail2.xml']
		raise: self parserExceptions