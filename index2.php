

<div class="container">
    <div class="row">
        <div class="col-md-12"><h1>PHP PDO ve MySQL ile il ilçe seçme</h1><hr></div>

        
        <select size="1" name="marka" id="marka" onchange="getValue($('#marka').val(),$('#marka option:selected').text());">
<option value="1">Audi</option>
<option value="2">BMW</option>
<option value="3">Mercedes</option>
</select><br>
value: <input type="text" name="marka_id" size="20" id="marka_id"><br />
text: <input type="text" name="marka_new" size="20" id="marka_new">
       
    </div>
</div>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
<script type="text/javascript">
  function getValue(Id,Text) {
      $("#marka_id").val(Id);
      $("#marka_new").val(Text);    
    // alert(theMarka);
    }
</script>
