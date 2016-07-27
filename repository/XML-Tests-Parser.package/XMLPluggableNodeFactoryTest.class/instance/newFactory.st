instance creation
newFactory
	^ self factoryClass new
		documentClass: self documentClass;
		elementClass: self elementClass;
		stringClass: self stringClass;
		cdataClass: self cdataClass;
		commentClass: self commentClass;
		piClass: self piClass