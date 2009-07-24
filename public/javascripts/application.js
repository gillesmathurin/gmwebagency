// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

var preloadFlag = false;
function preloadImages() {
	if (document.images) {
		bk_menuon = newImage("/images/bk_menuon.gif");
		preloadFlag = true;
	}
}
