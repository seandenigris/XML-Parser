private
inheritMappingsFrom: aScope
	self recurse: [:each | each scope inheritMappingsFrom: aScope]