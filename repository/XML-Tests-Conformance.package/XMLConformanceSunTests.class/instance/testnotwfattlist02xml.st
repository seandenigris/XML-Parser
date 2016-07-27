tests - exception raising
testnotwfattlist02xml
	"Source file: sun/not-wf/attlist02.xml"

	self
		should: [
			self
				parse: self class sourcenotwfattlist02xml
				documentURI: 'not-wf/attlist02.xml']
		raise: self exceptionClass