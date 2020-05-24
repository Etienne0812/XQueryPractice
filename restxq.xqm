module namespace page = 'http://Etieh.com';

declare
  %rest:POST
  %rest:path('/warframe')
  %output:method('html')
  %rest:form-param('WFName','{$WFName}','(noWFName)')
  %output:doctype-system('about:legacy-compat')
function page:warframe(
    $WFName as xs:string
) as element(html) {
  <html>
    <head>
      <title>Warframe</title>
      <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"></link>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    </head>
    <body>
      <p>Warframes</p>
      {
        for $WF in doc("WFFrames")//Warframe
        where $WF/Name/text() = $WFName
        return 
        <div class="container">
                    <table class="table">
                        <thead>
                            <tr>
                                <th></th>
                                <th colspan="3">{$WF/Name/text()}</th>
                            </tr>
                            <tr>
                                <th>
                                    {$WF//AName1/text()}
                                </th>
                                <th>
                                    {$WF//AName2/text()}
                                </th> 
                                <th>
                                    {$WF//AName3/text()}
                                </th> 
                                <th>
                                    {$WF//AName4/text()}
                                </th>                             
                            </tr>
                        </thead>
                        <tbody>                            
                                <tr>
                                    
                                    <td>
                                        {$WF//Description1/text()}
                                    </td>
                                    <td>
                                        {$WF//Description2/text()}
                                    </td>
                                    <td>
                                        {$WF//Description3/text()}
                                    </td>
                                    <td>
                                        {$WF//Description4/text()}
                                    </td>
                                </tr>
                            
                        </tbody>
                    </table>
                </div>
      }
    </body>
  </html>
};

declare
  %rest:GET
  %rest:path('/WFList')
  %output:method('html')
  %output:doctype-system('about:legacy-compat')
  
function page:WarframeList(
) as element(html) {
  <html>
    <head>
     <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"></link>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
      <title>Warframe</title>
    </head>
    <body>
      <p>Warframe list</p>
      {
        for $WF in doc("WFFrames")//Warframe
        return 
        <div class="container">
                   <table class="table">
                        <thead>
                            <tr>
                                <th></th>
                                <th colspan="3">{$WF/Name/text()}</th>
                            </tr>
                            <tr>
                                <th>
                                    {$WF//AName1/text()}
                                </th>
                                <th>
                                    {$WF//AName2/text()}
                                </th> 
                                <th>
                                    {$WF//AName3/text()}
                                </th> 
                                <th>
                                    {$WF//AName4/text()}
                                </th>                             
                            </tr>
                        </thead>
                        <tbody>                            
                                <tr>
                                    
                                    <td>
                                        {$WF//Description1/text()}
                                    </td>
                                    <td>
                                        {$WF//Description2/text()}
                                    </td>
                                    <td>
                                        {$WF//Description3/text()}
                                    </td>
                                    <td>
                                        {$WF//Description4/text()}
                                    </td>
                                </tr>
                            
                        </tbody>
                    </table>
                </div>
      }
    </body>
  </html>
};

declare
  %rest:GET
  %rest:path('/SearchWF')
  %output:method('html')
  %output:doctype-system('about:legacy-compat')
function page:WarframeSearch(
) as element(html) {
  <html>
    <head>
      <title>Search a Warframe</title>
       <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"></link>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    </head>
    <body>
      <p>prueba</p>
      <form action = "/warframe" method="POST">
        <input type="text" name="WFName"/>
        <button type = "submit">Search</button>
      </form>
    </body>
  </html>
};

declare
  %rest:GET
  %rest:path('/addwf')
  %output:method('html')
  %output:doctype-system('about:legacy-compat')
function page:addwf(
) as element(html) {
  <html>
    <head>
      <title>Add</title>
       <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"></link>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    </head>
    <body>
      <H1>Add a Warframe</H1>
      <form action = "/warframe/add" method="POST">
        <p>Write a name</p>
        <input type="text" name="Name"/><br/><br/><br/><br/>
        <p>1st ability</p>
        <input type="text" name="A1"/><br/><br/>
        <p>1st description</p>
        <input type="text" name="D1"/><br/><br/>
        <p>2nd ability</p>
        <input type="text" name="A2"/><br/><br/>
        <p>2nd description</p>
        <input type="text" name="D2"/><br/><br/>
        <p>3rd ability</p>
        <input type="text" name="A3"/><br/><br/>
        <p>3rd description</p>
        <input type="text" name="D3"/><br/><br/>
        <p>4th ability</p>
        <input type="text" name="A4"/><br/><br/>
        <p>4th description</p>
        <input type="text" name="D4"/><br/><br/>
        <button type = "submit">Add</button>
      </form>
    </body>
  </html>
};


declare
%rest:POST
%rest:path('/warframe/add')
%rest:form-param('Name','{$Name}','(noName)')
%rest:form-param('A1','{$A1}','(noA1)')
%rest:form-param('D1','{$D1}','(noD1)')
%rest:form-param('A2','{$A2}','(noA2)')
%rest:form-param('D2','{$D2}','(noD2)')
%rest:form-param('A3','{$A3}','(noA3)')
%rest:form-param('D3','{$D3}','(noD3)')
%rest:form-param('A4','{$A4}','(noA4)')
%rest:form-param('D4','{$D4}','(noD4)')
%output:method('html')
%output:doctype-system('about:legacy-compat')
updating function page:addedwf(
  $Name as xs:string,
  $A1 as xs:string,
  $D1 as xs:string,
  $A2 as xs:string,
  $D2 as xs:string,
  $A3 as xs:string,
  $D3 as xs:string,
  $A4 as xs:string,
  $D4 as xs:string
) {
  update:output(web:redirect('/WFList')),
  for $WF in doc("WFFrames")//Warframes
  return insert node
  <Warframe>
  <Name>{$Name}</Name>
  <Abilities>
    <Ability>
      <AName1>{$A1}</AName1>
      <Description1>{$D1}</Description1>
    </Ability>
    <Ability>
      <AName2>{$A2}</AName2>
      <Description2>{$D2}</Description2>
    </Ability>
    <Ability>
      <AName3>{$A3}</AName3>
      <Description3>{$D3}</Description3>
    </Ability>
    <Ability>
      <AName4>{$A4}</AName4>
      <Description4>{$D4}</Description4>
    </Ability>
  </Abilities>
  </Warframe>
  as last into $WF
};


declare
  %rest:GET
  %rest:path('/delwf')
  %output:method('html')
  %output:doctype-system('about:legacy-compat')
function page:delwf(
) as element(html) {
  <html>
    <head>
      <title>Delete</title>
       <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"></link>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    </head>
    <body>
      <p>Delete a Warframe</p>
      <form action = "/warframe/del" method="POST">
        <input type="text" name="Name"/><br/><br/><br/><br/>
        <button type = "submit">Delete</button>
      </form>
    </body>
  </html>
};


declare
%rest:POST
%rest:path('/warframe/del')
%rest:form-param('Name','{$Name}','(noName)')

%output:method('html')
%output:doctype-system('about:legacy-compat')
updating function page:deletedwf(
  $Name as xs:string
) {
  update:output(web:redirect('/WFList')),
  for $WF in doc("WFFrames")//Warframe
  where $WF/Name = $Name
  return
    delete node
      $WF
};


(:declare
  %rest:GET
  %rest:path('/updatewf')
  %output:method('html')
  %output:doctype-system('about:legacy-compat')
function page:updatewf(
) as element(html) {
  <html>
    <head>
      <title>Delete</title>
    </head>
    <body>
      <p>Game</p>
      <form action = "/warframe/update" method="POST">
        <input type="text" name="Name"/><br/><br/><br/><br/>
        <input type="text" name="A1"/><br/><br/>
        <input type="text" name="D1"/><br/><br/>
        <input type="text" name="A2"/><br/><br/>
        <input type="text" name="D2"/><br/><br/>
        <input type="text" name="A3"/><br/><br/>
        <input type="text" name="D3"/><br/><br/>
        <input type="text" name="A4"/><br/><br/>
        <input type="text" name="D4"/><br/><br/>
        <button type = "submit">Update</button>
      </form>
    </body>
  </html>
};


declare
%rest:POST
%rest:path('/warframe/update')
%rest:form-param('Name','{$Name}','(noName)')
%rest:form-param('A1','{$A1}','(noA1)')
%rest:form-param('D1','{$D1}','(noD1)')
%rest:form-param('A2','{$A2}','(noA2)')
%rest:form-param('D2','{$D2}','(noD2)')
%rest:form-param('A3','{$A3}','(noA3)')
%rest:form-param('D3','{$D3}','(noD3)')
%rest:form-param('A4','{$A4}','(noA4)')
%rest:form-param('D4','{$D4}','(noD4)')

%output:method('html')
%output:doctype-system('about:legacy-compat')
updating function page:updatedwf(
  $Name as xs:string,
  $A1 as xs:string,
  $D1 as xs:string,
  $A2 as xs:string,
  $D2 as xs:string,
  $A3 as xs:string,
  $D3 as xs:string,
  $A4 as xs:string,
  $D4 as xs:string
) {
  update:output(web:redirect('/WFList')),
  for $WF in doc("WFFrames")//Warframe
  where $WF/Name = $Name 
  return
    replace value of node  $WF/AName1 with $A1 
    
    
    
};:)





































