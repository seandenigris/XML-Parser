tests - exception raising
testnotwfattlist04xml
	"Source file: sun/not-wf/attlist04.xml"

	self
		should: [
			self
				parse: self class sourcenotwfattlist04xml
				documentURI: 'not-wf/attlist04.xml']
		raise: self exceptionClass