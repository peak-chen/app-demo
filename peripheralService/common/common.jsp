<%@page import="com.hikvision.constants.CommonConstants,java.text.SimpleDateFormat,java.util.Date" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort() + path + "/";

	Date today = new Date();
	String year = new SimpleDateFormat("yyyy").format(today);
	String month = new SimpleDateFormat("yyyy-MM").format(today);
	String date = new SimpleDateFormat("yyyy-MM-dd").format(today);
	String hour = new SimpleDateFormat("yyyy-MM-dd HH").format(today);

	String startTime = date + " " + "00:00:00";
	String endTime = date + " " + "23:59:59";
%>