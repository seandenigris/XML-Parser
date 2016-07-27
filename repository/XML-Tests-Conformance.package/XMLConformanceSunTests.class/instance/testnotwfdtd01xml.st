tests - exception raising
testnotwfdtd01xml
	"Source file: sun/not-wf/dtd01.xml"

	self
		should: [
			self
				parse: self class sourcenotwfdtd01xml
				documentURI: 'not-wf/dtd01.xml']
		raise: self parserExceptions