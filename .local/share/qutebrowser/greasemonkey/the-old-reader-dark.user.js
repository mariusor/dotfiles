// ==UserScript==
// @name          The Old Reader Dark
// @namespace     http://userstyles.org
// @description	  The Old Reader Dark theme from Hauschild with some modifications:
// @author        Jérémie Bertrand
// @homepage      https://userstyles.org/styles/106898
// @include       http://theoldreader.com/*
// @include       https://theoldreader.com/*
// @include       http://*.theoldreader.com/*
// @include       https://*.theoldreader.com/*
// @run-at        document-end
// @version       0.20170213061143
// ==/UserScript==
(function() {var css = [
	"@namespace url(http://www.w3.org/1999/xhtml);",
	"/*header */",
	"    .navbar-fixed-top {background-color: #252525 !important;}",
	"    .navbar .nav li a {color: #ddd !important;}",
	"    .navbar .nav li a:hover {color: #26687f !important;}",
	"    .navbar .nav li.divider-vertical {background-color: #222 !important;}",
	"    .navbar-fixed-top {border-bottom-color: #000 !important;}",
	"    .form-search .btn {",
	"        background-color: transparent !important; ",
	"        background-image: url(\"http://theoldreader.com/assets/ico-search.png\") !important;",
	"        background-position: center center !important; ",
	"    }",
	"    .dropdown .open { background-color: #222 !important; }",
	"    .dropdown-menu > li > a:hover { color: #333 !important; }",
	"    ",
	"    /* text input (SEARCH) */",
	"    textarea, input[type=\"text\"], input[type=\"password\"], input[type=\"datetime\"], input[type=\"datetime-local\"], input[type=\"date\"], input[type=\"month\"], input[type=\"time\"], input[type=\"week\"], input[type=\"number\"], input[type=\"email\"], input[type=\"url\"], input[type=\"search\"], input[type=\"tel\"], input[type=\"color\"], .uneditable-input {",
	"        background-color: #444 !important; ",
	"        color: #fff !important;",
	"        border-bottom-color: #000 !important;",
	"        border-left-color: #000 !important;",
	"        border-top-color: #000 !important;",
	"        border-right-color: #000 !important;",
	"        box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset !important;",
	"    }",
	"    /* end text input (SEARCH) */",
	"/* end header */",
	"",
	"/* BOTH COLS */",
	"    body {background-color: #333 !important; color: #999999 !important; font-size: 16px !important;}",
	"    .well {background-color: #222 !important; border: 1px solid #222 !important;}",
	"    /*p {line-height:22px !important; margin-top: 5px !important; margin-bottom: 20px !important;}*/",
	"    .btn {",
	"        color: #ccc !important;",
	"        text-shadow: 0 1px 1px rgba(0, 0, 0, 0.75) !important;",
	"        background-color: #222 !important;",
	"        background-image: linear-gradient(to bottom, #444, #555) !important;",
	"        box-shadow: 0 1px 0 rgba(255, 255, 255, 0.05) inset, 0 1px 2px rgba(0, 0, 0, 0.05) !important;",
	"    }",
	"",
	"/* end BOTH COLS */",
	"",
	"/* left col*/",
	"    /*.row-fluid .span3 {width: 15% !important;}*/ /* making content col. wider part 1/2*/",
	"    .reader .subscribe-button-container .bg { background-color: #333 !important; }",
	"        /*subscribe button*/",
	"            .reader .subscribe-fixed-top .bg {background: none repeat scroll 0 0 #333 /*the same as BODY bg color*/ !important;}",
	"            .subscribe .btn-primary {border: 1px solid #191919 !important;}",
	"        /*end subscribe button*/",
	"        /*nav list*/",
	"            .nav-list li a {color: #ccc !important;}",
	"            .nav-list li a:hover {color: #26687f !important;}",
	"            .nav-list li.social a:hover {color: #da3f2d !important;}",
	"            .nav-list li.nav-header a {color: #666 !important;}",
	"            .nav-list li.nav-header a:hover {color: #bbb !important;}",
	"        /*nav list end*/",
	"/* end left col*/",
	"",
	"/* right col */",
	"    /*.reader .body-fixed-top {left: 14% !important; width: 83% !important;}*/ /* making content col wider part 2/2 */",
	"    .loader {background-color: #333 !important;}",
	"    .page-header {border-bottom: 1px solid #222 !important;} /* line below site title or category (folder) */",
	"        /*articles*/",
	"            .reader .floating {background: #333 !important;} /*must be same as BODY background color*/",
	"            .post h3 a {color: #ccc !important;}",
	"            .label.label-transparent {color: #999 !important;}",
	"            .post.unread {",
	"                border-left: 10px solid #26687f !important; ",
	"                padding-bottom: 10px !important;",
	"                padding-left: 11px !important;",
	"                padding-right: 10px !important;",
	"                padding-top: 10px !important;",
	"                }",
	"            .post.unread .content {color: #888 !important;}",
	"            .post .content {color: #ccc !important;}",
	"            .post {",
	"                padding-bottom: 10px !important;",
	"                padding-left: 20px !important;",
	"                padding-right: 10px !important;",
	"                padding-top: 10px !important;",
	"                }",
	"            .post blockquote {background-color: #222 !important;}",
	"            img {margin-bottom: 15px !important; margin-top: 5px !important;}",
	"           ",
	"",
	"        /* end articles*/",
	"/* end right col*/",
	"",
	"/* SPECIFIC */",
	"    .home-page dl dd p a {color: #ccc !important;}",
	"    legend {color: #ddd !important;}",
	"    .dropdown-menu {background-color: #252525 !important;}",
	"/* end SPECIFIC */",
	"",
	"/* alerts and heroes */",
	"    .alert {background-color: #26687f !important;}",
	"    .alert.alert-info {color: #fff !important;}",
	"    .hero-unit {background-color: #222 !important;}",
	"/* end alerts and heroes */",
	"    ",
	"/* sponsorship */",
	"    .sponsorship { ",
	"        background-color: #222 !important;",
	"        border-color: #444 !important;",
	"    }",
	"    ",
	"    .sponsorship a { ",
	"        color: #ddd !important;",
	"    }",
	"/* end sponsorship */"
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
