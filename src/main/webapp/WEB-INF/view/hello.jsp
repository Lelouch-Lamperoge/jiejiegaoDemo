<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta name="viewport"  content="width=device-width,minimum-scale=1.0, maximum-scale=2.0">
<html>

<link rel="stylesheet" href="/css/style.css" type="text/css">
<script src="/js/jquery-1.5.1.min.js" type="text/javascript" charset="utf-8"></script> 

<script>

    <!-- 按钮函数-->

    function primaryBtFn(){
        $("#primarySchoolDiv").css("display","");
        $("#middleSchoolDiv").css("display","none");
        $("#highSchoolDiv").css("display","none");
        //隐藏二维码
        $("#qrcodeDiv").css("display","none");

        $("#priQrcode").removeClass("hide");
        $("#midQrcode").addClass("hide");
        $("#highQrcode").addClass("hide");

        $("#priChinQR").css("display","none");
        $("#priMathsQR").css("display","none");

        //追加按钮样式
        $("#primaryBt").css("border","0px");
        $("#primaryBt").css("border-bottom", "2px solid #64eaff");
        $("#primaryBt").addClass("buttonClass");

        $("#middleBt").removeClass("buttonClass");
        $("#highBt").removeClass("buttonClass");

        //还原其他的按钮样式
        $("#middleBt").css("border-bottom", "0px");
        $("#highBt").css("border-bottom", "0px");

    }

    function middleBtFn(){
        $("#middleSchoolDiv").css("display","");
        $("#primarySchoolDiv").css("display","none");
        $("#highSchoolDiv").css("display","none");
        //隐藏二维码
        $("#qrcodeDiv").css("display","none");

        $("#midQrcode").removeClass("hide");
        $("#priQrcode").addClass("hide");
        $("#highQrcode").addClass("hide");

        $("#midMathsQR").css("display","none");

        //追加按钮样式
        $("#middleBt").css("border","0px");
        $("#middleBt").css("border-bottom", "2px solid #64eaff");

        $("#middleBt").addClass("buttonClass");
        $("#primaryBt").removeClass("buttonClass");
        $("#highBt").removeClass("buttonClass");

        //还原其他的按钮样式
        $("#primaryBt").css("border-bottom", "0px");
        $("#highBt").css("border-bottom", "0px");

    }

    function highBtFn(){
        $("#highSchoolDiv").css("display","");
        $("#primarySchoolDiv").css("display","none");
        $("#middleSchoolDiv").css("display","none");
        //隐藏二维码
        $("#qrcodeDiv").css("display","none");

        $("#highQrcode").removeClass("hide");
        $("#priQrcode").addClass("hide");
        $("#midQrcode").addClass("hide");

        $("#highMathsQR").css("display","none");
        $("#highPhysQR").css("display","none");
        $("#highChemQR").css("display","none");
        $("#highEngQR").css("display","none");


        //追加按钮样式
        $("#highBt").css("border","0px");
        $("#highBt").css("border-bottom", "2px solid #64eaff");

        $("#highBt").addClass("buttonClass");
        $("#middleBt").removeClass("buttonClass");
        $("#primaryBt").removeClass("buttonClass");

        //还原其他的按钮样式
        $("#middleBt").css("border-bottom", "0px");
        $("#primaryBt").css("border-bottom", "0px");
    }

    //学科二维码函数
    //小学组
    //语文
    function priChinFn(){
        //显示二维码div
        $("#qrcodeDiv").css("display","");
        //显示小学div
        $("#priQrcode").removeClass("hide");
        $("#midQrcode").addClass("hide");
        $("#highQrcode").addClass("hide");

        $("#priChinQR").css("display","");
        $("#priMathsQR").css("display","none");

    }
    //数学
    function priMathsFn(){
        //显示二维码div
        $("#qrcodeDiv").css("display","");
        //显示小学div
        $("#priQrcode").removeClass("hide");
        $("#midQrcode").addClass("hide");
        $("#highQrcode").addClass("hide");

        $("#priMathsQR").css("display","");
        $("#priChinQR").css("display","none");

    }


    //初中组
    function midMathsFn(){
        //显示二维码div
        $("#qrcodeDiv").css("display","");
        //显示初中div
        $("#midQrcode").removeClass("hide");
        $("#priQrcode").addClass("hide");
        $("#highQrcode").addClass("hide");

        $("#midMathsQR").css("display","");
    }


    //高中组
    //数学
    function highMathsFn(){
        //显示二维码div
        $("#qrcodeDiv").css("display","");
        //显示小学div
        $("#highQrcode").removeClass("hide");
        $("#midQrcode").addClass("hide");
        $("#priQrcode").addClass("hide");

        $("#highMathsQR").css("display","");
        $("#highPhysQR").css("display","none");
        $("#highChemQR").css("display","none");
        $("#highEngQR").css("display","none");

    }

    //物理
    function highPhysFn(){
        //显示二维码div
        $("#qrcodeDiv").css("display","");
        //显示小学div
        $("#highQrcode").removeClass("hide");
        $("#midQrcode").addClass("hide");
        $("#priQrcode").addClass("hide");

        $("#highPhysQR").css("display","");
        $("#highMathsQR").css("display","none");
        $("#highChemQR").css("display","none");
        $("#highEngQR").css("display","none");
    }

    //化学
    function highChemFn(){
        //显示二维码div
        $("#qrcodeDiv").css("display","");
        //显示小学div
        $("#highQrcode").removeClass("hide");
        $("#midQrcode").addClass("hide");
        $("#priQrcode").addClass("hide");

        $("#highChemQR").css("display","");
        $("#highMathsQR").css("display","none");
        $("#highPhysQR").css("display","none");
        $("#highEngQR").css("display","none");

    }

    //英语
    function highEngFn(){
        //显示二维码div
        $("#qrcodeDiv").css("display","");
        //显示小学div
        $("#highQrcode").removeClass("hide");
        $("#midQrcode").addClass("hide");
        $("#priQrcode").addClass("hide");

        $("#highEngQR").css("display","");
        $("#highPhysQR").css("display","none");
        $("#highMathsQR").css("display","none");
        $("#highChemQR").css("display","none");
    }



</script>



<head>
    <title>  节节高教育  </title>
</head>

<body>

<div class="group-image">
    <!--//广告 -->
    <img src="/img/guanggao.jpeg"  alt="" />
</div>


<!-- 按钮 -->
<div class="buttonDiv1">

    <div>
        <input type="button" id="primaryBt" onclick="primaryBtFn()" value="小学">
        <input type="button" id="middleBt" onclick="middleBtFn()" value="初中">
        <input type="button" id="highBt" onclick="highBtFn()" value="高中">
    </div>

</div>
<!-- 学科 -->
<div class="subject">
    <!-- 小学组 -->
    <div  id="primarySchoolDiv" class="primarySchool" style="display: none;">
        <input type="button" name="priChin" onclick="priChinFn()" value="语文">
        <input type="button" name="priMaths" onclick="priMathsFn()" value="数学">
    </div>
    <!-- 初中组 -->
    <div id="middleSchoolDiv" class="middleSchool" style="display: none;">
        <input type="button" name="midMaths" onclick="midMathsFn()" value="数学">
    </div>
    <!-- 高中组 -->
    <div id="highSchoolDiv" class="highSchool" style="display: none;">
        <input type="button" name="highMaths" onclick="highMathsFn()" value="数学">
        <input type="button" name="highPhys" onclick="highPhysFn()" value="物理">
        <input type="button" name="highChem" onclick="highChemFn()" value="化学">
        <input type="button" name="highEng" onclick="highEngFn()" value="英语">
    </div>
</div>

<!-- 二维码区域 -->
<div id="qrcodeDiv " class="qrcodeDiv">
    <!-- 小学组 -->
    <div id="priQrcode" class="qrcode hide" >
        <!-- 语文 -->
        <div style="text-align: center;">
            <img src="/img/priChinQR.jpg" id="priChinQR"  alt="" />
        </div>
        <div style="text-align: center;">
            <!-- 数学 -->
            <img src="/img/priMathsQR.jpg" id="priMathsQR"  alt="" />
        </div>

    </div>
    <!-- 初中组 -->
    <div id="midQrcode" class="qrcode hide" >
        <!-- 数学 -->
        <img src="/img/midMathsQR.jpg" id="midMathsQR" alt="" />
    </div>
    <!-- 高中组 -->
    <div id="highQrcode" class="qrcode hide">
        <!-- 数学 -->
        <img src="/img/highMathsQR.jpg" id="highMathsQR" alt="" />
        <!-- 物理 -->
        <img src="/img/highPhysQR.jpg" id="highPhysQR" alt="" />
        <!-- 化学 -->
        <img src="/img/highChemQR.jpg" id="highChemQR" alt="" />
        <!-- 英语 -->
        <img src="/img/highEngQR.jpg" id="highEngQR" alt="" />
    </div>
</div>

<div>

</div>
</body>
</html>
