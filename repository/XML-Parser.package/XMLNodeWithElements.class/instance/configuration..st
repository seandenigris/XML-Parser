accessing
configuration: aConfiguration
	configuration := aConfiguration.
	self hasElements
		ifTrue: [self elementsDo: [:each | each configuration: aConfiguration]]