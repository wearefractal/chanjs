define(["jade"],function(jade){return function anonymous(locals,attrs,escape,rethrow,merge){attrs=attrs||jade.attrs,escape=escape||jade.escape,rethrow=rethrow||jade.rethrow,merge=merge||jade.merge;var buf=[];with(locals||{}){var interp;buf.push('<div class="well"><div class="page-header"><a'),buf.push(attrs({href:"#/board/"+board.id+""},{href:!0})),buf.push("><h1>"+escape((interp=board.name)==null?"":interp)+'</h1></a></div><br/><div class="row"><div class="span5 offset3"><div id="reply"></div></div></div><div class="row-fluid"><div id="threadview"></div></div></div>')}return buf.join("")}})