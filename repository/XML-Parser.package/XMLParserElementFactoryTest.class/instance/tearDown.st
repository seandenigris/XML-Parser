running
tearDown
	self elementClassNames do: [:each | XMLElement removeSubclass: each]