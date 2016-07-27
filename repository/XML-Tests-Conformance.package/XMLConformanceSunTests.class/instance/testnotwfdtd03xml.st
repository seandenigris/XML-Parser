tests - exception raising
testnotwfdtd03xml
	"Source file: sun/not-wf/dtd03.xml"

	self
		should: [
			self
				parse: self class sourcenotwfdtd03xml
				documentURI: 'not-wf/dtd03.xml']
		raise: self exceptionClass