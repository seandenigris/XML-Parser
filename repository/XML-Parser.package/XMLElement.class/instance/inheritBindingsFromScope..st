private
inheritBindingsFromScope: aScope
	self recurse: [:each |
		each namespaceScope inheritBindingsFromScope: aScope]