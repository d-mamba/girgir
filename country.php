<?php include_once("../../etkinlikkur.php"); ?>
<?php $listIl = $db->query("SELECT * FROM ilce WHERE ilce_il = '$_POST[country_id]'"); ?>
<?php foreach ($listIl as $list) { ?>
	<option value="<?php echo $list['ilce_id']; ?>"><?php echo $list['ilce_name']; ?></option>
<?php } ?>