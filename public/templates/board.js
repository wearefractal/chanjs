define(["jade"],function(jade){return function anonymous(locals,attrs,escape,rethrow){var attrs=jade.attrs,escape=jade.escape,rethrow=jade.rethrow,buf=[];with(locals||{}){var interp;buf.push("<div"),buf.push(attrs({"class":"well"},{})),buf.push("><div"),buf.push(attrs({"class":"row-fluid"},{})),buf.push(">"),function(){if("number"==typeof threads.length)for(var a=0,b=threads.length;a<b;a++){var c=threads[a];buf.push("<div"),buf.push(attrs({id:""+c._id+"","class":"thread"},{id:!0})),buf.push(">"),c.original.createdPretty=prettyDate(c.original.created),buf.push("<div"),buf.push(attrs({"class":"op"},{})),buf.push("><div"),buf.push(attrs({"class":"posthead"},{})),buf.push(">"),c.original.title&&(buf.push("<span"),buf.push(attrs({"class":"title"},{})),buf.push(">"+escape((interp=c.original.title)==null?"":interp)+"</span>")),buf.push("<span"),buf.push(attrs({"class":"author"},{})),buf.push(">"+escape((interp=c.original.author)==null?"":interp)+" - </span><span"),buf.push(attrs({"class":"reflink"},{})),buf.push("><a"),buf.push(attrs({href:"#/thread/"+c._id+""},{href:!0})),buf.push(">"+escape((interp=c._id)==null?"":interp)+" - </a></span><span>"+escape((interp=c.original.createdPretty)==null?"":interp)+"</span></div><div"),buf.push(attrs({"class":"postbody"},{})),buf.push(">"),c.original.image&&(buf.push("<img"),buf.push(attrs({src:""+c.original.image+"","class":"thumb"},{src:!0})),buf.push("/>")),buf.push("<blockquote"),buf.push(attrs({"class":"postmessage"},{})),buf.push(">"+escape((interp=c.original.text)==null?"":interp)+"</blockquote></div></div>"),function(){if("number"==typeof c.replies.length)for(var a=0,b=c.replies.length;a<b;a++){var d=c.replies[a];d.createdPretty=prettyDate(d.created),buf.push("<table"),buf.push(attrs({id:""+d._id+""},{id:!0})),buf.push("><tbody><tr><td"),buf.push(attrs({"class":"post"},{})),buf.push("><div"),buf.push(attrs({"class":"posthead"},{})),buf.push(">"),d.title&&(buf.push("<span"),buf.push(attrs({"class":"title"},{})),buf.push(">"+escape((interp=d.title)==null?"":interp)+"</span>")),buf.push("<span"),buf.push(attrs({"class":"author"},{})),buf.push(">"+escape((interp=d.author)==null?"":interp)+" - </span><span"),buf.push(attrs({"class":"reflink"},{})),buf.push("><a"),buf.push(attrs({href:"#/post/"+d._id+""},{href:!0})),buf.push(">"+escape((interp=d._id)==null?"":interp)+" - </a></span><span>Posted: "+escape((interp=d.createdPretty)==null?"":interp)+"</span></div><div"),buf.push(attrs({"class":"postbody"},{})),buf.push(">"),d.image&&(buf.push("<img"),buf.push(attrs({src:""+d.image+"","class":"thumb"},{src:!0})),buf.push("/>")),buf.push("<blockquote"),buf.push(attrs({"class":"postmessage"},{})),buf.push(">"+escape((interp=d.text)==null?"":interp)+"</blockquote></div></td></tr></tbody></table>")}else for(var a in c.replies){var d=c.replies[a];d.createdPretty=prettyDate(d.created),buf.push("<table"),buf.push(attrs({id:""+d._id+""},{id:!0})),buf.push("><tbody><tr><td"),buf.push(attrs({"class":"post"},{})),buf.push("><div"),buf.push(attrs({"class":"posthead"},{})),buf.push(">"),d.title&&(buf.push("<span"),buf.push(attrs({"class":"title"},{})),buf.push(">"+escape((interp=d.title)==null?"":interp)+"</span>")),buf.push("<span"),buf.push(attrs({"class":"author"},{})),buf.push(">"+escape((interp=d.author)==null?"":interp)+" - </span><span"),buf.push(attrs({"class":"reflink"},{})),buf.push("><a"),buf.push(attrs({href:"#/post/"+d._id+""},{href:!0})),buf.push(">"+escape((interp=d._id)==null?"":interp)+" - </a></span><span>Posted: "+escape((interp=d.createdPretty)==null?"":interp)+"</span></div><div"),buf.push(attrs({"class":"postbody"},{})),buf.push(">"),d.image&&(buf.push("<img"),buf.push(attrs({src:""+d.image+"","class":"thumb"},{src:!0})),buf.push("/>")),buf.push("<blockquote"),buf.push(attrs({"class":"postmessage"},{})),buf.push(">"+escape((interp=d.text)==null?"":interp)+"</blockquote></div></td></tr></tbody></table>")}}.call(this),buf.push("</div>")}else for(var a in threads){var c=threads[a];buf.push("<div"),buf.push(attrs({id:""+c._id+"","class":"thread"},{id:!0})),buf.push(">"),c.original.createdPretty=prettyDate(c.original.created),buf.push("<div"),buf.push(attrs({"class":"op"},{})),buf.push("><div"),buf.push(attrs({"class":"posthead"},{})),buf.push(">"),c.original.title&&(buf.push("<span"),buf.push(attrs({"class":"title"},{})),buf.push(">"+escape((interp=c.original.title)==null?"":interp)+"</span>")),buf.push("<span"),buf.push(attrs({"class":"author"},{})),buf.push(">"+escape((interp=c.original.author)==null?"":interp)+" - </span><span"),buf.push(attrs({"class":"reflink"},{})),buf.push("><a"),buf.push(attrs({href:"#/thread/"+c._id+""},{href:!0})),buf.push(">"+escape((interp=c._id)==null?"":interp)+" - </a></span><span>"+escape((interp=c.original.createdPretty)==null?"":interp)+"</span></div><div"),buf.push(attrs({"class":"postbody"},{})),buf.push(">"),c.original.image&&(buf.push("<img"),buf.push(attrs({src:""+c.original.image+"","class":"thumb"},{src:!0})),buf.push("/>")),buf.push("<blockquote"),buf.push(attrs({"class":"postmessage"},{})),buf.push(">"+escape((interp=c.original.text)==null?"":interp)+"</blockquote></div></div>"),function(){if("number"==typeof c.replies.length)for(var a=0,b=c.replies.length;a<b;a++){var d=c.replies[a];d.createdPretty=prettyDate(d.created),buf.push("<table"),buf.push(attrs({id:""+d._id+""},{id:!0})),buf.push("><tbody><tr><td"),buf.push(attrs({"class":"post"},{})),buf.push("><div"),buf.push(attrs({"class":"posthead"},{})),buf.push(">"),d.title&&(buf.push("<span"),buf.push(attrs({"class":"title"},{})),buf.push(">"+escape((interp=d.title)==null?"":interp)+"</span>")),buf.push("<span"),buf.push(attrs({"class":"author"},{})),buf.push(">"+escape((interp=d.author)==null?"":interp)+" - </span><span"),buf.push(attrs({"class":"reflink"},{})),buf.push("><a"),buf.push(attrs({href:"#/post/"+d._id+""},{href:!0})),buf.push(">"+escape((interp=d._id)==null?"":interp)+" - </a></span><span>Posted: "+escape((interp=d.createdPretty)==null?"":interp)+"</span></div><div"),buf.push(attrs({"class":"postbody"},{})),buf.push(">"),d.image&&(buf.push("<img"),buf.push(attrs({src:""+d.image+"","class":"thumb"},{src:!0})),buf.push("/>")),buf.push("<blockquote"),buf.push(attrs({"class":"postmessage"},{})),buf.push(">"+escape((interp=d.text)==null?"":interp)+"</blockquote></div></td></tr></tbody></table>")}else for(var a in c.replies){var d=c.replies[a];d.createdPretty=prettyDate(d.created),buf.push("<table"),buf.push(attrs({id:""+d._id+""},{id:!0})),buf.push("><tbody><tr><td"),buf.push(attrs({"class":"post"},{})),buf.push("><div"),buf.push(attrs({"class":"posthead"},{})),buf.push(">"),d.title&&(buf.push("<span"),buf.push(attrs({"class":"title"},{})),buf.push(">"+escape((interp=d.title)==null?"":interp)+"</span>")),buf.push("<span"),buf.push(attrs({"class":"author"},{})),buf.push(">"+escape((interp=d.author)==null?"":interp)+" - </span><span"),buf.push(attrs({"class":"reflink"},{})),buf.push("><a"),buf.push(attrs({href:"#/post/"+d._id+""},{href:!0})),buf.push(">"+escape((interp=d._id)==null?"":interp)+" - </a></span><span>Posted: "+escape((interp=d.createdPretty)==null?"":interp)+"</span></div><div"),buf.push(attrs({"class":"postbody"},{})),buf.push(">"),d.image&&(buf.push("<img"),buf.push(attrs({src:""+d.image+"","class":"thumb"},{src:!0})),buf.push("/>")),buf.push("<blockquote"),buf.push(attrs({"class":"postmessage"},{})),buf.push(">"+escape((interp=d.text)==null?"":interp)+"</blockquote></div></td></tr></tbody></table>")}}.call(this),buf.push("</div>")}}.call(this),buf.push("</div></div>")}return buf.join("")}})