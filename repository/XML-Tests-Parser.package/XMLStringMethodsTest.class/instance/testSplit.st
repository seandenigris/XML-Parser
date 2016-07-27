tests
testSplit

	self
		assert: ($: xmlParserSplit: '') = (OrderedCollection with: '');
		assert: ($: xmlParserSplit: 'abc') = (OrderedCollection with: 'abc');
		assert: ($: xmlParserSplit: ':') = #('' '') asOrderedCollection;
		assert: ($: xmlParserSplit: '::') = #('' '' '') asOrderedCollection;
		assert: ($: xmlParserSplit: 'a:bc:') = #('a' 'bc' '') asOrderedCollection;
		assert: ($: xmlParserSplit: ':ab:c:') = #('' 'ab' 'c' '') asOrderedCollection;
		assert: ($: xmlParserSplit: 'a:bc:') = #('a' 'bc' '') asOrderedCollection;
		assert: ($: xmlParserSplit: 'ab::cd::ef') = #('ab'  '' 'cd' '' 'ef') asOrderedCollection;
		assert: ($: xmlParserSplit: '::ab:::cd:::ef::') = #('' '' 'ab'  '' '' 'cd' '' '' 'ef' '' '') asOrderedCollection.