private
rebuildElementCache
	"This method rebuilds the #elements and #elementsByName caches using #nodes. It is
	sent by #with:add: when an element node is added to #nodes anywhere but to its end
	and also changedChildElement: when the name or namespace informatin of a child
	element is changed.
	
	See #with:add: and #with:remove:"

	self elements removeAll.
	self elementsByName removeAll.

	self nodesDo: [:each | each isTag ifTrue: [self elementCacheAdd: each]].