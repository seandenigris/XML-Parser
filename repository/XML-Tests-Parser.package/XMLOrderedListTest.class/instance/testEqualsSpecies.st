tests
testEqualsSpecies
	| emptySpeciesList speciesListWithSingleElement speciesListWithElements |

	emptySpeciesList := self listSpecies new.
	speciesListWithSingleElement := self listSpecies with: self singleElement.
	speciesListWithElements := self listSpecies newFrom: self listElements.
	self
		assertList: self emptyList equals: emptySpeciesList;
		assertList: self listWithSingleElement equals: speciesListWithSingleElement;
		assertList: self listWithElements equals: speciesListWithElements;
		denyList: self emptyList equals: speciesListWithSingleElement;
		denyList: self emptyList equals: speciesListWithElements;
		denyList: self listWithSingleElement equals: emptySpeciesList;
		denyList: self listWithSingleElement equals: speciesListWithElements;
		denyList: self listWithElements equals: emptySpeciesList;
		denyList: self listWithElements equals: speciesListWithSingleElement.