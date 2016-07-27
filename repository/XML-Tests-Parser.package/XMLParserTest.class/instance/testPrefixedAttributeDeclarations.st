tests
testPrefixedAttributeDeclarations
	| dtd |

	dtd := '<!DOCTYPE root [
		<!ELEMENT root EMPTY>
		<!ATTLIST root
			prefix:name CDATA #IMPLIED
			unprefixed CDATA #IMPLIED>]>'.
	self
		shouldnt: [
			SAXHandler parse:
				dtd, '<root xmlns:prefix="ns" prefix:name="value" unprefixed="value"/>']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<root name="value" unprefixed="value" />']
		raise: XMLValidationException.
	self
		should: [
			SAXHandler parse:
				dtd, '<root xmlns:prefix="ns" prefix:name="value" prefix:unprefixed="value"/>']
		raise: XMLValidationException.