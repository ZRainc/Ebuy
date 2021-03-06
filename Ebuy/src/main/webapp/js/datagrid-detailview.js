$('#tt').datagrid({ 
title:'DataGrid - DetailView', 
width:500, 
height:250, 
remoteSort:false, 
singleSelect:true, 
nowrap:false, 
fitColumns:true, 
url:'datagrid_data.json', 
columns:[[ 
{field:'itemid',title:'Item ID',width:80}, 
{field:'productid',title:'Product ID',width:100,sortable:true}, 
{field:'listprice',title:'List Price',width:80,align:'right',sortable:true}, 
{field:'unitcost',title:'Unit Cost',width:80,align:'right',sortable:true}, 
{field:'attr1',title:'Attribute',width:150,sortable:true}, 
{field:'status',title:'Status',width:60,align:'center'} 
]], 
view: detailview, 
detailFormatter: function(rowIndex, rowData){ 
return '<table><tr>' + 
'<td rowspan=2 style="border:0"><img src="images/' + rowData.itemid + '.png" style="height:50px;"></td>' + 
'<td style="border:0">' + 
'<p>Attribute: ' + rowData.attr1 + '</p>' + 
'<p>Status: ' + rowData.status + '</p>' + 
'</td>' + 
'</tr></table>'; 
} 
});
