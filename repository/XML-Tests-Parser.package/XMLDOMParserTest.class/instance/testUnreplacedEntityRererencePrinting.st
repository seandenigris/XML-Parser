tests
testUnreplacedEntityRererencePrinting
	| xml |

	xml :=
		'<one two="&quot;&three;&quot;">',
		'&lt;four five=&#34;&amp;six;&#34;/&gt;',
		'</one>'.
	self assert:
		((XMLDOMParser on: xml)
			isValidating: false;
			replacesContentEntityReferences: false;
			parseDocument) printString = xml.