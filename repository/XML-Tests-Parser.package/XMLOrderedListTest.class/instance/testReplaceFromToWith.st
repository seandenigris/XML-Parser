tests
testReplaceFromToWith
	| list |

	1 to: self listElements size do: [:start |
		start to: self listElements size do: [:stop |
			list := self listClass new: self listElements size withAll: self absentElement.
			self	 assert:
				(list
					replaceFrom: start
					to: stop
					with: (self listElements allButFirst: start - 1)) == list.

			1 to: start - 1 do: [:i | self assert: (list at: i) = self absentElement].
			start to: stop do: [:i | self assert: (list at: i) = (self listWithElements at: i)].
			stop + 1 to: list size do: [:i | self assert: (list at: i) = self absentElement].

			self supportsAtPutOnePastEnd
				ifFalse: [
					self
						should: [
							self emptyList
								replaceFrom: start
								to: stop
								with: self listElements]
						raise: Error]]].