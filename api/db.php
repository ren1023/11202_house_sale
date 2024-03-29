<?php
date_default_timezone_set("Asia/Taipei");
session_start();
class DB
{
    protected $dsn = "mysql:host=localhost;charset=utf8;dbname=house";
    //protected $dsn = "mysql:host=localhost;charset=utf8;dbname=bquiz";
    protected $pdo;
    protected $table;
    public function __construct($table)
    {
        $this->table = $table;
        //$this->pdo=new PDO($this->dsn,'s1120401','s1120401');
        $this->pdo = new PDO($this->dsn, 'root', '');
    }
    function all($where = '', $other = '')
    {
        $sql = "select * from `$this->table` ";
        $sql = $this->sql_all($sql, $where, $other);
        return  $this->pdo->query($sql)->fetchAll(PDO::FETCH_ASSOC);
    }
    function count($where = '', $other = '')
    {
        $sql = "select count(*) from `$this->table` ";
        $sql = $this->sql_all($sql, $where, $other);
        return  $this->pdo->query($sql)->fetchColumn();
    }
    private function math($math, $col, $array = '', $other = '')
    {
        $sql = "select $math(`$col`)  from `$this->table` ";
        $sql = $this->sql_all($sql, $array, $other);
        return $this->pdo->query($sql)->fetchColumn();
    }
    function sum($col = '', $where = '', $other = '')
    {
        return  $this->math('sum', $col, $where, $other);
    }
    function max($col, $where = '', $other = '')
    {
        return  $this->math('max', $col, $where, $other);
    }
    function min($col, $where = '', $other = '')
    {
        return  $this->math('min', $col, $where, $other);
    }
    function find($id)
    {
        $sql = "select * from `$this->table` ";
        if (is_array($id)) {
            $tmp = $this->a2s($id);
            $sql .= " where " . join(" && ", $tmp);
        } else if (is_numeric($id)) {
            $sql .= " where `id`='$id'";
        }
        //echo 'find=>'.$sql;
        $row = $this->pdo->query($sql)->fetch(PDO::FETCH_ASSOC);
        return $row;
    }
    function save($array)
    {
        if (isset($array['id'])) {
            $sql = "update `$this->table` set ";
            if (!empty($array)) {
                $tmp = $this->a2s($array);
            }
            $sql .= join(",", $tmp);
            $sql .= " where `id`='{$array['id']}'";
        } else {
            $sql = "insert into `$this->table` ";
            $cols = "(`" . join("`,`", array_keys($array)) . "`)";
            $vals = "('" . join("','", $array) . "')";
            $sql = $sql . $cols . " values " . $vals;
        }
        return $this->pdo->exec($sql);
    }
    function del($id)
    {
        $sql = "delete from `$this->table` where ";
        if (is_array($id)) {
            $tmp = $this->a2s($id);
            $sql .= join(" && ", $tmp);
        } else if (is_numeric($id)) {
            $sql .= " `id`='$id'";
        }
        //echo $sql;
        return $this->pdo->exec($sql);
    }
    /**
     * 可輸入各式SQL語法字串並直接執行
     */
    function q($sql)
    {
        return $this->pdo->query($sql)->fetchAll(PDO::FETCH_ASSOC);
    }
    private function a2s($array)
    {
        foreach ($array as $col => $value) {
            $tmp[] = "`$col`='$value'";
        }
        return $tmp;
    }
    private function sql_all($sql, $array, $other)
    {
        if (isset($this->table) && !empty($this->table)) {
            if (is_array($array)) {
                if (!empty($array)) {
                    $tmp = $this->a2s($array);
                    $sql .= " where " . join(" && ", $tmp);
                }
            } else {
                $sql .= " $array";
            }
            $sql .= $other;
            // echo 'all=>'.$sql;
            // $rows = $this->pdo->query($sql)->fetchColumn();
            return $sql;
        }
    }
}

function dd($array)
{
    echo "<pre>";
    print_r($array);
    echo "</pre>";
}

function to($url)
{
    header("location:$url");
}
$Title = new DB('house_titles');
$Total = new DB('house_total');
$Ad = new DB('house_ad');

$Bottom = new DB('house_bottom');
$Mvim = new DB('house_mvim');
$Image = new DB('house_image');
$News = new DB('house_news');
$Admin = new DB('house_admin');
$Menu = new DB('house_menu');

$rows=$Total->find(1)['total'];
dd($rows);

//可行的方法一
if(isset($_GET['do'])){ //若 $_GET['do]有存在
    if(isset(${ucfirst($_GET['do'])})){ //若 $_GET['do]轉完大寫後，也存在
        $DB=${ucfirst($_GET['do'])};
    }

}else{
    $DB=$Title;
}



/*可行的方法二
$tables = array_keys(get_defined_vars());
// dd($tables); 
if (isset($_GET['do'])) {
    $key = ucfirst($_GET['do']);

    if (in_array($key, $tables)) {
        $DB = $$key;
    }
} else {
    $DB = $Title;
}
*/

// 記錄進站人數
if(!isset($_SESSION['visited'])) {//設定有進站的狀態，當visited不存在時
    $Total->q("update `house_total` set `total`=`total`+1 where `id`=1");
    $_SESSION['visited']=1;
}
?>
