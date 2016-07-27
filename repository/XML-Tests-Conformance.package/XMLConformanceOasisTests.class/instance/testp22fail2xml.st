tests - exception raising
testp22fail2xml
	"Source file: oasis/p22fail2.xml"

	(self isSkippableTest: #testp22fail2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep22fail2xml
				documentURI: 'p22fail2.xml']
		raise: self parserExceptions