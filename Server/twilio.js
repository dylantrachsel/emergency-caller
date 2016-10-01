// Twilio Credentials 
var accountSid = ''; 
var authToken = ''; 
 
//require the Twilio module and create a REST client 
var client = require('twilio')(accountSid, authToken); 
 
client.calls.create({  
	from: "",
	to: "",
	method: "GET",  
	fallbackMethod: "GET",  
	statusCallbackMethod: "GET",    
	record: "true",
	url: "http://demo.twilio.com/docs/voice.xml",
}, function(err, call) { 
	console.log(err); 
	console.log(call); 
});
