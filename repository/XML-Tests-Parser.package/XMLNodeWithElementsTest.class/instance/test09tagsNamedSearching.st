tests
test09tagsNamedSearching
	| node elements |

	node := self nodeClass new.
	elements := self newElementsNamed: #('foo' 'bar' 'prefix:foo' 'bar' 'prefix:bar' 'baz').
	node addNodes: (elements first: 2).
	node nodes first addNodes: (elements copyFrom: 3 to: 4).
	node nodes second addNodes: (elements copyFrom: 5 to: 6).
	self
		should: [:block | node allElementsNamed: 'absent' do: block] enumerate: #();
		should: [:block | node elementsAt: 'absent' do: block] enumerate: #().

	self
		should: [:block | node allElementsNamed: 'foo' do: block]
		enumerate: (Array with: elements first with: elements third).
	self
		should: [:block | node allElementsNamed: 'prefix:foo' do: block]
		enumerate: (Array with: elements third).
	self
		should: [:block | node firstElement elementsAt: 'foo' do: block]
		enumerate: (Array with: elements third).