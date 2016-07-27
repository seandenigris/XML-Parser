tests
testFindElementWithID
	| xml document idElement xmlIDElement |

	xml := '
		<!DOCTYPE a [
			<!ELEMENT a (
				b,
				c,
				d,
				e
			)>
			<!ELEMENT b EMPTY>
			<!ELEMENT c EMPTY>
			<!ELEMENT d EMPTY>
			<!ELEMENT e EMPTY>
			<!ATTLIST b id CDATA #REQUIRED>
			<!ATTLIST c id ID #REQUIRED>
			<!ATTLIST d xml:id ID #REQUIRED> ]>
		<a>
			<b id="one"/>
			<c id="one"/>
			<d xml:id="two"/>
			<e/>
		</a>'.

	document := XMLDOMParser parse: xml.
	idElement := document findElementNamed: 'c'.
	xmlIDElement := document findElementNamed: 'd'.
	self
		assert: (document findElementWithID: 'one') = idElement;
		assert: (idElement findElementWithID: 'one') = idElement;
		assert: (idElement nextElement findElementWithID: 'one') isNil;
		assert: (document findElementWithID: 'two') = xmlIDElement;
		assert: (xmlIDElement findElementWithID: 'two') = xmlIDElement;
		assert: (xmlIDElement nextElement findElementWithID: 'two') isNil;
		assert: (document findElementWithID: 'three') isNil.

	document root
		removeNode: idElement;
		removeNode: xmlIDElement.
	self
		assert: (document findElementWithID: 'one') isNil;
		assert: (idElement findElementWithID: 'one') isNil;
		assert: (document findElementWithID: 'two') isNil;
		assert: (xmlIDElement findElementWithID: 'two') isNil.

	document :=
		XMLDOMParser
			parse: xml
			usingNamespaces: true
			validation: false.
	self
		assert: (document findElementWithID: 'one') isNil;
		assert: (document findElementWithID: 'two') isNil.