enumerating
elementsDo: aBlock
	self elements do: [:each | aBlock value: each]