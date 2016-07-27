tests - exception raising
testnotwfattlist08xml
	"Source file: sun/not-wf/attlist08.xml"

	self
		should: [
			self
				parse: self class sourcenotwfattlist08xml
				documentURI: 'not-wf/attlist08.xml']
		raise: self exceptionClass