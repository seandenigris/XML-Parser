tests
testParsingForms
	| document |

	document := HTMLParser parse: '<form><input><form><input>'.

	self assert:
		(document allElements asArray collect: [:each | each name]) =
			#('html' 'body' 'form' 'input' 'form' 'input').

	document allElementsNamed: 'form' do: [:each |
		self
			assert: each elements size = 1;
			assert: (each firstElement isNamed: 'input')].
	document allElementsNamed: 'input' do: [:each |
		self deny: each hasChildren].