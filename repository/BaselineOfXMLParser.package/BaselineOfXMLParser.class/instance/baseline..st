baselines
baseline: spec
	<baseline>

	spec
		for: #common
		do: [ 
			spec
				description: 'Migrated to GitHub';
				author: 'SeanDeNigris';
				timestamp: '07/27/2016'.

			spec
				project: 'XMLWriter'
				with: [
					spec 
						className: 'ConfigurationOfXMLWriter';
						versionString: #stable;
						loads: 'default'; 
						repository: 'http://www.smalltalkhub.com/mc/PharoExtras/XMLWriter/main'.].
			spec
				project: 'BitmapCharacterSet'
				with: [
					spec 
						className: 'ConfigurationOfBitmapCharacterSet';
						versionString: #stable;
						loads: 'Core'; 
						repository: 'http://www.smalltalkhub.com/mc/PharoExtras/BitmapCharacterSet/main'.].

			"#stable is fine, the public API doesn't change to backwards incompatible"
			spec
				project: 'OrderPreservingDictionary'
				with: [
					spec 
						className: 'ConfigurationOfOrderPreservingDictionary';
						versionString: #stable; 
						loads: 'Core'; 
						repository: 'http://smalltalkhub.com/mc/PharoExtras/OrderPreservingDictionary/main'].	

			spec 
				package: 'XML-Parser' 
				with: [spec requires: #('BitmapCharacterSet' 'OrderPreservingDictionary')].
			spec
				package: 'XML-Tests-Parser'
				with: [ spec requires: #('XML-Parser' 'XMLWriter') ].
			
			"Core was made to only load XMLParser, CoreWithWriting loads XMLParser and XMLWriter"
			spec
				group: 'default' with: #('Core' 'Tests');
				group: 'Core' with: #('XML-Parser');
				group: 'CoreWithWriting' with: #('XML-Parser' 'XMLWriter');
				group: 'Tests' with: #('XML-Tests-Parser') ].

	"load gemstone compatibility methods"
	spec
		for: #gemstone
		do: [
			spec
				package: 'XML-Parser'
				with: [ spec includes: 'XML-Parser-GemstoneCompatibility' ].
			spec
				package: 'XML-Parser-GemstoneCompatibility'
				with: [ spec requires: 'XML-Parser' ]. ].

	"load GT extension methods"
	spec
		for: #gt
		do: [
			spec "the extensions require XMLWriter"
				group: 'default' with: #('Core' 'Tests' 'XML-Parser-GTExtensions');
				group: 'CoreWithWriting' with: #('XML-Parser' 'XMLWriter' 'XML-Parser-GTExtensions').
			spec
				package: 'XML-Parser-GTExtensions'
				with: [ spec requires: 'XML-Parser' ]. ].