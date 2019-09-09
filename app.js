var express = require('express');
var app = express();
app.get(['/','/index.html'],function(req,res){
	req.send('Hello World.');
}
);
app.listen(80);
