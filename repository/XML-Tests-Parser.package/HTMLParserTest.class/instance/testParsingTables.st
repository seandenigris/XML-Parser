tests
testParsingTables
	| document tables trs tds |

	document := HTMLParser parse: '<table><tr><td>one<td>two<tr><td>three<table><tr><td>four'.
	self assert:
		(document allElements asArray collect: [:each | each name]) =
			#('html' 'body' 'table' 'tr' 'td' 'td' 'tr' 'td' 'table' 'tr' 'td').

	tables := document allElementsNamed: 'table'.
	self
		assert: tables first elements size = 2;
		assert: tables second elements size = 1.
	tables do: [:each | self assert: (each elements allSatisfy: [:element | element isNamed: 'tr'])].

	trs := document allElementsNamed: 'tr'.
	self
		assert: trs first elements size = 2;
		assert: trs second elements size = 1;
		assert: trs third elements size = 1.
	trs do: [:each | self assert: (each elements allSatisfy: [:element | element isNamed: 'td'])].

	tds := document allElementsNamed: 'td'.
	self
		assert: tds first contentString = 'one';
		assert: tds second contentString = 'two';
		assert: tds third contentString = 'three four';
		assert: (tds third nodes second isNamed: 'table').