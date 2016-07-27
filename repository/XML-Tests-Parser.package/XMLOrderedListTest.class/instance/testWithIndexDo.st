tests
testWithIndexDo
	| enumerated |

	enumerated := OrderedCollection new.
	self listWithElements withIndexDo: [:each :i | enumerated addLast: each -> i].
	self assert:
		enumerated =
			(self listElements withIndexCollect: [:each : i | each -> i ]) asOrderedCollection.