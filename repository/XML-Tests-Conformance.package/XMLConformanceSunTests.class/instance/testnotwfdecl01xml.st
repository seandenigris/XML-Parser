tests - exception raising
testnotwfdecl01xml
	"Source file: sun/not-wf/decl01.xml"

	(self isSkippableTest: #testnotwfdecl01xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfdecl01xml
				documentURI: 'not-wf/decl01.xml']
		raise: self parserExceptions