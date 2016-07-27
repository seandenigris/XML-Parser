tests
testCopyReplaceAllWith
	| list |

	list := self listClass newFrom: self listElements, self listElements.
	1 to: self listElements size do: [:i |
		self
			assertList:
				(list
					copyReplaceAll: (self listElements last: i)
					with: ((self listElements last: i) collect: [:each | each asUppercase]))
			copiedFrom: list
			equals: 
				(self listClass newFrom:
					((self listElements, self listElements) 
						copyReplaceAll: (self listElements last: i)
						with: ((self listElements last: i) collect: [:each | each asUppercase]))).
		self assert:
			(self emptyList
				copyReplaceAll: (self listElements last: i)
				with: (self listElements last: i)) = self emptyList].