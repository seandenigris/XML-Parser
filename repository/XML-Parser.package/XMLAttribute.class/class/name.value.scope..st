instance creation
name: aName value: aValue scope: aScope
	^ self new
		setScope: aScope;
		name: aName value: aValue