$(function () {
   $("#btn-login").click(function () {
       // 登陆信息
       var loginInfo={
           devCode: $('#devCode').val(),
           devPassword: $('#devPassword').val()
       };

       // 使用ajax发送到服务器
        $.ajax({
            url: '/dologin',
            data:JSON.stringify(loginInfo),
            processData:false,
            type:'POST',
            dataType:"json",
            contentType:'application/json',
            success:function (data) {
                /*
                    {code:0 // 如果为0,则请求成功,否则就是出错
                     message:"用户名或密码错误",
                     data:'/index.html'
                    }
                 */

                if(data.code!=0){  // 如果登陆失败,提示登陆失败信息
                    $('#error').html(data.message);
                }else{ // 如果登陆成功,跳转页面
                    location.href=data.data;
                }

            }
        });



   });
});