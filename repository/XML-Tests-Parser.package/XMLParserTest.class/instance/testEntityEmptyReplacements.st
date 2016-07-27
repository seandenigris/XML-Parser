tests
testEntityEmptyReplacements
	| xml document |

	xml := '
	<?xml version="1.0"?>
	<!DOCTYPE entities [
		<!ENTITY % inner "">
		%inner;
		<!ENTITY % outer ''%inner;''>
		%outer;
		<!ENTITY inner  "%outer;"> 
		<!ENTITY outer ''&inner;''>]>
	<entities one="&outer;" two="&inner;" three=''&outer;'' four=''&inner;''>&outer;&inner;</entities>'.

	self
		shouldnt: [document := XMLDOMParser parse: xml]
		raise: XMLWellFormednessException.
	self
		assert: (document root attributeAt: 'one') isEmpty;
		assert: (document root attributeAt: 'two') isEmpty;
		assert: (document root attributeAt: 'three') isEmpty;
		assert: (document root attributeAt: 'four') isEmpty;
		assert: document root contentString isEmpty.