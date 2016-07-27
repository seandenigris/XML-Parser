initialization
setAttributeNodes: anAttributeList
	(attributes := anAttributeList) parent: self.
	attributes do: [:each | each parent: self]