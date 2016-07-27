tests - exception raising
testnotwfsgml06xml
	"Source file: sun/not-wf/sgml06.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsgml06xml
				documentURI: 'not-wf/sgml06.xml']
		raise: self exceptionClass