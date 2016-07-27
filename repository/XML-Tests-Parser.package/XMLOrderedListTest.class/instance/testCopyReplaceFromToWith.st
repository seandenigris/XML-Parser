tests
testCopyReplaceFromToWith
	| list emptyList |

	list := self listWithElements.
	emptyList := self emptyList.
	-1 to: list size + 1 do: [:start |
		start to: list size + 1 do: [:stop |
			self
				assertList: (list copyReplaceFrom: start to: stop with: self changedListElements)
				copiedFrom: list
				equals:
					(self listClass newFrom:
						(self listElementsFirst: start - 1),
						(self changedListElements),
						(self listElementsLast: list size - stop)).
			self
				assertList: (emptyList copyReplaceFrom: start to: stop with: self listElements)
				copiedFrom: emptyList
				equals: self listWithElements]].