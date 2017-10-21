<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s"  uri="/struts-tags"%> 
<% String path = application.getRealPath("");%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="views/index/templatemo_style.css" rel="stylesheet" type="text/css">
<title> 总界面 </title>
</head>
<body>
<%=path %><br/>

<!-- 指向一个静态的html页面，可以直接用链接方式，转过去。 -->
<a href="<%=path %>/views/floyWindow/qq.html"> QQ浮窗 </a><br/>

<!-- 指向一个动态的jsp页面，不可以直接用链接了。如下第一种写法是不行的，可以定义action跳转。 -->
<a href="<%=path %>/views/struts/index_struts.jsp"> struts 可以链接过去，但是有问题</a><br/>
<s:a action="hellostruts">hello_struts</s:a>
<div id="templatemo_wrapper">
  <div id="templatemo_container">

    <div id="templatemo_header_panel">
      <div id="logo">
        <p>Home</p>
        <p style="padding-left:40px">System Windows</p>
      </div>
        </div>
    
    <div id="templatemo_top_panel">
    	<div id="templatemo_latest_project">
            <div class="image_frame_01">
                <img src="views/index/images/templatemo_image_01.jpg" alt="image" width="980" height="170"  />
                <span></span>            </div>
            
            <div id="latest_project_content">
                <div class="header_01">Free CSS Template</div>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam feugiat mi lacus, sed accumsan neque. Donec condimentum molestie laoreet.</p>
                <div class="rc_btn_01"><a href="sc.chinaz.com">Read more</a></div>
			</div>
                        
            <div class="cleaner"></div>
		</div>
        
        <div id="templatemo_menu">
            <ul>
                <li><a href="sc.chinaz.com" class="current"><span></span>Home</a></li>
                <li><a href="sc.chinaz.com"><span></span>Services</a></li>
                <li><a href="sc.chinaz.com"><span></span>Portfolio</a></li>
                <li><a href="http://sc.chinaz.com/page/1" target="_parent"><span></span>Templates</a></li>
                <li><a href="sc.chinaz.com"><span></span>About Us</a></li>                
                <li><a href="sc.chinaz.com"><span></span>Contact Us</a></li>
            </ul>
	    </div> 
    </div>
    
    <div id="templatemo_content">
   	
        <div id="templatemo_content_left">
        	<div class="header_02">Welcome to Design Team</div>
            <div class="image_frame_02"><a href="sc.chinaz.com"><img src="views/index/images/templatemo_image_02.jpg" alt="image" /></a></div>
            <p class="bi_para">This website template is provided by <a href="http://sc.chinaz.com" target="_parent">sc.chinaz.com</a>. You may download, modify and apply this layout for your personal or business websites. Credit go to <a href="http://king-manga-man.deviantart.com/" target="_blank">King-manga-man</a> and <a href="http://www.photovaco.com" target="_blank">Free Photos</a> for photos.</p>
          <p>Sed consectetur, lacus et dictum tristique, odio neque elementum ante, nec eleifend leo dolor vel tortor. Vivamus vulputate felis. Etiam luctus. Quisque facilisis suscipit elit. Curabitur eleifend.</p>
            <div class="rc_btn_02"><a href="">Read more</a></div>
            
            <div class="margin_bottom_40"></div>
            
            <div class="content_left_two_column margin_right_40">
            	<div class="header_02">Design Awards</div>
                <p>Aenean eleifend, neque hendrerit elementum sodales, odio erat sagittis quam, sed tempor orci magna vitae tellus.</p>
                <ul>
                	<li>Quisque facilisis suscipit elit</li>
                    <li>Lacus et dictum tristique</li>
                    <li>Eeros ac tincidunt aliquam</li>
                    <li>Nullam commodo arcu non facilisis</li>
              </ul>
                <div class="rc_btn_02"><a href="sc.chinaz.com">Read more</a></div>
            </div>
            
            <div class="content_left_two_column">
            	<div class="header_02"> Innovations</div>
              <p>Fusce faucibus tincidunt leo vitae pretium. Fusce auctor risus sit amet metus viverra vestibulum. Nunc at arcu nisl.</p>
                <ul>
                	<li>Praesent nec placerat ipsum</li>
                    <li>Curabitur vitae semper arcu</li>
                    <li>Sed mattis mi sit amet</li>
                    <li>Nunc sit amet erat in nibh</li>
                </ul>
                <div class="rc_btn_02"><a href="sc.chinaz.com">Read more</a></div>
            </div>
            
            <div class="cleaner"></div>
        </div> <!-- end of content left -->
        
        <div id="templatemo_content_right">
        
        	<div class="content_right_section">
            	
                <div class="header_02">New Projects</div> 
                
                <div class="news_section">
                  <div class="news_image"><a href="sc.chinaz.com"><img src="views/index/images/templatemo_image_03.jpg" alt="image 3" /></a></div>
                <div class="news_content">
                      <div class="news_title">onec adipiscing luctus</div>
                        <p>Maecenas vel libero quis diam sollicitudin euismod ac eget quam. Quisque hendrerit. 
					<br /><a href="sc.chinaz.com">Details</a></p>
                  </div>
              </div>
                
                <div class="margin_bottom_20"></div>
                
                <div class="news_section">
                    <div class="news_image"><a href="http://sc.chinaz.com" target="_parent"><img src="views/index/images/templatemo_image_04.jpg" alt="image 4" /></a></div>
    <div class="news_content">
                      <div class="news_title">Quisque interdum urna a</div>
                        <p>In suscipit, odio in egestas hendrerit, lorem purus tristique elit, at mattis urna diam sit amet.
				<br /><a href="sc.chinaz.com">Details</a></p>
                  </div>
                </div>
                
                 <div class="margin_bottom_20"></div>
                
                <div class="news_section">
                    <div class="news_image"><a href="sc.chinaz.com"><img src="views/index/images/templatemo_image_05.jpg" alt="image 5" /></a></div>
                <div class="news_content">
                      <div class="news_title">Praesent non dui</div>
                        <p>Vestibulum eget libero ante, vel hendrerit velit. Pellentesque habitant morbi tristique senectus et.
					<br /><a href="sc.chinaz.com">Details</a></p>
                  </div>
                </div>
                
                <div class="margin_bottom_20"></div>
                
                <a href="http://validator.w3.org/check?uri=referer"><img style="border:0;width:88px;height:31px" src="http://www.w3.org/Icons/valid-xhtml10" alt="Valid XHTML 1.0 Transitional" width="88" height="31" vspace="8" border="0" /></a>
            <a href="http://jigsaw.w3.org/css-validator/check/referer"><img style="border:0;width:88px;height:31px"  src="http://jigsaw.w3.org/css-validator/images/vcss-blue" alt="Valid CSS!" vspace="8" border="0" /></a>
            
            </div>
            
        </div> <!-- end of content right -->
        
        <div class="cleaner"></div>
        
    </div>
    
    <div id="templatemo_footer">
        Copyright 漏 2024 <a href="http://sc.chinaz.com" target="_parent"><strong>Your Company Name</strong></a> | Designed by <a href="http://sc.chinaz.com/page/1" target="_parent">cssk8</a>    </div> 
    <!-- end of footer -->
</div>
</div>

</body>
</html>