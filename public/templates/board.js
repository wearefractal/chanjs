define(["jade"],function(jade){return function anonymous(locals,attrs,escape,rethrow){var attrs=jade.attrs,escape=jade.escape,rethrow=jade.rethrow,buf=[];with(locals||{}){var interp;buf.push("<div"),buf.push(attrs({"class":"well"},{})),buf.push("><div"),buf.push(attrs({"class":"page-header"},{})),buf.push("><a"),buf.push(attrs({href:"#/board/"+board.id+""},{href:!0})),buf.push("><h1>"+escape((interp=board.name)==null?"":interp)+"</h1></a></div><div"),buf.push(attrs({"class":"row-fluid"},{})),buf.push("><center><div"),buf.push(attrs({id:"reply"},{})),buf.push("></div></center></div><div"),buf.push(attrs({"class":"row-fluid"},{})),buf.push("><div"),buf.push(attrs({id:"threadview"},{})),buf.push("></div></div></div>")}return buf.join("")}})