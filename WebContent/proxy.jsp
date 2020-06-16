<%
        request.setCharacterEncoding("utf-8");
        String _url = request.getParameter("url");
        //String _url = "http://apis.data.go.kr/B552657/ErmctInfoInqireService/getEmrrmRltmUsefulSckbdInfoInqire?serviceKey=iAnMtFh%2B6mY3GEwsTL5x1C62MuzU9lAQj8Sm0C3BRBKkm9cQ9tFoV3LbZk1lgGFMEqnH3M5sowliBVezGw7HrQ%3D%3D&STAGE1=서울특별시";
        //_url = URLEncoder.encode(_url,"utf-8");
        System.out.println("_url : "+_url);
        StringBuffer message = new StringBuffer();
        
        URL url = new URL(_url);
        InputStream in = url.openStream();
        BufferedReader br = new BufferedReader(new InputStreamReader(in,"utf-8"));
        String readLine = null;
        while((readLine = br.readLine()) != null){
                message.append(readLine);
        }
        br.close();
        in.close();

%><%=message.toString()%>
<%@ page import="java.net.*,java.io.*" contentType="application/xml; charset=utf-8"
    pageEncoding="utf-8"%>