tests
testElementMixedContentDeclaration
	| dtd |

	dtd := '<!DOCTYPE root [
		<!ELEMENT root (#PCDATA | one | two | three)*>
		<!ELEMENT two (#PCDATA)>
		<!ELEMENT three (#PCDATA)*>]>'.
	self
		shouldnt: [
			XMLDOMParser parse:
				dtd, '<root>text<one/><two><![CDATA[text]]></two></root>']
		raise: XMLValidationException.
	self
		shouldnt: [XMLDOMParser parse: dtd, '<root><three>text<!--comment--></three></root>']
		raise: XMLValidationException.
	self
		should: [XMLDOMParser parse: dtd, '<root><four/></root>']
		raise: XMLValidationException.
	self
		should: [XMLDOMParser parse: dtd, '<root><two><three/></two></root>']
		raise: XMLValidationException.
	self
		should: [
			XMLDOMParser parse: "missing *"
				'<!DOCTYPE root [<!ELEMENT root (#PCDATA|one)>]><root/>']
		raise: XMLValidationException.
	'+*?,' do: [:each |
		self
			should: [
				XMLDOMParser parse:
					'<!DOCTYPE root [<!ELEMENT two (#PCDATA', each asString, ')>]><root/>']
			raise: XMLValidationException].