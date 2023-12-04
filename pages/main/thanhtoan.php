<?php
	session_start();
	include('../../admincp/config/config.php');
	require('../../mail/sendmail.php');
	$id_khachhang = $_SESSION['id_khachhang'];
	$code_order = rand(0,9999);
	$insert_cart = "INSERT INTO tbl_cart(id_khachhang,code_cart,cart_status) VALUE('".$id_khachhang."','".$code_order."',1)";
	$cart_query = mysqli_query($mysqli,$insert_cart);
	if($cart_query){
		//them gio hang chi tiet
		foreach($_SESSION['cart'] as $key => $value){
			$id_sanpham = $value['id'];
			$soluong = $value['soluong'];
			$insert_order_details = "INSERT INTO tbl_cart_details(id_sanpham,code_cart,soluongmua) VALUE('".$id_sanpham."','".$code_order."','".$soluong."')";
			mysqli_query($mysqli,$insert_order_details);
		}
		$tieude = "Chân thành cảm ơn quý khách đã lựa chọn và đặt niềm tin ở chúng tôi. ";
		$noidung = "
		<p><b>MÃ ĐƠN HÀNG CỦA QUÝ KHÁCH LÀ : ".$code_order."</b></p>
		";
	
		$noidung.="<h4>Đơn hàng đặt bao gồm :</h4p>";
		 foreach($_SESSION['cart'] as $key => $val){
			$noidung.= "<ul style='border:1px solid blue;margin:10px;'>
				<li><p>Tên sản phẩm : ".$val['tensanpham']."</li>
				<li><p>Mã sản phẩm : ".$val['masp']."</li>
				<li><p>Số lượng : ".$val['soluong']."</li>
				<li><p>Giá sản phẩm : ".number_format($val['giasp'],0,',','.')."đ</li>
				</ul>";
		}
		 $maildathang = $_SESSION['email'];
		$mail = new Mailer(); 
		$mail->dathangmail($tieude,$noidung,$maildathang);
	}
	unset($_SESSION['cart']);
	header('Location:../../index.php?quanly=camon');


?>