tests
testRemoveIfAbsent
	| set |

	set := self setWithElements.
	self setElements do: [:each |
		self assert:
			(set
				remove: each
				ifAbsent: [self absentSetElement]) == each.
		self
			assert:
				(set
					remove: each
					ifAbsent: [self absentSetElement]) == self absentSetElement.
		self deny: (set includes: each).
		self
			should: [set remove: each]
			raise: Error].
	self assert: set isEmpty.