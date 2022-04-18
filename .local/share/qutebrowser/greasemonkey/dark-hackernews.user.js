// ==UserScript==
// @name          Dark Hackernews
// @namespace     http://userstyles.org
// @description	  A style that makes Hacker News dark. Opacity makes the orange and white parts pleasant. Also includes a nice vote arrow.
// @author        cygned
// @homepage      https://userstyles.org/styles/133890
// @include       http://news.ycombinator.com/*
// @include       https://news.ycombinator.com/*
// @include       http://*.news.ycombinator.com/*
// @include       https://*.news.ycombinator.com/*
// @run-at        document-end
// @version       0.20170910201446
// ==/UserScript==
(function() {var css = [
	"body, #hnmain {",
	"    background: #222;",
	"}",
	"",
	".comment * {",
	"    color: #aaa;",
	"}",
	"",
	"#hnmain a {",
	"    color: #888;",
	"}",
	"",
	"td[bgcolor=\"#ff6600\"] {",
	"    opacity: 0.5;",
	"}",
	"",
	"td[bgcolor=\"#ff6600\"] a {",
	"    color: #333 !important;",
	"}",
	"",
	"form {",
	"    opacity: 0.8;",
	"}",
	"",
	".votearrow {",
	"    background: none;",
	"    border-left: #aaa 2px solid;",
	"    border-top: #aaa 2px solid;",
	"    width: 5px;",
	"    height: 5px;",
	"    margin: 4px 6px;",
	"    padding: 0;",
	"    transform: rotate(45deg);",
	"}",
	"",
	".rotate180 {",
	"    transform: rotate(225deg);",
	"}"
].join("\n");
if (typeof GM_addStyle != "undefined") {
	GM_addStyle(css);
} else if (typeof PRO_addStyle != "undefined") {
	PRO_addStyle(css);
} else if (typeof addStyle != "undefined") {
	addStyle(css);
} else {
	var node = document.createElement("style");
	node.type = "text/css";
	node.appendChild(document.createTextNode(css));
	var heads = document.getElementsByTagName("head");
	if (heads.length > 0) {
		heads[0].appendChild(node);
	} else {
		// no head yet, stick it whereever
		document.documentElement.appendChild(node);
	}
}
})();
