var express = require('express');
var app = express();
app.get(['/','/index.html'],function(request,response){
	request.send('Hello World.');
}
);
