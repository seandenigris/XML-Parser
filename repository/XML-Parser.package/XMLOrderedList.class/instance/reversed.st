converting
reversed
	| reversed |

	reversed := self species new: self size.
	self reverseDo: [:each | reversed addLast: each].
	^ reversed.
