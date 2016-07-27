tests - exception raising
testnotwfattlist06xml
	"Source file: sun/not-wf/attlist06.xml"

	self
		should: [
			self
				parse: self class sourcenotwfattlist06xml
				documentURI: 'not-wf/attlist06.xml']
		raise: self parserExceptions