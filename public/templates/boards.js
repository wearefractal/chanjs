define(["jade"],function(jade){return function anonymous(locals,attrs,escape,rethrow){var attrs=jade.attrs,escape=jade.escape,rethrow=jade.rethrow,buf=[];with(locals||{}){var interp;buf.push("<div"),buf.push(attrs({"class":"well"},{})),buf.push("><div"),buf.push(attrs({"class":"page-header"},{})),buf.push("><h1>Boards</h1></div><div"),buf.push(attrs({"class":"row-fluid"},{})),buf.push("><table"),buf.push(attrs({"class":"span3 table table-condensed"},{})),buf.push("><tbody>"),function(){if("number"==typeof boards.length)for(var a=0,b=boards.length;a<b;a++){var c=boards[a];buf.push("<tr><td> <a"),buf.push(attrs({href:"#/board/"+c.id+""},{href:!0})),buf.push(">"+escape((interp=c.name)==null?"":interp)+"</a></td></tr>")}else for(var a in boards){var c=boards[a];buf.push("<tr><td> <a"),buf.push(attrs({href:"#/board/"+c.id+""},{href:!0})),buf.push(">"+escape((interp=c.name)==null?"":interp)+"</a></td></tr>")}}.call(this),buf.push("</tbody></table></div></div>")}return buf.join("")}})