<p>Thêm sản phẩm</p>
<table border="1" width="100%" style="border-collapse: collapse;">
 <form method="POST" action="modules/quanlysp/xuly.php" enctype="multipart/form-data">
	  <tr>
	  	<td>TÊN SẢN PHẨM</td>
	  	<td><input type="text" name="tensanpham"></td>
	  </tr>
	   <tr>
	  	<td>MSP</td>
	  	<td><input type="text" name="masp"></td>
	  </tr>
	  <tr>
	  	<td>GIÁ SẢN PHẨM</td>
	  	<td><input type="text" name="giasp"></td>
	  </tr>
	  <tr>
	  	<td>SỐ LƯỢNG</td>
	  	<td><input type="text" name="soluong"></td>
	  </tr>
	   <tr>
	  	<td>HÌNH ẢNH</td>
	  	<td><input type="file" name="hinhanh"></td>
	  </tr>
	  <tr>
	  	<td>TÓM TẮT</td>
	  	<td><textarea rows="10"  name="tomtat" style="resize: none"></textarea></td>
	  </tr>
	   <tr>
	  	<td>NỘI DUNG</td>
	  	<td><textarea rows="10"  name="noidung" style="resize: none"></textarea></td>
	  </tr>
	  <tr>
	    <td>DANH SÁCH</td>
	    <td>
	    	<select name="danhmuc">
	    		<?php
	    		$sql_danhmuc = "SELECT * FROM tbl_danhmuc ORDER BY id_danhmuc DESC";
	    		$query_danhmuc = mysqli_query($mysqli,$sql_danhmuc);
	    		while($row_danhmuc = mysqli_fetch_array($query_danhmuc)){
	    		?>
	    		<option value="<?php echo $row_danhmuc['id_danhmuc'] ?>"><?php echo $row_danhmuc['tendanhmuc'] ?></option>
	    		<?php
	    		} 
	    		?>
	    	</select>
	    </td>
	  </tr>
	  <tr>
	    <td>TÌNH TRẠNG</td>
	    <td>
	    	<select name="tinhtrang">
	    		<option value="1">Kích hoạt</option>
	    		<option value="0">Ẩn</option>
	    	</select>
	    </td>
	  </tr>
	   <tr>
	    <td colspan="2"><input type="submit" name="themsanpham" value="THÊM SẢN PHẨM"></td>
	  </tr>
 </form>
</table>