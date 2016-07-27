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
		self
			assertList:
				(list
					copyReplaceAll: (Array with: self absentElement)
					with: (Array with: self newElement))
			copiedFrom: list
			equals: list.	
		self
			assertList: (list copyReplaceAll: #() with: (Array with: self newElement))
			copiedFrom: list
			equals: list.
		self
			assertList: (list copyReplaceAll: (self listElements copyWith: self absentElement) with: #())
			copiedFrom: list
			equals: list].