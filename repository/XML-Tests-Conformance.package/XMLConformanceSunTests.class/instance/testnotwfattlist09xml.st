tests - exception raising
testnotwfattlist09xml
	"Source file: sun/not-wf/attlist09.xml"

	self
		should: [
			self
				parse: self class sourcenotwfattlist09xml
				documentURI: 'not-wf/attlist09.xml']
		raise: self exceptionClass