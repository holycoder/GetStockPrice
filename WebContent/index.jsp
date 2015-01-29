<%@ page contentType="text/html; charset=utf-8" import="java.io.*"%>  
<%  
try  
{  
    Process process = Runtime.getRuntime().exec ("whoami");  
    String line = new String();  
    out.print("本JSP页面所属用户：");  
    while ((line = new LineNumberReader (new InputStreamReader(process.getInputStream()))  
        .readLine ()) != null){  
        out.println(line);  
    }  
    out.print("<br/>查看目录文件：/home/chenyoca</br>");  
    for(File f : new File("/home/csv").listFiles()){  
                out.println(f.getName()+"<br/>");  
    }  
}catch (java.io.IOException e){  
        out.println ("IOException " + e.getMessage());  
}  
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>