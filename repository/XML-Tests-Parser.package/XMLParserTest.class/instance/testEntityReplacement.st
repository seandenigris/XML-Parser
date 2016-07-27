tests
testEntityReplacement
	| document |

	document := XMLDOMParser parse: '
		<!DOCTYPE root [
			<!ENTITY % partialDeclaration "name1 &#39;replacement1&#39;">
			<!ENTITY % name1Declaration "<!ENTITY %partialDeclaration;>">
			%name1Declaration;
			<!ENTITY name2 "replacement2 &name1;" >
			<!ENTITY name3 "replacement3 &name2;" >
			<!ENTITY predefined "&amp;&gt;&lt;&quot;&apos;" >
			<!ENTITY quotes "&#34;&#39;">
		]>
		<root name="&quotes;">&name1; &name2; &name3; ',
		'&predefined; &amp;&gt;&lt;&quot;&apos; %name1Declaration;</root>'.
	self assert:
		document root contentString =
			('replacement1 ',
			'replacement2 replacement1 ',
			'replacement3 replacement2 replacement1 ',
			'&><"'' &><"'' %name1Declaration;').
	self assert: (document root attributeAt: 'name') = (String with: $" with: $').