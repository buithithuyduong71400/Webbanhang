<?php
	if(isset($_POST['dangky'])) {
		$tenkhachhang = $_POST['hovaten'];
		$email = $_POST['email'];
		$dienthoai = $_POST['dienthoai'];
		$matkhau = md5($_POST['matkhau']);
		$diachi = $_POST['diachi'];
		$sql_dangky = mysqli_query($mysqli,"INSERT INTO tbl_dangky(tenkhachhang,email,diachi,matkhau,dienthoai) VALUE('".$tenkhachhang."','".$email."','".$diachi."','".$matkhau."','".$dienthoai."')");
		if($sql_dangky){
			echo '<p style="color:green"><b>BẠN ĐĂNG KÝ THÀNH CÔNG</b></p>';
			$_SESSION['dangky'] = $tenkhachhang;
            $_SESSION['email'] = $email;
			$_SESSION['id_khachhang'] = mysqli_insert_id($mysqli);
		}
	}
?>
<!DOCTYPE html> 
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Đăng ký tài khoản người dùng</title>
    <style>
        .form-tt {
            width: 600px;
            border-radius: 10px;
            overflow: hidden;
            padding: 55px 55px 37px;
            background: #9152f8;
            text-align: center;
        }
        .form-tt h2 {
            font-size: 30px;
            color: #fff;
            line-height: 1.2;
            text-align: center;
            text-transform: uppercase;
            display: block;
            margin-bottom: 30px;
        }

        .form-tt input[type=text], .form-tt input[type=password] {
            font-family: Poppins-Regular;
            font-size: 16px;
            color: #fff;
            line-height: 1.2;
            display: block;
            width: calc(100% - 10px);
            height: 45px;
            background: 0 0;
            padding: 10px 0;
            border-bottom: 2px solid rgba(255,255,255,.24)!important;
            border: 0;
            outline: 0;
        }
        .form-tt input[type=text]::focus, .form-tt input[type=password]::focus {
            color: red;
        }
        .form-tt input[type=password] {
            margin-bottom: 20px;
        }
        .form-tt input::placeholder {
            color: #fff;
        }
        #checkbox {
            display: block;
        }
        .form-tt input[type=submit] {
            font-size: 16px;
            color: #555;
            line-height: 1.2;
            padding: 0 20px;
            min-width: 120px;
            height: 50px;
            border-radius: 25px;
            background: #fff;
            position: relative;
            z-index: 1;
            border: 0;
            outline: 0;
            display: block;
            margin: 30px auto;
        }
        #checkbox {
            display: inline-block;
            margin-right: 10px;
        }
        .checkbox-text {
            color: #fff;
        }
    </style>
<body>
<center>
<div class="form-tt">
    <h2>Đăng ký tài khoản người dùng</h2>
<form action="" method="POST">
   <input type="text" name="hovaten" placeholder="Username"/>
    <input type="text" name="email" placeholder=" Email"/>
    <input type="text" name="dienthoai" placeholder="Số điện thoại"/>
   <input type="text" name="diachi" placeholder="Địa chỉ"/>
  <input type="password" name="matkhau" placeholder="password" />
    <input type="checkbox" id="checkbox" name="checkbox"><label class="checkbox-text">Nhớ đăng nhập lần sau</label>
    <input type="submit" name="dangky" value="Đăng ký">
		<a type="text-decoration: none;"  href="index.php?quanly=dangnhap">Đăng nhập nếu có tài khoản</a>
</form>
</div>
</center>
</body>
</html>