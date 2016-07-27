tests
testEntityExternalResolution
	| xml entities |

	xml := '
		<!DOCTYPE test [
			<!ENTITY % extern SYSTEM "/base/extern.ent">
			%extern;
			%extern2;
			%extern3;
		]>
		<test>&extern4;</test>'.
	entities :=
		Array
			with: '/base/extern.ent' -> '<!ENTITY % extern2 SYSTEM "sub/extern2.ent">'
			with: '/base/sub/extern2.ent' -> '<!ENTITY % extern3 SYSTEM "./extern3.ent">'
			with: '/base/sub/extern3.ent' -> '<!ENTITY extern4 "test">'.
	1 to: entities size - 1 do: [:i |
		self
			should: [
				(SAXHandler on: xml)
					externalEntityResolver:
						(DTDPluggableExternalEntityResolver externalEntities:
							(entities copyFrom: 1 to: i));
					resolvesExternalEntities: true;
					parseDocument]
			raise: XMLParserException].
	self
		should: [
			(SAXHandler on: xml)
				externalEntityResolver:
					(DTDPluggableExternalEntityResolver externalEntities: entities);
				resolvesExternalEntities: false;
				parseDocument]
		raise: XMLParserException.
	self
		shouldnt: [
			(SAXHandler on: xml)
				externalEntityResolver:
					(DTDPluggableExternalEntityResolver externalEntities: entities);
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLParserException.