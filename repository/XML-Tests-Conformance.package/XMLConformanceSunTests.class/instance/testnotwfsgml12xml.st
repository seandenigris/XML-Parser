tests - exception raising
testnotwfsgml12xml
	"Source file: sun/not-wf/sgml12.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsgml12xml
				documentURI: 'not-wf/sgml12.xml']
		raise: self parserExceptions