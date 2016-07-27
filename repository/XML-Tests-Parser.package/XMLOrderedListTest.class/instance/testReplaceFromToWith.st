tests
testReplaceFromToWith
	| list |

	1 to: self listElements size do: [:start |
		start to: self listElements size do: [:stop |
			list := self listWithElements.
			self assert:
				(list
					replaceFrom: start
					to: stop
					with: (self changedListElements allButFirst: start - 1)) == list.

			1 to: start - 1 do: [:i | self assert: (list at: i) = (self listElements at: i)].
			start to: stop do: [:i | self assert: (list at: i) = (self changedListElements at: i)].
			stop + 1 to: list size do: [:i | self assert: (list at: i) = (self listElements at: i)].

			start > 1
				ifTrue: [
					self
						should: [
							self emptyList
								replaceFrom: start
								to: stop
								with: self listElements]
						raise: Error]
				ifFalse: [
					self assert:
						(self emptyList
							replaceFrom: start
							to: stop
							with: self listElements) =
								(self listClass newFrom:
									(self listElementsFirst: (stop - start) + 1))]]].