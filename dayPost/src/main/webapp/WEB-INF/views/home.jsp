<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>
<h1>
	Let's git it!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<script>
var tableToExcel = (function () {
var uri = 'data:application/vnd.ms-excel;base64,'
, template = '<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="http://www.w3.org/TR/REC-html40"><head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>{worksheet}</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--></head><body><table cellspacing="0" rules="rows" border="1" style="color:Black;background-color:White;border-color:#CCCCCC;border-width:1px;border-style:None;width:100%;border-collapse:collapse;font-size:9pt;text-align:center;">{table}</table></body></html>'


, base64 = function (s) { return window.btoa(unescape(encodeURIComponent(s))) }
, format = function (s, c) { return s.replace(/{(\w+)}/g, function (m, p) { return c[p]; }) }
return function (table, name) {
    if (!table.nodeType) table = document.getElementById(table)
    var ctx = { worksheet: name || 'Worksheet', table: table.innerHTML }
    if (navigator.msSaveBlob) {
        var blob = new Blob([format(template, ctx)], { type: 'application/vnd.ms-excel', endings: 'native' });
        navigator.msSaveBlob(blob, 'export.xlsx')
    } else {
        window.location.href = uri + base64(format(template, ctx))
    }
}
})()

	</script>
</body>
</html>
