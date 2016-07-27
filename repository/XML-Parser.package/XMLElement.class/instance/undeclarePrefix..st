namespaces
undeclarePrefix: aPrefix
	self namespaceScope unmapPrefix: aPrefix.
	self
		validateName;
		validateAttributes.