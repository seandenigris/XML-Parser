tests - exception raising
testnotwfsgml07xml
	"Source file: sun/not-wf/sgml07.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsgml07xml
				documentURI: 'not-wf/sgml07.xml']
		raise: self exceptionClass