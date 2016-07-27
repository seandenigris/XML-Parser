tests
testAttributeEnumerationDeclaration
	| dtd |

	dtd := '<!DOCTYPE root [
		<!NOTATION txtFile PUBLIC "//file.txt//">
		<!NOTATION confFile PUBLIC "//file.conf//">
		<!ELEMENT root EMPTY>
		<!ATTLIST root
			number ( one | two | three) #IMPLIED
			note NOTATION (txtFile | confFile ) #IMPLIED>]>'.
	self
		shouldnt: [SAXHandler parse: dtd, '<root number="two" note="txtFile"/>']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<root number="four"/>']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<root note="htmlFile" />']
		raise: XMLValidationException.