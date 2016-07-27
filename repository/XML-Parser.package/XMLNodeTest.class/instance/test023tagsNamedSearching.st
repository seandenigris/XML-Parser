tests
test023tagsNamedSearching
	| node elements |

	node := XMLMockNodeWithElements new.
	elements := self newElementsNamed: #('foo' 'bar' 'prefix:foo' 'bar' 'prefix:bar' 'baz').
	node addNodes: (elements first: 2).
	node nodes first addNodes: (elements copyFrom: 3 to: 4).
	node nodes second addNodes: (elements copyFrom: 5 to: 6).
	self
		should: [:block | node tagsNamed: 'absent' do: block] enumerate: #();
		should: [:block | node tagsNamedAny: #('absent') do: block] enumerate: #();
		should: [:block | node elementsAt: 'absent' do: block] enumerate: #().

	self
		should: [:block | node tagsNamed: 'foo' do: block]
		enumerate: (Array with: elements first with: elements third).
	self
		should: [:block | node tagsNamed: 'prefix:foo' do: block]
		enumerate: (Array with: elements third).
	self
		should: [:block | node firstElement elementsAt: 'foo' do: block]
		enumerate: (Array with: elements third).
	self
		should: [:block | node tagsNamedAny: #('foo' 'prefix:bar') do: block]
		enumerate: (Array with: elements first with: elements third with: elements fifth)