var express = require('express');
var app = express();
app.get(['/','/index.html'],function(request,response){
	response.send('Hello World.');
}
);
app.listen(80);
