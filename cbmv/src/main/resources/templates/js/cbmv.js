//去字符串前后空格‘’
String.prototype.trim = function(){
	return this.replace(/^(\s*) | (\s*)$/,"");
}