<?php 


class dbConn
{
	protected static $db;
	public function __construct()
    {
        try{
            self::$db = new PDO("mysql:host=localhost;dbname=c2c;charset=utf8",'root','');
        }
        catch (PDOException $exception)
        {
            print $exception->getMessage();
        }
    }
    public function getIlList()
    {
       $query = self::$db->query("SELECT DISTINCT il from ilveilceler", PDO::FETCH_ASSOC);
        if($query->rowCount())
        {
            foreach ($query as $row)
            {
                echo $row["il"];
            }
        }

    }
    public function getIlceList($il)
    {

    }

}


 ?>