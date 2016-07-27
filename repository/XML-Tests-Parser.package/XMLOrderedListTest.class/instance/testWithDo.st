tests
testWithDo
	| list enumerated |

	list := self listWithElements.
	enumerated := OrderedCollection new.
	list with: (1 to: list size + 1) do: [:each :i | enumerated addLast: each -> i].
	self assert:
		enumerated =
			(self listElements with: (1 to: list size) collect: [:each : i | each -> i ])
				asOrderedCollection.

	enumerated removeAll.
	list with: (1 to: list size - 1) do: [:each :i | enumerated addLast: each -> i].
	self assert:
		enumerated =
			(self listElements allButLast
				with: (1 to: list size - 1) collect: [:each : i | each -> i ])
					asOrderedCollection.