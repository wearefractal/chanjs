define(["ext/jade"],function(jade){return function anonymous(locals,attrs,escape,rethrow){var attrs=jade.attrs,escape=jade.escape,rethrow=jade.rethrow,buf=[];with(locals||{}){var interp;buf.push("<div"),buf.push(attrs({"class":"modal"},{})),buf.push("><form"),buf.push(attrs({id:"login"},{})),buf.push("><div"),buf.push(attrs({"class":"modal-header"},{})),buf.push("><h3>Connect to a database</h3></div><div"),buf.push(attrs({"class":"modal-body"},{})),buf.push("><input"),buf.push(attrs({type:"text",id:"host",placeholder:"Host",value:"localhost","class":"span4"},{type:!0,id:!0,placeholder:!0,value:!0})),buf.push("/><input"),buf.push(attrs({type:"text",id:"port",placeholder:"Port",value:"27017","class":"span4"},{type:!0,id:!0,placeholder:!0,value:!0})),buf.push("/><input"),buf.push(attrs({type:"text",id:"database",placeholder:"Database",value:"test","class":"span4"},{type:!0,id:!0,placeholder:!0,value:!0})),buf.push("/></div><div"),buf.push(attrs({"class":"modal-footer"},{})),buf.push("><input"),buf.push(attrs({type:"submit",value:"Connect","class":"btn btn-primary"},{type:!0,value:!0})),buf.push("/></div></form></div>")}return buf.join("")}})