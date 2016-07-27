tests
testIncompleteEntityReferences
	#('<!DOCTYPE test [
			<!ENTITY % entity "<!ELEMENT test EMPTY>">
			%]><test/>'
		'<!DOCTYPE test [
			<!ENTITY % entity "<!ELEMENT test EMPTY>">
			%;]><test/>'
		'<!DOCTYPE test [
			<!ENTITY % entity "<!ELEMENT test EMPTY>">
			%entity]><test/>'
		'<test>&</test>'
		'<test>&test</test>'
		'<test>&;</test>')
		do: [:each | 
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException.
			self
				should: [
					(SAXHandler on: each)
						replacesContentEntityReferences: false;
						parseDocument]
				raise: XMLWellFormednessException]