tests
testCopyReplaceFromToWith
	| list emptyList |

	list := self listWithElements.
	emptyList := self emptyList.
	-1 to: list size + 1 do: [:start |
		start to: list size + 1 do: [:stop |
			self
				assertList: (list copyReplaceFrom: start to: stop with: self listElements reversed)
				copiedFrom: list
				equals:
					(self listClass newFrom:
						(self listElements first: ((start - 1 min: list size) max: 0)),
						(self listElements reversed),
						(start < 1
							ifTrue: [self listElements]
							ifFalse: [self listElements last: (list size - stop max: 0)])).
			self
				assertList: (emptyList copyReplaceFrom: start to: stop with: self listElements)
				copiedFrom: emptyList
				equals: self listWithElements]].