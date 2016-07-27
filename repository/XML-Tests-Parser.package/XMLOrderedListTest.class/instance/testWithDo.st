tests
testWithDo
	| list enumerated |

	list := self listWithElements.
	enumerated := OrderedCollection new.
	list with: (1 to: list size + 1) do: [:each :i | enumerated addLast: each -> i].
	self assert:
		enumerated =
			(self listElements withIndexCollect: [:each : i | each -> i ])
				asOrderedCollection.

	enumerated removeAll.
	list with: (1 to: list size - 1) do: [:each :i | enumerated addLast: each -> i].
	self assert:
		enumerated =
			(self listElements allButLast
				withIndexCollect: [:each : i | each -> i ])
					asOrderedCollection.