<?php
	if(isset($_POST['dangnhap'])){
		$email = $_POST['email'];
		$matkhau = md5($_POST['password']);
		$sql = "SELECT * FROM tbl_dangky WHERE email='".$email."' AND matkhau='".$matkhau."' LIMIT 1";
		$row = mysqli_query($mysqli,$sql);
		$count = mysqli_num_rows($row);

		if($count>0){
			$row_data = mysqli_fetch_array($row);
			$_SESSION['dangky'] = $row_data['tenkhachhang'];
            $_SESSION['email'] = $row_data['email'];
			$_SESSION['id_khachhang'] = $row_data['id_dangky'];
			header("Location:dangnhap.php");
		}else{
			echo '<p style="color:red">Đăng nhập thành công vui lòng quay lại giỏ hàng.</p>';
			
		}
	} 
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Đăng ký tài khoản người dùng</title>
    <style>
        body {
            padding: 50px;
        }
        * {
            margin: 10px 0 10px 0;
            padding:0 ;
        }
        .form-tt {
            width: 600px;
            border-radius: 10px;
            overflow: hidden;
            padding: 55px 55px 37px;
            background:#D2A3A9;
            
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
    </style>
<body>
<center>
<div class="form-tt">
    <h2>Đăng nhập danh cho người dùng</h2>
    <form action="" autocomplete="off"  method="POST">
        <input type="text" name="email" placeholder=" Email"/>
        <input type="text" name="password" placeholder="password"/>
        <input type="submit" name="dangnhap" value="Đăng nhập">
    </form>
</div>
</center>
</body>
</html>