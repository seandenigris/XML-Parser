removing
removeAll
	self ifEmpty: [^ self].
	self copy do: [:each | self with: [self removeFirst] remove: each]