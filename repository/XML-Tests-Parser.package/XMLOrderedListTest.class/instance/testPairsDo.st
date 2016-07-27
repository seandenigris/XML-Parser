tests
testPairsDo
	| pairs |

	0 to: self listItems size do: [:i |
		pairs := OrderedCollection new.
		(self listClass newFrom: (self listItems allButLast: i))
			pairsDo: [:a :b | pairs addLast: a -> b].
		
		(self listItems allButLast: i) pairsDo: [:a :b |
			self assert: pairs removeFirst = (a -> b)].
		self assert: pairs isEmpty].