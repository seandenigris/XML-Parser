accessing
elementCache
	^ elementCache ifNil: [elementCache := XMLElementCache new]