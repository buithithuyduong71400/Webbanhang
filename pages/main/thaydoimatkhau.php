<?php
	if(isset($_POST['doimatkhau'])){
		$taikhoan = $_POST['email'];
		$matkhau_cu = md5($_POST['password_cu']);
		$matkhau_moi = md5($_POST['password_moi']);
		$sql = "SELECT * FROM tbl_dangky WHERE email='".$taikhoan."' AND matkhau='".$matkhau_cu."' LIMIT 1";
		$row = mysqli_query($mysqli,$sql);
		$count = mysqli_num_rows($row);
		if($count>0){
			$sql_update = mysqli_query($mysqli,"UPDATE tbl_dangky SET matkhau='".$matkhau_moi."'");
			echo '<p style="color:green">Mật khẩu đã được thay đổi."</p>';
		}else{
			echo '<p style="color:red">Tài khoản hoặc Mật khẩu cũ không đúng,vui lòng nhập lại."</p>';
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
            background: -webkit-linear-gradient(top,#7579ff,#b224ef);
            background: -o-linear-gradient(top,#7579ff,#b224ef);
            background: -moz-linear-gradient(top,#7579ff,#b224ef);
            background: linear-gradient(top,#7579ff,#b224ef);
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
        <h2>Đổi mật khẩu người dùng</h2>
        <form action="" autocomplete="off"  method="POST">
            <input type="text" name="email" placeholder=" Email"/>
            <input type="text" name="password_cu" placeholder=" Mật khẩu cũ"/>
			<input type="text" name="password_moi" placeholder="Mật khẩu mới" />
            <input type="submit" name="doimatkhau" value="Đổi mật khẩu">
	</form>
    </div>
</center>
</body>
</html>