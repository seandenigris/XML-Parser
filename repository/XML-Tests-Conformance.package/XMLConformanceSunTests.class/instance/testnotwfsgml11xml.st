tests - exception raising
testnotwfsgml11xml
	"Source file: sun/not-wf/sgml11.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsgml11xml
				documentURI: 'not-wf/sgml11.xml']
		raise: self exceptionClass