<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!--在IE中运行最新的渲染模式-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--初始化移动浏览器不区分手机与pc-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>index</title>
    <!-- 载入Bootstrap -->
    <link href="js/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="js/jquery-3.1.1.min.js"></script>
    <link href="js/index.css" rel="stylesheet" type="text/css">
    <link href="js/search.css" rel="stylesheet" type="text/css">
</head>
<body>
<!--登录和注册开始-->
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column ">
            <!--登录和注册开始-->
            <nav class="navbar navbar-inverse  " role="navigation">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse"
                                data-target="#example-navbar-collapse">
                            <span class="sr-only">切换导航</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="index.php">中文起点网</a>
                    </div>
                    <div class="collapse navbar-collapse" id="example-navbar-collapse">
                        <ul class="nav navbar-nav">
                            <li class=""><a href="list.php?id=1">玄幻</a></li>
                            <li class=""><a href="list.php?id=5">都市</a></li>
                            <li class=""><a href="list.php?id=11">科幻</a></li>
                            <li class=""><a href="list.php?id=9">游戏</a></li>
                            <li class=""><a href="list.php?id=8">历史</a></li>
                            <li class=""><a href="ranking.php?">排行</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    更多 <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">全部作品</a></li>
                                    <li><a href="#">二次元</a></li>
                                    <li><a href="#">奇幻</a></li>
                                    <li><a href="#">武侠</a></li>
                                    <li><a href="#">军事</a></li>
                                    <li><a href="#">职场</a></li>
                                    <li><a href="#">体育</a></li>
                                </ul>
                            </li>
                        </ul>
                        <p class="navbar-text navbar-right" id="nav_button">
                            {{if $user_name !=""}}
                            <a href="admin.php?c=backplan&m=personal" >欢迎书友{{$user_name}}</a>
                            {{else}}
                            <a href="entry.php" >登录</a>|
                            <a href="admin.php?c=backplan&m=login" >注册</a>
                            {{/if}}
                        </p>
                        <form class="navbar-form navbar-right" role="search" action="search.php">
                            <input type="text" name="search" value="" placeholder="格林童话" class="search_text" >
                            <input type="image" class="search_search" src="images/index/searchIOC.png">
                        </form>
                    </div>
                </div>
            </nav>
            <div class="container">
                <div class="row clearfix">
                    <div class="col-md-12 column ">
                        <div class="row clearfix">
                            <div class="col-md-4 column logo">
                                <img alt="140x140" src="images/qd.png" />
                            </div>
                            <div class="col-md-4 column logo"><!--logo 搜索 我的书架-->
                                <form class="bs-example bs-example-form" role="form" action="search.php">
                                    <div class="input-group ">
                                        <input type="text" name="search"  value="" placeholder="格林童话" class="form-control input-group_width">
                                        <span class="input-group-addon logo_search input-group_width"><input type="image" src="images/index/searchIOC.png"></span>
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-4 column logo_book"><!--logo 搜索 我的书架-->
                                <a href="mybook.php"> <button type="button" class="btn btn-danger"><img src="images/index/book_black.png">我的书架</button></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!--登录和注册结束-->
                <div class="row clearfix">
        <div class="col-md-8 column">
            <div class="content_left">
                <!--分类部分开始-->
                <!--搜索结果显示-->
                {{foreach from =$searchResult item=value}}
                <div class="clearfloat"></div>
                <div class="col-md-8 column">
                    <div class="left_three">
                        <div class="img1">
                            <a href="read.php?bookid={{$value->id}}"><img src="{{$value->cover}}" class="img_change"></a>
                        </div>
                        <div class="text_one">
                            <div class="text_title"><a href="read.php?bookid={{$value->id}}" class="color_red">{{$value->book_name}}</a></div>
                            <div class="text_info">
                                <img src="images/user.0.1.png"> <a href="read.php?bookid={{$value->id}}" class="writer_color">{{$value->admin_user}}</a> | <a href="read.php?bookid={{$value->id}}" class="color_red"> {{$value->update_mode}}</a>
                            </div>
                            <div class="text_con">
                                {{$value->book_info}}
                            </div>
                            <div class="text_a">
                                <a href="read.php?bookid={{$value->id}}"><span> 最后更新时间：{{$value->last_time}}</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="col-md-4 column">
                        <div class="three_right">
                            <div class="three_right_text">
                                <ul>
                                    <li>{{$value->size}}万总字数</li>
                                    <li>{{$value->vip_count}}万总推荐</li>
                                    <li>{{$value->click}}万总点击</li>
                                </ul>
                            </div>
                            <div class="three_right_button">
                                <a href="read.php?bookid={{$value->id}}"><div class="three_right_button_one">书籍详情</div></a>
                                <div class="three_right_button_two" id="bookfrom"><input type="hidden" value="{{$value->id}}">加入书架</div>
                            </div>
                        </div>
                    </div>
                </div>
                {{/foreach}}
                <div class="clearfloat"></div>
            </div>
            <center style="margin-top: 20px; font-size: 18px;">{{$fpage}}</center>
        </div>
        <script>
            $(function(){
                $('[id="bookfrom"]').click(function(){
                 var $bookid=$(this).children("input").val();
                    $.ajax({ //一个Ajax过程
                        type: "post", //以post方式与后台沟通
                        url : "admin.php?c=backplan&m=addbook", //与此php页面沟通
                        dataType:'json',//从php返回的值以 JSON方式 解释
                        data: 'bookid='+$bookid ,//发给php的数据
                        success: function(date){
                            alert(date);
                        }
                    });
                });
            })
        </script>
        <!--搜索结果显示结束-->
        <!--左边部分结束-->
        <!--右边部分开始-->
        <div class="col-md-4 column" style="float: right;">
            <div class="content_right">
                <ul class="content_right_list_one">
                    <li><h4>搜这本书的人还看</h4></li>
                    {{foreach from=$machfavorte item=v}}
                        <li class="right_list">
                            <a href="read.php?bookid={{$v->id}}"><img src="{{$v->cover}}" class="img2"></a>
                            <div class="img_info">
                                <p><a href="read.php?bookid={{$v->id}}" class="img_info_one">{{$v->book_name}}</a></p>
                                <p><a href="read.php?bookid={{$v->id}}" class="img_info_two"><img src="images/user.0.1.png">{{$v->author}}</a></p>
                            </div>
                        </li>
                    {{/foreach}}
                    <div class="clearfloat"></div>
                </ul>
            </div>
        </div>
    </div>
    {{include file="foot.tpl"}}

<!--登录和注册结束-->
<!---->
<!---->
<!--插入jq与js-->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-3.1.1.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
    $(function(){
        /*分类鼠标移入样式及右侧栏目标题鼠标移入样式*/
        $('[class="color_red"],[class="img_info_one"]').mouseover(function (){
            $(this).css('color','red');
            $(this).parent().find('span').css('color','red');
        })
        $('[class="color_red"],[class="img_info_one"]').mouseout(function (){
            $(this).css('color',"");
            $(this).parent().find('span').css('color','');
        })
        $('[class="writer_color"],[class="img_info_two"]').mouseover(function (){/*作者鼠标移入样式*/
            $(this).css('color','black');
        })
        $('[class="writer_color"],[class="img_info_two"]').mouseout(function (){
            $(this).css('color',"");
        })
        $('[class="three_right_button_one"]').mouseover(function (){/*书籍详情鼠标移入样式*/
            $(this).css('background-color','#ED4259');
        })
        $('[class="three_right_button_one"]').mouseout(function (){
            $(this).css('background-color',"");
        })
        $('[class="three_right_button_two"]').mouseover(function (){/*加入书架鼠标移入样式*/
            $(this).css('background-color','#F0F5FF');
        })
        $('[class="three_right_button_two"]').mouseout(function (){
            $(this).css('background-color',"");
        })
        var w = $('[class="img_change"]').width();//容器宽度
        $('[class="img_change"]').mouseover(function (){/*鼠标移入图片放大*/
            /*$(this).css({width:(100*1.2)+'px',height:(140*1.2)+'px'});*/
            var img_w = $(this).width();//图片宽度
            var img_h = $(this).height();//图片高度
            if(img_w>w){//如果图片宽度超出容器宽度--要撑破了
                var height = (w*img_h)/img_w; //高度等比缩放
                alert(height);
                $(this).css({"width":w,"height":height});//设置缩放后的宽度和高度
            }
        })
        /*$('[class="img_change"]').mouseout(function (){
            $(this).css({width:'100px',height:'140px'});
        })*/

        /*var w = $('[class="img_change"]').width();//容器宽度
        $('[class="img_change"] img').each(function(){//如果有很多图片，我们可以使用each()遍历
            var img_w = $(this).width();//图片宽度
            var img_h = $(this).height();//图片高度
            if(img_w>w){//如果图片宽度超出容器宽度--要撑破了
                var height = (w*img_h)/img_w; //高度等比缩放
                $(this).css({"width":w,"height":height});//设置缩放后的宽度和高度
            }
        });*/

    })

</script>
</body>
</html>