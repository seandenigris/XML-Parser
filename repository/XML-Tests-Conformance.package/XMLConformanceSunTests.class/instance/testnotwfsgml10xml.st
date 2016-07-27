tests - exception raising
testnotwfsgml10xml
	"Source file: sun/not-wf/sgml10.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsgml10xml
				documentURI: 'not-wf/sgml10.xml']
		raise: self parserExceptions