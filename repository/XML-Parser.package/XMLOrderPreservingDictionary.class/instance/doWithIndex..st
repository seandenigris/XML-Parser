enumerating
doWithIndex: aTwoArgumentBlock
	| i |

	i := 1.
	self
		do: [:each | aTwoArgumentBlock value: each value: i]
		separatedBy: [i := i + 1].