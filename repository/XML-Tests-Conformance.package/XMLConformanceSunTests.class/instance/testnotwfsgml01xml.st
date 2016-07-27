tests - exception raising
testnotwfsgml01xml
	"Source file: sun/not-wf/sgml01.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsgml01xml
				documentURI: 'not-wf/sgml01.xml']
		raise: self exceptionClass