initialization
setDriver: aDriver stream: aStream
	super setDriver: aDriver stream: aStream.

	activeEntities := OrderedCollection new: self maxEntityReplacementDepth.