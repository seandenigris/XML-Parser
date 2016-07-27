converting
reversed
	| reversed |

	reversed := self species new.
	self reverseDo: [:each | reversed addLast: each].
	^ reversed.
