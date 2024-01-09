<div style="width:99%; height:87%; margin:auto; overflow:auto; border:#666 1px solid;">
    <p class="t cent botli">最新消息資料管理</p>
    <form method="post" action="./api/edit.php"> <!-- ?表示是當前的頁面 -->
        <table width="100%" style="text-align: center;">
            <tbody>
                <tr class="yel">
                    <td width="80%" style="text-align: left;">最新消息資料</td>
                    <td width="10%">顯示</td>
                    <td width="10%">刪除</td>
                </tr>
                <!-- 將資料顯示在畫面上 -->
                <?php
                $total = $DB->count(); //從db撈出總筆數
                $div = 5; //每5筆，換一頁
                $pages = ceil($total / $div);   //共需多少頁
                $now = $_GET['p'] ?? 1; //如果值不存在，則預設為第1頁
                $start = ($now - 1) * $div;  //計算開始值
                $rows = $DB->all(" limit $start,$div");  //limit前建議有空白，第一頁：從第0筆開始，印0,1,2,3,4共5筆資料筆資料；第2頁時，從第5筆開始，印5,6,7,8,9共5筆資料
                foreach ($rows as $row) {
                ?>
                    <tr>
                        <td>
                            <textarea type="text" name="text[]" style="width:90%;height:60px"><?= $row['text'];?></textarea>
                            <input type="hidden" name="id[]" value="<?=$row['id'];?>">
                        </td>
                        <td>
                            <input type="checkbox" name="sh[]" value="<?=$row['id'];?>" <?=($row['sh']==1)?'checked':'';?>>
                        </td>
                        <td>
                            <input type="checkbox" name="del[]" value="<?=$row['id'];?>">
                        </td>
                    </tr>
                <?php
                }
                ?>
            </tbody>
        </table>
        <div class="cent">
            <?php
        
            if($now>1){  //當 當前頁大於1時，則往下執行
                $prev=$now-1;  //上一頁=當前頁-1
                echo " <a href='?do=$do&p=$prev'><</a> "; //連結到 當前頁的do=news?p=1...2...3...
            }
            
         
            for ($i = 1; $i <= $pages; $i++) {
                $fontsize = ($now == $i) ? '24px' : '16px';  //將當前頁$now == $i，則改變style將字變大
                echo "<a href='?do=$do&p=$i' style='font-size:$fontsize'> $i <a/>";
            }
          
           
            if($now<$pages){
                $next=$now+1;  //下一頁
                echo " <a href='?do=$do&p=$next'> > </a> ";
            }
            
            ?>

        </div>
        <table style="margin-top:40px; width:70%;">
            <tbody>
                <tr>
                    <input type="hidden" name="table" value="<?= $do; ?>">
                    <!--  經由click事件，開啟 ./modal/"$do的網頁，並將值(table=$do)傳出去後，由_GET接收 -->
                    <td width="200px"><input type="button" onclick="op('#cover','#cvr','./modal/<?= $do; ?>.php?table=<?= $do; ?>')" value="最新消息資料"></td>
                    <td class="cent"><input type="submit" value="修改確定"><input type="reset" value="重置"></td>
                </tr>
            </tbody>
        </table>
    </form>
</div>