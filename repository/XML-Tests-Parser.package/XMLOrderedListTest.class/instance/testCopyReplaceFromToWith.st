tests
testCopyReplaceFromToWith
	| list emptyList |

	list := self listWithElements.
	emptyList := self emptyList.
	-1 to: list size + 1 do: [:start |
		start to: list size + 1 do: [:stop | | minStart minStop |
			minStart := start max: 1.
			minStop := stop max: minStart - 1.
			self
				assertList: (list copyReplaceFrom: start to: stop with: self listElements reversed)
				copiedFrom: list
				equals:
					(self listClass newFrom:
						(self listElementsFirst: ((minStart - 1 min: list size) max: 0)),
						(self listElements reversed),
						(self listElementsLast: ((list size - minStop) max: 0))).
			self
				assertList: (emptyList copyReplaceFrom: start to: stop with: self listElements)
				copiedFrom: emptyList
				equals: self listWithElements]].