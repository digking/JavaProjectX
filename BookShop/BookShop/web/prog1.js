/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function makeRequestObject()
    {
        var xmlHttp=false;
        
        try
            {
               xmlHttp=new ActiveXObject('Msxml2.XMLHTTP');
               
                
            }
            catch(e)
                {
                    try
                        {
                            xmlHttp=new ActiveXObject('Microsoft.XMLHTTP');
                            
                        }
                        catch(E)
                            {
                                
                                xmlHttp=false;
                                
                            }
                    
                    
                }
                
                
          if(!xmlHttp && typeof(XMLHttpRequest)!='undefined')
            {
                xmlHttp=new XMLHttpRequest();
                
            }
        return xmlHttp;
        
    }
    
    
    function crossCheck(val)
        {
            var xmlHttp=makeRequestObject();
            
            var _url='CrossCheckId.jsp?txt_id='+val;
            
            xmlHttp.open('GET',_url,true);
            xmlHttp.onreadystatechange=function()
                                                 {
                                                     if(xmlHttp.readyState==4 && xmlHttp.status==200)
                                                        {
                                                            var content=xmlHttp.responseText;
                                                            
                                                            if(content)
                                                                {
                                                                    document.getElementById("info").innerHTML=content;
                                                                    
                                                                }
                                                                else
                                                                    {
                                                                        
                                                                        document.getElementById("info").innerHTML="";
                                                                    }
                                                            
                                                            
                                                        }
                                                     
                                                     
                                                 }
                                                 
                      xmlHttp.send(null);                           
            
            
        }
        
        
     function showQuest()
        {
            var xmlHttp=makeRequestObject();
            
            var _url='ShowQuestion.jsp?userid='+document.getElementById("ui").value;
            
            xmlHttp.open('GET',_url,true);
            
            xmlHttp.onreadystatechange=function()
                                                {
                                                    if(xmlHttp.readyState==4 && xmlHttp.status==200)
                                                        {
                                                            var content=xmlHttp.responseText;
                                                            
                                                            if(content)
                                                                {
                                                                    document.getElementById("info").innerHTML=content;
                                                                    
                                                                }
                                                            
                                                        }
                                                    
                                                    
                                                }
                                                
                             xmlHttp.send(null);
            
        }
      
               function validate(email) {

            var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
            //var address = document.getElementById[email].value;
            if (reg.test(email) == false) 
            {
                alert('Invalid Email Address');
                return (false);
            }
 }
 
 function checkNum(event)
{
    
 
if ((event.keyCode > 64 && event.keyCode < 91) || (event.keyCode > 96 && event.keyCode < 123) || event.keyCode == 8)
   return true;
else
   {
       alert("Please enter only char");
       return false;
   }
 
}
            
            
            function checkBlank()
                {
                    
                    if(document.getElementById("cpass").value=="")
                        {
                            alert("Some Field/s are blank!");
                            document.getElementById("cpass").focus();
                            
                        }
                    
                    
                }
         function checkOnlyDigits(e) {
             
            
e = e ? e : window.event;
var charCode = e.which ? e.which : e.keyCode;
if (charCode < 48 || charCode > 57 || document.getElementById("tm").value.length>9) {
document.getElementById('errorMsg').style.display = 'block';
document.getElementById('errorMsg').style.color = 'red';
document.getElementById('errorMsg').innerHTML = 'OOPs! Only digits allowed.';
return false;
} else {
document.getElementById('errorMsg').style.display = 'none';
return true;
}
}


function crossCheckLength(val)
    {
        
        if(val.length!=10 && val.length!=0)
            {
                
                document.getElementById("mes").innerHTML="*Enter Exact 10 digits";
                
                
            }
            else
                {
                    document.getElementById("mes").innerHTML="";
                    
                    
                }
        
        
        
    }
    
    function checkMobile()
        {
            if(document.getElementById("tm").value.length!=10)
                {
                    alert("Mobile Number is Invalid in length!");
                }
            
        }
        
        function crossCheckPaasword()
            {
            
                    if(document.getElementById("ps1").value!=document.getElementById("ps2").value)
                        {
                            
                           document.getElementById("ps3").innerHTML="Password Mismatch!";
                        }
                        else
                            {
                                document.getElementById("ps3").innerHTML="";
                                
                                
                            }
            
            }
            
     function fetchQuestion()
        {
            var xmlHttp=makeRequestObject();
            
            var _url='showQuest.jsp?userid='+document.getElementById("inputval").value
            
            xmlHttp.open('GET',_url,true);
            
            xmlHttp.onreadystatechange=function()
                                                    {
                                                        if(xmlHttp.readyState==4 && xmlHttp.status==200)
                                                            {
                                                                var content=xmlHttp.responseText;
                                                                
                                                                if(content)
                                                                    {
                                                                        
                                                                        document.getElementById("output").innerHTML=content;
                                                                    }
                                                                
                                                                
                                                            }
                                                        
                                                        
                                                    }
            
            
            
         xmlHttp.send(null);   
        }
        
     function addToCart(val)
        {
            var xmlHttp=makeRequestObject();
            
            var _url='AddToCart.jsp?bid='+val;
           
            
            xmlHttp.open('GET',_url,true);
            xmlHttp.onreadystatechange=function()
                                        {
                                            if(xmlHttp.readyState==4 && xmlHttp.status==200)
                                                {
                                                        alert("Added to Cart!");
                                                    
                                                }
                                            
                                            
                                        }
            
            xmlHttp.send(null);
            
        }



        
