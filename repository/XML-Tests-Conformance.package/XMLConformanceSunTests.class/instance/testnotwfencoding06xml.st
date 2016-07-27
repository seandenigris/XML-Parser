tests - exception raising
testnotwfencoding06xml
	"Source file: sun/not-wf/encoding06.xml"

	self
		should: [
			self
				parse: self class sourcenotwfencoding06xml
				documentURI: 'not-wf/encoding06.xml']
		raise: self exceptionClass