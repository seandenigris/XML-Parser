tests
testElementMixedContentDeclaration
	| dtd |

	dtd := '<!DOCTYPE root [
		<!ELEMENT root (#PCDATA | one | two | three)*>
		<!ELEMENT two (#PCDATA)>]>'.
	XMLDOMParser parse: dtd, '<root>text<one/><two>text</two></root>'.
	self
		should: [XMLDOMParser parse: dtd, '<root><five/></root>']
		raise: XMLValidationException.
	self
		should: [XMLDOMParser parse: dtd, '<root><two><three/></two></root>']
		raise: XMLValidationException.
	'+*?,' do: [:each |
		self
			should: [
				XMLDOMParser parse:
					'<!DOCTYPE root [<!ELEMENT two (#PCDATA', each asString, ')>]><root/>']
			raise: XMLValidationException].