running
tearDown
	self elementClassNames do: [:each | (self elementClassAt: each) removeFromSystem]