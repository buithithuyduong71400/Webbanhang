	<div class="header">
        <link rel="stylesheet" type="text/css" href="css/header.css">
        <div class="slideshow-container">

            <div class="mySlides fade">
                <img src="images/banner1.JPG" style="width:100%;height:400px">
            </div>

            <div class="mySlides fade">
                <img src="images/banner.JPG" style="width:100%;height:400px">
            </div>

            <div class="mySlides fade">
                <img src="images/banner2.JPG" style="width:100%;height:400px">
            </div>

        </div>
        <br>
    

        <br>
        <div style="text-align:center">
            <span class="dot"></span>
            <span class="dot"></span>
            <span class="dot"></span>
        </div>

        <script>
            let slideIndex = 0;
            showSlides();

            function showSlides() {
                let i;
                let slides = document.getElementsByClassName("mySlides");
                let dots = document.getElementsByClassName("dot");
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                slideIndex++;
                if (slideIndex > slides.length) {slideIndex = 1}
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex-1].style.display = "block";
                dots[slideIndex-1].className += " active";
                setTimeout(showSlides, 2000); // Change image every 2 seconds
            }
        </script>
    </div>