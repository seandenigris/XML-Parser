assertions
assertElement: anElement hasAttribute: anAttributeName equalTo: anAttributeValue
	self
		assert: (anElement includesAttribute: anAttributeName);
		assert: (anElement attributeAt: anAttributeName) = anAttributeValue;
		assert: (anElement @ anAttributeName) = anAttributeValue;
		assert: (anElement attributeNodeAt: anAttributeName) notNil;
		assert: (anElement attributeNodeAt: anAttributeName) value = anAttributeValue