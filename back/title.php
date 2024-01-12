<div >
    <p class="fs-3 text-center pb-3">網站標題管理</p>
    <form class="form-control" method="post" action="./api/edit.php">  <!-- ?表示是當前的檔案 -->
        <table class="table text-center" width="100%" >
            <tbody>
                <tr >
                    <td width="45%">網站標題</td>
                    <td width="23%">替代文字</td>
                    <td width="7%">顯示</td>
                    <td width="7%">刪除</td>
                    <td></td>
                </tr>
                <!-- 將資料顯示在畫面上 -->
                <?php
                // $DB=${ucfirst($do)};
                $rows = $DB->all();
                foreach ($rows as $row) {
                ?>
                    <tr>
                        <td width="45%">
                            <img src="./img/<?= $row['img']; ?>" style="width:300px;height:30px;">
                        </td>
                        <td width="23%">
                            <input class="form-control" type="text" name="text[]" style="width: 90%;" value="<?= $row['text'];?>">
                            <input class="form-control" type="hidden" name="id[]" value="<?=$row['id'];?>">
                        </td>
                        <td width="7%">
                            <input class="form-check-input"  type="radio" name="sh" value="<?=$row['id'];?>" <?=($row['sh']==1)?'checked':'';?>>
                        </td>
                        <td width="7%">
                            <input class="form-check-input" type="checkbox" name="del[]" value="<?=$row['id']; ?>">
                        </td>
                        <td>
                            <input class="btn btn-secondary" type="button" onclick="op('#cover','#cvr','./modal/upload.php?table=<?= $do; ?>&id=<?=$row['id']; ?>')" value="更新圖片">
                        </td>
                        </td>
                    </tr>
                <?php
                }
                ?>
            </tbody>
        </table>
        <table style="margin-top:40px; width:70%;">
            <tbody>
                <tr >
                    <input type="hidden" name="table" value="<?= $do; ?>">
                    <!--  經由click事件，開啟 ./modal/"$do的網頁，並將值(table=$do)傳出去後，由_GET接收 -->
                    <td class="text-center" >
                        <input class="btn btn-primary btn-lg" type="button" onclick="op('#cover','#cvr','./modal/<?= $do; ?>.php?table=<?= $do; ?>')" value="新增網站標題圖片"></td>
                    <td class="text-center">
                        <input class="btn btn-dark btn-lg " type="submit" value="修改確定">
                        <input class="btn btn-dark btn-lg" type="reset" value="重置">
                    </td>
                </tr>
            </tbody>
        </table>

    </form>
</div>


