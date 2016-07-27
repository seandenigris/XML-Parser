tests
testWithIndexDo
	| interval enumerated |

	interval := 1 to: self listElements size.
	enumerated := OrderedCollection new.
	self listWithElements withIndexDo: [:each :i | enumerated addLast: each -> i].
	self assert:
		enumerated =
			(self listElements with: interval collect: [:each : i | each -> i ]) asOrderedCollection.