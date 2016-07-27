accessing
transitions
	^ transitions
		ifNil: [
			transitions := OrderedCollection new.
			self initializeDFAStateTransitions.
			transitions].