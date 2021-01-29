<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>File Upload</title>
        <script type="text/javascript">
          function FileExtensionCheck() {
              var fileName = document.getElementById("uploadFile").value;
              //alert("FileName --> "+fileName);

    if(!fileName)
      return false;

    var extension = fileName.split(".");
    //alert("extension --> "+extension);
    //alert("extension length --> "+extension.length);
    
        var file_extension = extension.pop().toUpperCase();
        //alert("extension to upper --> "+file_extension);
        if (file_extension.localeCompare("CSV") == 0)
        {
            //alert("True");
            return true;
        }
        else{
            alert("Browse to upload a valid File with csv extension");
            //alert("False .. Wrong Extension");
            return false;
        }
    
          }
        </script>
    </head>
    <body>
        <img src="images/Sunpower_Logo.jpg"/>
         
        <br/>
        <hr style="color:black"/>
        <br/>
         
        <form method="post" action="uploadFile" onsubmit="return FileExtensionCheck();" enctype="multipart/form-data">
            <table>
                <tr>
                    <td></td>
                </tr>
                 
                <tr>
                    <td>
                        <h2>Welcome to the Sunpower Bank Files Upload Portal</h2>
                    </td>
                </tr>
                 
                <tr>
                    <td></td>
                </tr>
                 
                <tr>
                    <td>
                        Select File to upload: 
                        <input type="file" id="uploadFile" name="uploadFile" accept=".csv,.CSV"/>
                    </td>
                </tr>
                 
                <tr>
                    <td></td>
                </tr>
                 
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <input type="image" src="images/MainUpload.png" value="Upload"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>