utility
reorderTests
	self reorderTests:
		((self selectors select: [:each | each asString beginsWith: 'test'])
			sortBy: [:a : b | (a asString compare: b asString) < 3]) asArray