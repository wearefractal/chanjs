define(["jade"],function(jade){return function anonymous(locals,attrs,escape,rethrow,merge){attrs=attrs||jade.attrs,escape=escape||jade.escape,rethrow=rethrow||jade.rethrow,merge=merge||jade.merge;var buf=[];with(locals||{}){var interp;buf.push('<form id="replyForm" action="/post" enctype="multipart/form-data" method="POST"><input'),buf.push(attrs({name:""+type+"",type:"hidden",value:""+id+""},{name:!0,type:!0,value:!0})),buf.push('/><table><tbody><tr><td><input name="title" type="text" placeholder="Title" class="span4"/></td></tr><tr><td><textarea name="text" rows="4" cols="50" placeholder="Content" class="span4"></textarea></td></tr><tr><td><input name="file" type="file" class="span3 pull-left"/><input type="submit" value="Submit Post" class="pull-right"/></td></tr></tbody></table></form>')}return buf.join("")}})