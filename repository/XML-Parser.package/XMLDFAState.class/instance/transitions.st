accessing
transitions
	^ transitions
		ifNil: [
			transitions := Set new.
			self initializeDFAStateTransitions.
			transitions].