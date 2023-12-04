
<?php
	if(isset($_GET['dangxuat'])&&$_GET['dangxuat']==1){
		unset($_SESSION['dangky']);
	} 
?>
<div class="menu">
			<ul class="list_menu">
               <a class="logo" href="index.php"><img src="images/logo.png" height= "60px"></a>
				<li><a href="index.php">TRANG CHỦ</a></li>
				<li><a href="index.php?quanly=giohang">GIỎ HÀNG</a></li>
				<?php
				if(isset($_SESSION['dangky'])){ 

				?>
				<li><a href="index.php?dangxuat=1">ĐĂNG XUẤT</a></li>
				<li><a href="index.php?quanly=thaydoimatkhau">THAY ĐỔI MẬT KHẨU</a></li>
				<?php
				}else{ 
				?>
				<li><a href="index.php?quanly=dangky">ĐĂNG KÝ</a></li>
				<?php
				} 
				?>
				
				<li><a href="index.php?quanly=lienhe">LIÊN HỆ</a></li>
				
					
				
			</ul>
			<p>
				<form action="index.php?quanly=timkiem" method="POST">
                   <div class="a1">
					<input type="text" placeholder="Tìm kiếm sản phẩm..." name="tukhoa">
					<input type="submit" name="timkiem" value="Search">
                   </div>
				</form>
			</p>
		</div>