tests
testPairsDo
	| pairs |

	0 to: self listElements size do: [:i |
		pairs := OrderedCollection new.
		(self listClass newFrom: (self listElements allButLast: i))
			pairsDo: [:a :b | pairs addLast: a -> b].
		
		(self listElements allButLast: i) pairsDo: [:a :b |
			self assert: pairs removeFirst = (a -> b)].
		self assert: pairs isEmpty].