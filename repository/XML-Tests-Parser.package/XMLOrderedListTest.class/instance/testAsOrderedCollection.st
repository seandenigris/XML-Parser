tests
testAsOrderedCollection
	| list |

	list := self listWithElements.
	self
		assert: self emptyList asOrderedCollection = OrderedCollection new;
		assert: list asOrderedCollection = self listElements asOrderedCollection;
		deny: list asOrderedCollection == list collection.