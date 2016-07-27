tests
testUnparsedEntitiesUndeclaredNotations
	| xml |

	xml := '
		<!DOCTYPE root [
			<!ENTITY unparsedEntity SYSTEM "note.txt" NDATA note>
		]><root/>'.
	self
		should: [SAXHandler parse: xml]
		raise: XMLValidationException.
	self
		shouldnt: [
			SAXHandler
				parse: xml
				usingNamespaces: true
				validation: false]
		raise: XMLValidationException.