tests
testDetect
	| list |

	list := self listWithElements.
	self listElements do: [:element |
		self assert: (list detect: [:each | each = element]) = element].
	self assert: (list detect: [:each | each = self absentElement]) = self defaultValue.