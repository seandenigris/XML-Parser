tests
test082tagsNamedSearching
	| node elements |

	node := XMLNodeWithElements new.
	elements := self newElementsNamed: #(foo bar prefix:foo bar prefix:bar baz).
	node addNodes: (elements first: 2).
	node nodes first addNodes: (elements copyFrom: 3 to: 4).
	node nodes second addNodes: (elements copyFrom: 5 to: 6).
	self
		should: [:block | node tagsNamed: #absent do: block] enumerate: #();
		should: [:block | node elementsAt: #absent do: block] enumerate: #();
		should: [:block | node tagsNamed: #absent childrenDoAndRecurse: block] enumerate: #();
		should: [:block | node tagsNamed: #absent contentsDo: block] enumerate: #();
		should: [:block | node tagsNamed: #foo contentsDo: block] enumerate: #().

	self
		should: [:block | node tagsNamed: #foo do: block]
		enumerate: (Array with: elements first with: elements third).
	self
		should: [:block | node tagsNamed: 'prefix:foo' do: block]
		enumerate: (Array with: elements third).
	self
		should: [:block | node topElement elementsAt: #foo do: block]
		enumerate: (Array with: elements third).
	self
		should: [:block | node tagsNamed: #bar childrenDoAndRecurse: block]
		enumerate: (Array with: elements fourth with: elements second with: elements fifth).

	elements first
		addContent: 'testing 1';
		addNode: XMLNode new; "Intersperse between string nodes"
		addContent: 'testing 2'.
	elements third addContent: 'testing'.
	self
		should: [:block | node tagsNamed: #foo contentsDo: block]
		enumerate: elements first contents, elements third contents.