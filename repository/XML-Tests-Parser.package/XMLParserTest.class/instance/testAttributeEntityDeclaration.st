tests
testAttributeEntityDeclaration
	| dtd |

	dtd := '<!DOCTYPE root [
		<!ENTITY firstEntity SYSTEM "first.txt" NDATA first>
		<!ENTITY secondEntity SYSTEM "second.txt" NDATA second>
		<!ATTLIST root unparsedEntity ENTITY #IMPLIED>
		<!ATTLIST root unparsedEntities ENTITIES #IMPLIED>]>'.
	XMLDOMParser parse: dtd, '<root unparsedEntity="firstEntity"  unparsedEntities="firstEntity  secondEntity"/> '.
	self
		should: [XMLDOMParser parse: dtd, '<root unparsedEntity="thirdEntity"/>']
		raise: XMLValidationException.
	self
		should: [XMLDOMParser parse: dtd, '<root unparsedEntity="secondEntity thirdEntity"/>']
		raise: XMLValidationException.