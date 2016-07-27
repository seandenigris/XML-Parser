tests
testUndeclaredEntitiesPreserved
	| xml parser document |

	xml := '<!DOCTYPE root [
		<!ENTITY unreferenced "%undeclaredOne;">
		%undeclaredOne;]>
		<root name="&#34;&undeclaredTwo;&#34;">&lt;&undeclaredThree;&gt;</root>'.
	(parser := XMLDOMParser on: xml)
		isValidating: false;
		preservesUndeclaredEntityReferences: true.
	document := parser parseDocument.

	self
		assert: document doctypeDeclaration nodes size = 1;
		assert: document doctypeDeclaration firstNode replacement = '%undeclaredOne;';
		assert: (document root attributeAt: 'name') = '"&undeclaredTwo;"';
		assert: (document root contentString) = '<&undeclaredThree;>'.