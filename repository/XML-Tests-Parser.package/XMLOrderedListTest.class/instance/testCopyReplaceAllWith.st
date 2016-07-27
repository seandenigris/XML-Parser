tests
testCopyReplaceAllWith
	| list |

	list := self listClass newFrom: self listElements, self listElements.
	1 to: self listElements size do: [:i | | replacedElements |
		replacedElements := self listElementsLast: i.
		self
			assertList:
				(list
					copyReplaceAll: replacedElements
					with: (replacedElements collect: [:each | self changeElement: each]))
			copiedFrom: list
			equals: 
				(self listClass newFrom:
					((self listElements, self listElements) 
						copyReplaceAll: replacedElements
						with: (replacedElements collect: [:each | self changeElement: each]))).
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