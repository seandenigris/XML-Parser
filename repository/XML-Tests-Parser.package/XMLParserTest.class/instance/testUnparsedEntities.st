tests
testUnparsedEntities
	| document |

	document := XMLDOMParser parse: '
		<!DOCTYPE root [
			<!NOTATION note PUBLIC "-//ext//note//EN">
			<!ENTITY unparsedEntity SYSTEM "note.txt" NDATA note>
		]>
		<root notation=&unparsedEntity; />'.
	self assert: (document root attributeAt: 'notation') = 'note'.
	self
		should: [XMLDOMParser parse: '<root attr=&undeclaredUnparsedEntity;/>']
		raise: XMLValidationException.