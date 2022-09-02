!function(){"use strict";var e,t,n,a=tinymce.util.Tools.resolve("tinymce.PluginManager"),m=function(){return(m=Object.assign||function(e){for(var t,n=1,a=arguments.length;n<a;n++)for(var o in t=arguments[n])Object.prototype.hasOwnProperty.call(t,o)&&(e[o]=t[o]);return e}).apply(this,arguments)},i=function(e){return function(){return e}},r=i(!1),s=i(!0),o=function(){return l},l=(e=function(e){return e.isNone()},{fold:function(e){return e()},is:r,isSome:r,isNone:s,getOr:n=function(e){return e},getOrThunk:t=function(e){return e()},getOrDie:function(e){throw new Error(e||"error: getOrDie called on none.")},getOrNull:i(null),getOrUndefined:i(undefined),or:n,orThunk:t,map:o,each:function(){},bind:o,exists:r,forall:s,filter:o,equals:e,equals_:e,toArray:function(){return[]},toString:i("none()")}),c=function(n){var e=i(n),t=function(){return o},a=function(e){return e(n)},o={fold:function(e,t){return t(n)},is:function(e){return n===e},isSome:s,isNone:r,getOr:e,getOrThunk:e,getOrDie:e,getOrNull:e,getOrUndefined:e,or:t,orThunk:t,map:function(e){return c(e(n))},each:function(e){e(n)},bind:a,exists:a,forall:a,filter:function(e){return e(n)?o:l},toArray:function(){return[n]},toString:function(){return"some("+n+")"},equals:function(e){return e.is(n)},equals_:function(e,t){return e.fold(r,function(e){return t(n,e)})}};return o},p={some:c,none:o,from:function(e){return null===e||e===undefined?l:c(e)}},u=Array.prototype.indexOf,d=function(e,t){return n=e,a=t,-1<u.call(n,a);var n,a},g=function(e,t){for(var n=e.length,a=new Array(n),o=0;o<n;o++){var i=e[o];a[o]=t(i,o)}return a},y=function(e,t){return function(e,t,n){for(var a=0,o=e.length;a<o;a++){var i=e[a];if(t(i,a))return p.some(i);if(n(i,a))break}return p.none()}(e,t,r)},f=Object.keys,h=Object.hasOwnProperty,b=function(e,t){return h.call(e,t)},k=tinymce.util.Tools.resolve("tinymce.Env"),v=function(e){var n=k.mac?{alt:"&#x2325;",ctrl:"&#x2303;",shift:"&#x21E7;",meta:"&#x2318;",access:"&#x2303;&#x2325;"}:{meta:"Ctrl ",access:"Shift + Alt "},t=e.split("+"),a=g(t,function(e){var t=e.toLowerCase().trim();return b(n,t)?n[t]:e});return k.mac?a.join("").replace(/\s/,""):a.join("+")},w=[{shortcuts:["Meta + B"],action:"Bold"},{shortcuts:["Meta + I"],action:"Italic"},{shortcuts:["Meta + U"],action:"Underline"},{shortcuts:["Meta + A"],action:"Select all"},{shortcuts:["Meta + Y","Meta + Shift + Z"],action:"Redo"},{shortcuts:["Meta + Z"],action:"Undo"},{shortcuts:["Access + 1"],action:"Heading 1"},{shortcuts:["Access + 2"],action:"Heading 2"},{shortcuts:["Access + 3"],action:"Heading 3"},{shortcuts:["Access + 4"],action:"Heading 4"},{shortcuts:["Access + 5"],action:"Heading 5"},{shortcuts:["Access + 6"],action:"Heading 6"},{shortcuts:["Access + 7"],action:"Paragraph"},{shortcuts:["Access + 8"],action:"Div"},{shortcuts:["Access + 9"],action:"Address"},{shortcuts:["Alt + 0"],action:"Open help dialog"},{shortcuts:["Alt + F9"],action:"Focus to menubar"},{shortcuts:["Alt + F10"],action:"Focus to toolbar"},{shortcuts:["Alt + F11"],action:"Focus to element path"},{shortcuts:["Ctrl + F9"],action:"Focus to contextual toolbar"},{shortcuts:["Shift + Enter"],action:"Open popup menu for split buttons"},{shortcuts:["Meta + K"],action:"Insert link (if link plugin activated)"},{shortcuts:["Meta + S"],action:"Save (if save plugin activated)"},{shortcuts:["Meta + F"],action:"Find (if searchreplace plugin activated)"},{shortcuts:["Meta + Shift + F"],action:"Switch to or from fullscreen mode"}],A=tinymce.util.Tools.resolve("tinymce.util.I18n"),x="premium",C=g([{key:"advlist",name:"Advanced List"},{key:"anchor",name:"Anchor"},{key:"autolink",name:"Autolink"},{key:"autoresize",name:"Autoresize"},{key:"autosave",name:"Autosave"},{key:"bbcode",name:"BBCode"},{key:"charmap",name:"Character Map"},{key:"code",name:"Code"},{key:"codesample",name:"Code Sample"},{key:"colorpicker",name:"Color Picker"},{key:"directionality",name:"Directionality"},{key:"emoticons",name:"Emoticons"},{key:"fullpage",name:"Full Page"},{key:"fullscreen",name:"Full Screen"},{key:"help",name:"Help"},{key:"hr",name:"Horizontal Rule"},{key:"image",name:"Image"},{key:"imagetools",name:"Image Tools"},{key:"importcss",name:"Import CSS"},{key:"insertdatetime",name:"Insert Date/Time"},{key:"legacyoutput",name:"Legacy Output"},{key:"link",name:"Link"},{key:"lists",name:"Lists"},{key:"media",name:"Media"},{key:"nonbreaking",name:"Nonbreaking"},{key:"noneditable",name:"Noneditable"},{key:"pagebreak",name:"Page Break"},{key:"paste",name:"Paste"},{key:"preview",name:"Preview"},{key:"print",name:"Print"},{key:"save",name:"Save"},{key:"searchreplace",name:"Search and Replace"},{key:"spellchecker",name:"Spell Checker"},{key:"tabfocus",name:"Tab Focus"},{key:"table",name:"Table"},{key:"template",name:"Template"},{key:"textcolor",name:"Text Color"},{key:"textpattern",name:"Text Pattern"},{key:"toc",name:"Table of Contents"},{key:"visualblocks",name:"Visual Blocks"},{key:"visualchars",name:"Visual Characters"},{key:"wordcount",name:"Word Count"},{key:"advcode",name:"Advanced Code Editor*",type:x},{key:"formatpainter",name:"Format Painter*",type:x},{key:"powerpaste",name:"PowerPaste*",type:x},{key:"tinydrive",name:"Tiny Drive*",type:x},{key:"tinymcespellchecker",name:"Spell Checker Pro*",type:x},{key:"a11ychecker",name:"Accessibility Checker*",type:x},{key:"linkchecker",name:"Link Checker*",type:x},{key:"mentions",name:"Mentions*",type:x},{key:"mediaembed",name:"Enhanced Media Embed*",type:x},{key:"checklist",name:"Checklist*",type:x},{key:"casechange",name:"Case Change*",type:x},{key:"permanentpen",name:"Permanent Pen*",type:x},{key:"pageembed",name:"Page Embed*",type:x},{key:"tinycomments",name:"Tiny Comments*",type:x,slug:"comments"},{key:"advtable",name:"Advanced Tables*",type:x},{key:"autocorrect",name:"Autocorrect*",type:x},{key:"export",name:"Export*",type:x}],function(e){return m(m({},e),{type:e.type||"opensource",slug:e.slug||e.key})}),T=function(e){var t,n,a,o,i,r,s,l,c,u,h=function(e){return'<a href="'+e.url+'" target="_blank" rel="noopener">'+e.name+"</a>"};return{name:"plugins",title:"Plugins",items:[{type:"htmlpanel",presets:"document",html:[null==(n=e)?"":'<div data-mce-tabstop="1" tabindex="-1">'+(a=n,i=f((o=a).plugins),s=(r=o.getParam("forced_plugins"))===undefined?i:function(e,t){for(var n=[],a=0,o=e.length;a<o;a++){var i=e[a];t(i,a)&&n.push(i)}return n}(i,function(e){return!d(r,e)}),l=g(s,function(e){return"<li>"+(t=a,n=e,y(C,function(e){return e.key===n}).fold(function(){var e=t.plugins[n].getMetadata;return"function"==typeof e?h(e()):n},function(e){return h({name:e.name,url:"https://www.tiny.cloud/docs/plugins/"+e.type+"/"+e.slug})}))+"</li>";var t,n}),c=l.length,u=l.join(""),"<p><b>"+A.translate(["Plugins installed ({0}):",c])+"</b></p><ul>"+u+"</ul>")+"</div>",(t=g(["Accessibility Checker","Advanced Code Editor","Advanced Tables","Case Change","Checklist","Export","Tiny Comments","Tiny Drive","Enhanced Media Embed","Format Painter","Link Checker","Mentions","MoxieManager","Page Embed","Permanent Pen","PowerPaste","Spell Checker Pro"],function(e){return"<li>"+A.translate(e)+"</li>"}).join(""),'<div data-mce-tabstop="1" tabindex="-1"><p><b>'+A.translate("Premium plugins:")+"</b></p><ul>"+t+'<li class="tox-help__more-link" "><a href="https://www.tiny.cloud/pricing/?utm_campaign=editor_referral&utm_medium=help_dialog&utm_source=tinymce" target="_blank">'+A.translate("Learn more...")+"</a></li></ul></div>")].join("")}]}},P=tinymce.util.Tools.resolve("tinymce.EditorManager"),M=function(e,t){var n,a,o,i,r,s={name:"shortcuts",title:"Handy Shortcuts",items:[{type:"table",header:["Action","Shortcut"],cells:g(w,function(e){var t=g(e.shortcuts,v).join(" or ");return[e.action,t]})}]},l={name:"keyboardnav",title:"Keyboard Navigation",items:[{type:"htmlpanel",presets:"document",html:"<h1>Editor UI keyboard navigation</h1>\n\n<h2>Activating keyboard navigation</h2>\n\n<p>The sections of the outer UI of the editor - the menubar, toolbar, sidebar and footer - are all keyboard navigable. As such, there are multiple ways to activate keyboard navigation:</p>\n<ul>\n  <li>Focus the menubar: Alt + F9 (Windows) or &#x2325;F9 (MacOS)</li>\n  <li>Focus the toolbar: Alt + F10 (Windows) or &#x2325;F10 (MacOS)</li>\n  <li>Focus the footer: Alt + F11 (Windows) or &#x2325;F11 (MacOS)</li>\n</ul>\n\n<p>Focusing the menubar or toolbar will start keyboard navigation at the first item in the menubar or toolbar, which will be highlighted with a gray background. Focusing the footer will start keyboard navigation at the first item in the element path, which will be highlighted with an underline. </p>\n\n<h2>Moving between UI sections</h2>\n\n<p>When keyboard navigation is active, pressing tab will move the focus to the next major section of the UI, where applicable. These sections are:</p>\n<ul>\n  <li>the menubar</li>\n  <li>each group of the toolbar </li>\n  <li>the sidebar</li>\n  <li>the element path in the footer </li>\n  <li>the wordcount toggle button in the footer </li>\n  <li>the branding link in the footer </li>\n  <li>the editor resize handle in the footer</li>\n</ul>\n\n<p>Pressing shift + tab will move backwards through the same sections, except when moving from the footer to the toolbar. Focusing the element path then pressing shift + tab will move focus to the first toolbar group, not the last.</p>\n\n<h2>Moving within UI sections</h2>\n\n<p>Keyboard navigation within UI sections can usually be achieved using the left and right arrow keys. This includes:</p>\n<ul>\n  <li>moving between menus in the menubar</li>\n  <li>moving between buttons in a toolbar group</li>\n  <li>moving between items in the element path</li>\n</ul>\n\n<p>In all these UI sections, keyboard navigation will cycle within the section. For example, focusing the last button in a toolbar group then pressing right arrow will move focus to the first item in the same toolbar group. </p>\n\n<h1>Executing buttons</h1>\n\n<p>To execute a button, navigate the selection to the desired button and hit space or enter.</p>\n\n<h1>Opening, navigating and closing menus</h1>\n\n<p>When focusing a menubar button or a toolbar button with a menu, pressing space, enter or down arrow will open the menu. When the menu opens the first item will be selected. To move up or down the menu, press the up or down arrow key respectively. This is the same for submenus, which can also be opened and closed using the left and right arrow keys.</p>\n\n<p>To close any active menu, hit the escape key. When a menu is closed the selection will be restored to its previous selection. This also works for closing submenus.</p>\n\n<h1>Context toolbars and menus</h1>\n\n<p>To focus an open context toolbar such as the table context toolbar, press Ctrl + F9 (Windows) or &#x2303;F9 (MacOS).</p>\n\n<p>Context toolbar navigation is the same as toolbar navigation, and context menu navigation is the same as standard menu navigation.</p>\n\n<h1>Dialog navigation</h1>\n\n<p>There are two types of dialog UIs in TinyMCE: tabbed dialogs and non-tabbed dialogs.</p>\n\n<p>When a non-tabbed dialog is opened, the first interactive component in the dialog will be focused. Users can navigate between interactive components by pressing tab. This includes any footer buttons. Navigation will cycle back to the first dialog component if tab is pressed while focusing the last component in the dialog. Pressing shift + tab will navigate backwards.</p>\n\n<p>When a tabbed dialog is opened, the first button in the tab menu is focused. Pressing tab will navigate to the first interactive component in that tab, and will cycle through the tab\u2019s components, the footer buttons, then back to the tab button. To switch to another tab, focus the tab button for the current tab, then use the arrow keys to cycle through the tab buttons.</p>"}]},c=T(e),u=(i='<a href="https://www.tiny.cloud/docs/changelog/?utm_campaign=editor_referral&utm_medium=help_dialog&utm_source=tinymce" target="_blank">TinyMCE '+(a=P.majorVersion,o=P.minorVersion,0===a.indexOf("@")?"X.X.X":a+"."+o)+"</a>",{name:"versions",title:"Version",items:[{type:"htmlpanel",html:"<p>"+A.translate(["You are using {0}",i])+"</p>",presets:"document"}]}),h=m(((n={})[s.name]=s,n[l.name]=l,n[c.name]=c,n[u.name]=u,n),t.get());return r=e,p.from(r.getParam("help_tabs")).fold(function(){return-1!==(n=(t=f(e=h)).indexOf("versions"))&&(t.splice(n,1),t.push("versions")),{tabs:e,names:t};var e,t,n},function(e){return t=h,n={},a=g(e,function(e){return"string"==typeof e?(b(t,e)&&(n[e]=t[e]),e):(n[e.name]=e).name}),{tabs:n,names:a};var t,n,a})},F=function(o,i){return function(){var e=M(o,i),a=e.tabs,t=e.names,n={type:"tabpanel",tabs:function(e){for(var t=[],n=function(e){t.push(e)},a=0;a<e.length;a++)e[a].each(n);return t}(g(t,function(e){return b(t=a,n=e)?p.from(t[n]):p.none();var t,n}))};o.windowManager.open({title:"Help",size:"medium",body:n,buttons:[{type:"cancel",name:"close",text:"Close",primary:!0}],initialData:{}})}};a.add("help",function(e){var t,n,a,o,i,r=(t={},{get:function(){return t},set:function(e){t=e}}),s={addTab:function(e){var t=n.get();t[e.name]=e,n.set(t)}},l=F(e,n=r);return o=l,(a=e).ui.registry.addButton("help",{icon:"help",tooltip:"Help",onAction:o}),a.ui.registry.addMenuItem("help",{text:"Help",icon:"help",shortcut:"Alt+0",onAction:o}),i=l,e.addCommand("mceHelp",i),e.shortcuts.add("Alt+0","Open help dialog","mceHelp"),s})}();