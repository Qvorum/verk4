<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>JSONSHIT</title>
  </head>
<style>
    ::selection{
        background-color: maroon;
        color: aqua;
}    
    td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}
user agent stylesheet
td, th {
    display: table-cell;
    vertical-align: inherit;
}
tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}
tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}
table {
    font-family: cursive;
    border-collapse: collapse;
    width: 100%;
}
body {
    width: 120%;
    margin: 0 auto;
}
html {
    font-family: cursive;
    display: block;
    font-size: 30px;
}
</style>
  <body>
      <link rel="stylesheet" href="css/style.css" type="text/css">
      %import json
      %skra = open('bekkur.json','r',encoding='utf-8')
      %b = json.load(skra)
    <table>
        <tr>
        <th>Kennitala</th>  
        <th>Nafn</th>
        <th>Braut</th>
        </tr>
            %for x in b['nemendur']:
        <tr>
            <td><a href="shit/{{x['kt']}}">{{x['kt']}}</a></td>  
            <td>{{x['nafn']}}</td>
            <td>{{x['braut']}}</td>
        </tr>
 
        % end
      </table>
  </body>
</html>