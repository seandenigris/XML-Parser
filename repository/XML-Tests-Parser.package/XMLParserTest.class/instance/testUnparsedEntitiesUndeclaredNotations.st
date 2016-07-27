tests
testUnparsedEntitiesUndeclaredNotations
	| beforeNotation afterNotation |

	beforeNotation := '
		<!DOCTYPE entity [
			<!ELEMENT entity EMPTY>
			<!ATTLIST entity name ENTITY #REQUIRED>
			<!ENTITY notationEntity SYSTEM "note.txt" NDATA note>'.
	afterNotation := ']><entity name="notationEntity"/>'.
	self
		should: [SAXHandler parse: beforeNotation, afterNotation]
		raise: XMLValidationException.
	self
		shouldnt: [
			SAXHandler
				parse: beforeNotation, afterNotation
				usingNamespaces: true
				validation: false]
		raise: XMLValidationException.
	self
		shouldnt: [
			SAXHandler parse:
				beforeNotation, '<!NOTATION note SYSTEM "note.txt">', afterNotation]
		raise: XMLValidationException.