tests
testWithCollect
	| interval |

	interval := 1 to: self listElements size.
	self assert:
		(self listWithElements with: interval collect: [:each :i | each -> i]) =
			(self listClass newFrom: (self listElements with: interval collect: [:each :i | each -> i])).