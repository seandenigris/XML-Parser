tests
testDoWithIndex
	| list enumerated |

	list := self listWithElements.
	enumerated := OrderedCollection new.
	list withIndexDo: [:each :i | enumerated addLast: each -> i].
	self assert:
		enumerated =
			(self listElements withIndexCollect: [:each : i | each -> i ])
				asOrderedCollection.