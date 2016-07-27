tests
testAttributeEntityDeclaration
	| dtd |

	dtd := '<!DOCTYPE root [
		<!ENTITY firstEntity SYSTEM "first.txt" NDATA first>
		<!ENTITY secondEntity SYSTEM "second.txt" NDATA second>
		<!ATTLIST root
			unparsedEntity ENTITY #IMPLIED
			unparsedEntities ENTITIES #IMPLIED>]>'.
	self
		shouldnt: [
			SAXHandler parse:
				dtd, '<root unparsedEntity="firstEntity"  unparsedEntities="firstEntity  secondEntity"/> ']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<root unparsedEntity="thirdEntity"/>']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<root unparsedEntity="secondEntity thirdEntity"/>']
		raise: XMLValidationException.