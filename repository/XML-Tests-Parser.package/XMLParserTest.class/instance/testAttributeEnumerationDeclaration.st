tests
testAttributeEnumerationDeclaration
	| dtd |

	dtd := '<!DOCTYPE root [
		<!ATTLIST root number ( one | two | three) #IMPLIED >
		<!NOTATION txtFile PUBLIC "//file.txt//">
		<!NOTATION confFile PUBLIC "//file.conf//">
		<!ATTLIST root note NOTATION (txtFile | confFile ) #IMPLIED>]>'.
	self
		shouldnt: [XMLDOMParser parse: dtd, '<root number="two" note="txtFile"/>']
		raise: XMLValidationException.
	self
		should: [XMLDOMParser parse: dtd, '<root number="four"/>']
		raise: XMLValidationException.
	self
		should: [XMLDOMParser parse: dtd, '<root note="htmlFile" />']
		raise: XMLValidationException.