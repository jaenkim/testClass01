<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	response.setContentType("text/html;charset=UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline
}

article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
	display: block
}

body {
	line-height: 1
}

ol, ul {
	list-style: none
}

blockquote, q {
	quotes: none
}

blockquote:before, blockquote:after, q:before, q:after {
	content: '';
	content: none
}

table {
	border-collapse: collapse;
	border-spacing: 0
}
</style>
<style>
/* h1 {
  background-color: pink;
  color: white;
  text-align: center;
}

form {
  margin:100; padding:100; text-align:center;
}

#newbtn {
	color: rgba(30, 22, 54, 0.6);
	box-shadow: rgba(30, 22, 54, 0.4) 0 0px 0px 2px inset;
}

a {
	margin: 5px;
} */
button {
	margin: 0;
	padding: 0;
	border: 0;
	font-weight: normal;
	font-style: normal;
	font-size: 100%;
	line-height: 1;
	font-family: inherit;
}

.clearfix:before, .clearfix:after {
	display: table;
	content: "";
}

.clearfix:after {
	clear: both
}

html {
	background-color: white
}

body {
	color: black;
	font-family: "Helvetica Neue", Helvetica, Arial, Verdana, sans-serif;
	font-size: 13px;
	text-align: center;
}

input
[
type
=
text
]
:not
 
(
.basic
 
),
input
[
type
=
tel
]
:not
 
(
.basic
 
),
input
[
type
=
email
]
:not

	
(
.basic
 
),
input
[
type
=
password
]
:not
 
(
.basic
 
),
select
:not
 
(
.basic
 
),
textarea
:not
 
(
.basic
 
)
{
border-radius
:
 
3
px
;

	
-moz-border-radius
:
 
3
px
;

	
-webkit-border-radius
:
 
3
px
;

	
border
:
 
1
px
 
solid
 
#ccc
;

	
display
:
 
inline-block
;

	
font-size
:
 
17
px
;

	
padding
:
 
12
px
 
16
px
;

	
width
:
 
210
px
;


}
input
[
type
=
text
]
:focus
:not
 
(
.basic
 
),
input
[
type
=
tel
]
:focus
:not
 
(
.basic

	
),
input
[
type
=
email
]
:focus
:not
 
(
.basic
 
),
input
[
type
=
password
]
:focus
:not

	
(
.basic
 
),
select
:focus
:not
 
(
.basic
 
),
textarea
:focus
:not
 
(
.basic
 
)
{
box-shadow
:
 
inset
 
0
1
px
 
3
px
 
rgba
(0
,
0,
0,
0
.1
)
,
0
0
8
px

		
rgba
(89
,
222,
44,
0
.4
);

	
-moz-box-shadow
:
 
inset
 
0
1
px
 
3
px
 
rgba
(0
,
0,
0,
0
.1
)
,
0
0
8
px

		
rgba
(89
,
222,
44,
0
.4
);

	
-webkit-box-shadow
:
 
inset
 
0
1
px
 
3
px
 
rgba
(0
,
0,
0,
0
.1
)
,
0
0
8
px

		
rgba
(89
,
222,
44,
0
.4
);

	
border-color
:
 
#59de2c
;

	
outline
:
 
none
;


}
input
[
type
=
text
]
.error
:not
 
(
.basic
 
),
input
[
type
=
tel
]
.error
:not
 
(
.basic

	
),
input
[
type
=
email
]
.error
:not
 
(
.basic
 
),
input
[
type
=
password
]
.error
:not

	
(
.basic
 
),
select
.error
:not
 
(
.basic
 
),
textarea
.error
:not
 
(
.basic
 
)
{
border-color
:
 
#f90
 
!
important


}
input
[
type
=
text
]
.error
:focus
:not
 
(
.basic
 
),
input
[
type
=
tel
]
.error
:focus
:not

	
(
.basic
 
),
input
[
type
=
email
]
.error
:focus
:not
 
(
.basic
 
),
input
[
type
=
password
]
.error
:focus
:not

	
(
.basic
 
),
select
.error
:focus
:not
 
(
.basic
 
),
textarea
.error
:focus
:not
 
(
.basic

	
)
{
box-shadow
:
 
inset
 
0
1
px
 
3
px
 
rgba
(0
,
0,
0,
0
.1
)
,
0
0
8
px

		
rgba
(255
,
153,
0,
0
.4
);

	
-moz-box-shadow
:
 
inset
 
0
1
px
 
3
px
 
rgba
(0
,
0,
0,
0
.1
)
,
0
0
8
px

		
rgba
(255
,
153,
0,
0
.4
);

	
-webkit-box-shadow
:
 
inset
 
0
1
px
 
3
px
 
rgba
(0
,
0,
0,
0
.1
)
,
0
0
8
px

		
rgba
(255
,
153,
0,
0
.4
);

	
border-color
:
 
#f90
;


}
body>#home section .section_title {
	color: #f90;
	font-size: 32px;
	font-weight: 500;
}

body>#home section .section_subtitle {
	color: #807b6e;
	font-size: 18px;
	font-weight: 500;
	margin-top: 22px;
}

body>#home section .rounded_button {
	border-radius: 500px;
	-moz-border-radius: 500px;
	-webkit-border-radius: 500px;
	background-color: rgba(50, 50, 50, 0.05);
	background-repeat: repeat-x;
	background-image: linear-gradient(225deg, rgba(50, 50, 50, 0.01),
		rgba(50, 50, 50, 0.05));
	background-image: -moz-linear-gradient(225deg, rgba(50, 50, 50, 0.01),
		rgba(50, 50, 50, 0.05));
	background-image: -ms-linear-gradient(225deg, rgba(50, 50, 50, 0.01),
		rgba(50, 50, 50, 0.05));
	background-image: -o-linear-gradient(225deg, rgba(50, 50, 50, 0.01),
		rgba(50, 50, 50, 0.05));
	background-image: -webkit-linear-gradient(225deg, rgba(50, 50, 50, 0.01),
		rgba(50, 50, 50, 0.05));
	display: inline-block;
	padding: 4px;
}

body>#home section .rounded_button:hover {
	background-color: rgba(102, 229, 46, 0.15);
	background-repeat: repeat-x;
	background-image: linear-gradient(225deg, rgba(102, 229, 46, 0.07),
		rgba(102, 229, 46, 0.15));
	background-image: -moz-linear-gradient(225deg, rgba(102, 229, 46, 0.07),
		rgba(102, 229, 46, 0.15));
	background-image: -ms-linear-gradient(225deg, rgba(102, 229, 46, 0.07),
		rgba(102, 229, 46, 0.15));
	background-image: -o-linear-gradient(225deg, rgba(102, 229, 46, 0.07),
		rgba(102, 229, 46, 0.15));
	background-image: -webkit-linear-gradient(225deg, rgba(102, 229, 46, 0.07),
		rgba(102, 229, 46, 0.15));
}

body>#home section .rounded_button:active {
	padding: 5px
}

body>#home section .rounded_button:active span {
	padding: 6px 14px
}

body>#home section .rounded_button span {
	border-radius: 500px;
	-moz-border-radius: 500px;
	-webkit-border-radius: 500px;
	background-color: #3baf16;
	background-repeat: repeat-x;
	background-image: linear-gradient(top, #66e52e, #3baf16);
	background-image: -khtml-gradient(linear, left top, left bottom, from(#66e52e),
		to(#3baf16));
	background-image: -moz-linear-gradient(top, #66e52e, #3baf16);
	background-image: -ms-linear-gradient(top, #66e52e, #3baf16);
	background-image: -o-linear-gradient(top, #66e52e, #3baf16);
	background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #66e52e),
		color-stop(100%, #3baf16));
	background-image: -webkit-linear-gradient(top, #66e52e, #3baf16);
	color: #fff;
	display: inline-block;
	font-size: 12px;
	font-weight: bold;
	padding: 7px 15px;
}

body>#home section .photo_container {
	background-image:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/sprites-57e14dd7782dcbfa62637adc0ad5dba7.png);
	background-position: -169px -1px;
	background-repeat: no-repeat;
	display: inline-block;
	height: 100px;
	padding: 8px;
	width: 100px;
}

body>#home section .photo_container .photo {
	background-image:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/sprites-57e14dd7782dcbfa62637adc0ad5dba7.png);
	background-repeat: no-repeat;
	display: inline-block;
	height: 100px;
	width: 100px;
}

body>#home section .quote {
	color: #807b6e;
	font-size: 23px;
	font-weight: lighter;
	line-height: 1.4em;
	position: relative;
	word-spacing: 1px;
}

body>#home section .quote .left_quote, body>#home section .quote .right_quote
	{
	background-image:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/sprites-57e14dd7782dcbfa62637adc0ad5dba7.png);
	background-repeat: no-repeat;
	display: inline-block;
	height: 24px;
	position: absolute;
	top: 0;
	width: 27px;
}

body>#home section .quote .left_quote {
	background-position: -131px -39px;
	left: 5px;
}

body>#home section .quote .right_quote {
	background-position: -131px -64px;
	right: 5px;
}

body>#home section .quote_attribution {
	display: inline-block;
	font-size: 14px;
}

body>#home section .quote_attribution b {
	color: black;
	display: inline-block;
	font-weight: bold;
}

body>#home section .quote_attribution span {
	color: #999488;
	display: inline-block;
}

body>#home #main_section {
	background-image:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/main_section_background-3e25d942231ecfc538d700330e8192be.jpg);
	background-position: center 15px;
	background-repeat: no-repeat;
	background-size: cover;
	height: 433px;
	position: relative;
}

body>#home #main_section>.positional {
	margin: 0 auto;
	position: relative;
	width: 1071px;
}

body>#home #main_section>.positional #resource_swirl {
	background-image:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/resource_swirl-9fbfb13fdce897776158f38258f250de.png);
	background-repeat: no-repeat;
	height: 323px;
	position: absolute;
	left: 299px;
	opacity: 0.68;
	top: 15px;
	width: 772px;
	z-index: 1;
}

body>#home #main_section>.positional>.positional {
	background-color: rgba(153, 148, 136, 0);
	background-repeat: repeat-x;
	background-image: linear-gradient(top, rgba(153, 148, 136, 0.35),
		rgba(153, 148, 136, 0));
	background-image: -khtml-gradient(linear, left top, left bottom, from(rgba(153, 148, 136,
		0.35)), to(rgba(153, 148, 136, 0)));
	background-image: -moz-linear-gradient(top, rgba(153, 148, 136, 0.35),
		rgba(153, 148, 136, 0));
	background-image: -ms-linear-gradient(top, rgba(153, 148, 136, 0.35),
		rgba(153, 148, 136, 0));
	background-image: -o-linear-gradient(top, rgba(153, 148, 136, 0.35),
		rgba(153, 148, 136, 0));
	background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, rgba(153,
		148, 136, 0.35)), color-stop(100%, rgba(153, 148, 136, 0)));
	background-image: -webkit-linear-gradient(top, rgba(153, 148, 136, 0.35),
		rgba(153, 148, 136, 0));
	height: 368px;
	padding: 65px 0 0;
	width: 420px;
}

body>#home #main_section>.positional>.positional h1 {
	color: #fff;
	font-size: 36px;
	font-weight: bold;
	line-height: 50px;
	text-shadow: 0 0 12px rgba(0, 0, 0, 0.5);
}

body>#home #main_section>.positional>.positional #main_buttons {
	margin: 40px 0 23px;
	position: relative;
	z-index: 2;
}

body>#home #main_section>.positional>.positional #main_buttons button {
	border-radius: 4px;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	background-color: rgba(102, 229, 46, 0.18);
	cursor: pointer;
	display: inline-block;
	height: 56px;
	padding: 5px;
	vertical-align: top;
}

body>#home #main_section>.positional>.positional #main_buttons button:hover
	{
	background-color: rgba(102, 229, 46, 0.3)
}

body>#home #main_section>.positional>.positional #main_buttons button:active
	{
	padding: 6px
}

body>#home #main_section>.positional>.positional #main_buttons button:active .button_text
	{
	box-shadow: 0 0 8px rgba(0, 0, 0, 0.35);
	-moz-box-shadow: 0 0 8px rgba(0, 0, 0, 0.35);
	-webkit-box-shadow: 0 0 8px rgba(0, 0, 0, 0.35);
	height: 44px;
	padding: 0 16px;
}

body>#home #main_section>.positional>.positional #main_buttons button .button_text
	{
	border-radius: 4px;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	box-shadow: 0 0 4px rgba(102, 229, 46, 0.2);
	-moz-box-shadow: 0 0 4px rgba(102, 229, 46, 0.2);
	-webkit-box-shadow: 0 0 4px rgba(102, 229, 46, 0.2);
	background-color: #3baf16;
	background-repeat: repeat-x;
	background-image: linear-gradient(top, #66e52e, #3baf16);
	background-image: -khtml-gradient(linear, left top, left bottom, from(#66e52e),
		to(#3baf16));
	background-image: -moz-linear-gradient(top, #66e52e, #3baf16);
	background-image: -ms-linear-gradient(top, #66e52e, #3baf16);
	background-image: -o-linear-gradient(top, #66e52e, #3baf16);
	background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #66e52e),
		color-stop(100%, #3baf16));
	background-image: -webkit-linear-gradient(top, #66e52e, #3baf16);
	color: #fff;
	display: inline-block;
	font-size: 18px;
	font-weight: bold;
	height: 46px;
	line-height: 46px;
	padding: 0 17px;
	text-shadow: 0 0 3px #246b0d;
}

body>#home #main_section>.positional>.positional h3 {
	height: 37px;
	margin: 10px auto 0;
	width: 127px;
}

body>#home #main_section>.positional>.positional h3>* {
	display: inline-block;
	line-height: 37px;
}

body>#home #main_section>.positional>.positional h3 b {
	color: #A2EB83;
	float: left;
	font-size: 15px;
	font-weight: bold;
}

body>#home #main_section>.positional>.positional h3 #learn_more {
	color: #fff;
	cursor: pointer;
	float: right;
	font-weight: 500;
	font-size: 17px;
	left: 11px;
	position: relative;
}

body>#home #main_section>.positional>.positional h3 #learn_more:hover {
	opacity: 0.9
}

body>#home #main_section>.positional>.positional h3 #learn_more:hover span
	{
	opacity: 0.8
}

body>#home #main_section>.positional>.positional h3 #learn_more span {
	background-image:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/sprites-57e14dd7782dcbfa62637adc0ad5dba7.png);
	background-position: -131px -1px;
	background-repeat: no-repeat;
	display: inline-block;
	height: 37px;
	margin-left: -7px;
	position: relative;
	top: 1px;
	width: 27px;
}

body>#home #main_section #light_bar {
	background-color: rgba(255, 255, 255, 0.25);
	bottom: 0;
	position: absolute;
	height: 33px;
	width: 100%;
	z-index: 0;
}

body>#home #easy_section {
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-wekbit-box-sizing: border-box;
	height: 490px;
	overflow: hidden;
	padding: 0 10px;
	position: relative;
	margin: 0 auto;
	width: 1071px;
}

body>#home #easy_section header {
	float: right;
	padding: 165px 0 0;
	vertical-align: middle;
}

body>#home #easy_section header .rounded_button {
	margin-top: 45px
}

body>#home #easy_section #screenshot {
	border-radius: 10px;
	-moz-border-radius: 10px;
	-webkit-border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
	-moz-box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
	-webkit-box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
	background-color: rgba(255, 255, 255, 0.95);
	background-repeat: no-repeat;
	display: none;
	height: 430px;
	left: 6px;
	position: absolute;
	top: 30px;
	width: 800px;
	z-index: 3;
}

body>#home #easy_section #screenshots {
	display: inline-block;
	float: left;
	padding: 140px 0 0;
}

body>#home #easy_section #screenshots li {
	color: #807b6e;
	display: inline-block;
	vertical-align: top;
}

body>#home #easy_section #screenshots li:nth-child(2) {
	margin: 0 60px
}

body>#home #easy_section #screenshots figure {
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	box-shadow: 0 0 7px rgba(0, 0, 0, 0.25);
	-moz-box-shadow: 0 0 7px rgba(0, 0, 0, 0.25);
	-webkit-box-shadow: 0 0 7px rgba(0, 0, 0, 0.25);
	cursor: pointer;
	margin: 0 0 24px;
	height: 135px;
	width: 220px;
}

body>#home #easy_section #screenshots figure:hover {
	box-shadow: 0 0 8px rgba(0, 0, 0, 0.45);
	-moz-box-shadow: 0 0 8px rgba(0, 0, 0, 0.45);
	-webkit-box-shadow: 0 0 8px rgba(0, 0, 0, 0.45);
}

body>#home #easy_section #screenshots #team_screenshot {
	background-image:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/screenshots/team-6c396e66857c2c665064fb48ecbac4ed.jpg);
	background-position: -22px -163px;
	background-repeat: no-repeat;
}

body>#home #easy_section #screenshots #tasks_screenshot {
	background-image:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/screenshots/tasks-a7ad851e7cdacc5985f6e05990d34fb5.jpg);
	background-position: 0 -350px;
	background-repeat: no-repeat;
}

body>#home #easy_section #screenshots #docs_screenshot {
	background-image:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/screenshots/docs-6091078182b895314acbec37d9644d8f.jpg);
	background-position: -520px 0;
	background-repeat: no-repeat;
}

body>#home #easy_section #screenshots p {
	font-size: 16px;
	line-height: 1.7em;
}

body>#home #connected_section {
	background-image:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/connected_section_background-f766f5eab5e641b914eaf5292010d397.jpg);
	background-position: center top;
	background-repeat: no-repeat;
	background-size: cover;
	height: 525px;
	overflow-x: hidden;
	position: relative;
	z-index: 2;
}

body>#home #connected_section .positional {
	height: 100%;
	margin: 0 auto;
	position: relative;
	width: 1071px;
}

body>#home #connected_section .positional header {
	float: left;
	margin: 210px 0 0 81px;
	position: relative;
	z-index: 1;
}

body>#home #connected_section .positional header .section_subtitle {
	margin-top: 15px
}

body>#home #connected_section .positional header .rounded_button {
	margin-top: 75px
}

body>#home #connected_section .positional #hand_image {
	background:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/hand_erasing-39780b43df6a71b001f599d6a796fe36.png);
	background-repeat: no-repeat;
	bottom: 0;
	height: 386px;
	position: absolute;
	left: -180px;
	width: 637px;
	z-index: 0;
}

body>#home #connected_section .positional #services {
	float: right;
	margin: 230px 140px 0 0;
}

body>#home #connected_section .positional #services li {
	display: inline-block;
	margin: 0 12px;
	position: relative;
}

body>#home #connected_section .positional #services li h4 {
	color: #807b6e;
	font-size: 22px;
	font-weight: lighter;
	position: absolute;
	white-space: nowrap;
}

body>#home #connected_section .positional #services li .service_icon {
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-wekbit-box-sizing: border-box;
	background-image:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/sprites-57e14dd7782dcbfa62637adc0ad5dba7.png);
	background-repeat: no-repeat;
	display: inline-block;
}

body>#home #connected_section .positional #services li .service_icon span
	{
	background-image:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/sprites-57e14dd7782dcbfa62637adc0ad5dba7.png);
	background-repeat: no-repeat;
	display: inline-block;
}

body>#home #connected_section .positional #services li .service_dots {
	background-image:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/sprites-57e14dd7782dcbfa62637adc0ad5dba7.png);
	background-repeat: no-repeat;
	display: inline-block;
	height: 109px;
	position: absolute;
	width: 42px;
}

body>#home #connected_section .positional #services li#box_service {
	top: 7px
}

body>#home #connected_section .positional #services li#box_service h4 {
	left: -10px;
	top: -99px;
}

body>#home #connected_section .positional #services li#box_service .service_icon
	{
	background-position: -1px -189px;
	height: 44px;
	padding: 6px;
	width: 44px;
}

body>#home #connected_section .positional #services li#box_service .service_icon span
	{
	background-position: -63px -241px;
	height: 32px;
	width: 32px;
}

body>#home #connected_section .positional #services li#box_service .service_dots
	{
	-o-transform: rotate(352deg);
	-moz-transform: rotate(352deg);
	-ms-transform: rotate(352deg);
	-webkit-transform: rotate(352deg);
	background-position: -231px -228px;
	left: -59px;
	top: -83px;
}

body>#home #connected_section .positional #services li#google_drive_service
	{
	top: 4px
}

body>#home #connected_section .positional #services li#google_drive_service h4
	{
	left: 15px;
	top: -109px;
}

body>#home #connected_section .positional #services li#google_drive_service .service_icon
	{
	background-position: -1px -91px;
	height: 52px;
	padding: 6px;
	width: 56px;
}

body>#home #connected_section .positional #services li#google_drive_service .service_icon span
	{
	background-position: -58px -90px;
	height: 40px;
	width: 44px;
}

body>#home #connected_section .positional #services li#google_drive_service .service_dots
	{
	-o-transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-ms-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	background-position: -112px -118px;
	left: -35px;
	top: -95px;
}

body>#home #connected_section .positional #services li#dropbox_service h4
	{
	left: -123px;
	top: 124px;
}

body>#home #connected_section .positional #services li#dropbox_service .service_icon
	{
	background-position: -1px -234px;
	height: 55px;
	padding: 6px 7px;
	width: 61px;
}

body>#home #connected_section .positional #services li#dropbox_service .service_icon span
	{
	background-position: -63px -197px;
	height: 43px;
	width: 48px;
}

body>#home #connected_section .positional #services li#dropbox_service .service_dots
	{
	-o-transform: rotate(220deg);
	-moz-transform: rotate(220deg);
	-ms-transform: rotate(220deg);
	-webkit-transform: rotate(220deg);
	background-position: -155px -118px;
	left: 9px;
	top: 58px;
}

body>#home #connected_section .positional #services li#gmail_service {
	top: 7px
}

body>#home #connected_section .positional #services li#gmail_service h4
	{
	left: 107px;
	top: 118px;
}

body>#home #connected_section .positional #services li#gmail_service .service_icon
	{
	background-position: -1px -143px;
	height: 45px;
	padding: 7px 6px;
	width: 57px;
}

body>#home #connected_section .positional #services li#gmail_service .service_icon span
	{
	background-position: -60px -131px;
	height: 32px;
	width: 45px;
}

body>#home #connected_section .positional #services li#gmail_service .service_dots
	{
	-o-transform: rotate(320deg);
	-moz-transform: rotate(320deg);
	-ms-transform: rotate(320deg);
	-webkit-transform: rotate(320deg);
	background-position: -198px -118px;
	left: 23px;
	top: 54px;
}

body>#home #connected_section .positional #services li#google_calendar_service
	{
	top: 7px
}

body>#home #connected_section .positional #services li#google_calendar_service h4
	{
	left: 10px;
	top: -90px;
}

body>#home #connected_section .positional #services li#google_calendar_service .service_icon
	{
	background-position: -1px -189px;
	height: 44px;
	padding: 6px;
	width: 44px;
}

body>#home #connected_section .positional #services li#google_calendar_service .service_icon span
	{
	background-position: -60px -164px;
	height: 32px;
	width: 32px;
}

body>#home #connected_section .positional #services li#google_calendar_service .service_dots
	{
	-o-transform: rotate(210deg);
	-moz-transform: rotate(210deg);
	-ms-transform: rotate(210deg);
	-webkit-transform: rotate(210deg);
	background-position: -241px -118px;
	left: 80px;
	top: -56px;
}

body>#home #solid_section {
	background:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/avatar_swirl-e25696afe186b0e959ca5efe88a8d0ab.jpg)
		9% -700px repeat-y,
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/avatar_swirl-e25696afe186b0e959ca5efe88a8d0ab.jpg)
		89% -30px repeat-y;
	padding: 70px 0 90px;
	position: relative;
}

body>#home #solid_section hgroup, body>#home #solid_section #testimonials
	{
	background-color: rgba(255, 255, 255, 0.97)
}

body>#home #solid_section hgroup {
	box-shadow: 0 0 50px 50px rgba(255, 255, 255, 0.98);
	-moz-box-shadow: 0 0 50px 50px rgba(255, 255, 255, 0.98);
	-webkit-box-shadow: 0 0 50px 50px rgba(255, 255, 255, 0.98);
	display: inline-block;
	margin: 0 auto;
	padding: 20px 50px;
	position: relative;
	z-index: 1;
}

body>#home #solid_section .section_subtitle {
	line-height: 1.6em
}

body>#home #solid_section #testimonials {
	box-shadow: 0 0 150px 150px rgba(255, 255, 255, 0.98);
	-moz-box-shadow: 0 0 150px 150px rgba(255, 255, 255, 0.98);
	-webkit-box-shadow: 0 0 150px 150px rgba(255, 255, 255, 0.98);
	display: inline-block;
	margin: 60px auto 0;
	width: auto;
}

body>#home #solid_section #testimonials li {
	overflow: hidden;
	white-space: nowrap;
}

body>#home #solid_section #testimonials li:not(last-child) {
	margin: 0 0 35px
}

body>#home #solid_section #testimonials li .photo_container, body>#home #solid_section #testimonials li .positional
	{
	float: left
}

body>#home #solid_section #testimonials li .positional {
	margin-left: 25px;
	text-align: left;
}

body>#home #solid_section #testimonials li .positional .quote {
	padding: 8px 46px 0
}

body>#home #solid_section #testimonials li .positional .quote_attribution
	{
	margin: 17px 0 0;
	padding: 0 0 0 46px;
}

body>#home #solid_section #testimonials li .positional .quote_attribution b
	{
	margin-right: 3px
}

body>#home #solid_section #testimonials li#nasser_e .photo {
	background-position: -387px -304px
}

body>#home #solid_section #testimonials li#seth_o .photo {
	background-position: -690px -203px
}

body>#home #solid_section #testimonials li#immad_a .photo {
	background-position: -387px -405px
}

body>#home #solid_section #testimonials li#eva_a .photo {
	background-position: -387px -1px
}

body>#home #solid_section #testimonials li#nick_s .photo {
	background-position: -589px -304px
}

body>#home #solid_section #testimonials li#paul_d .photo {
	background-position: -488px -1px
}

body>#home #solid_section #button_container {
	display: block
}

body>#home #solid_section #button_container .rounded_button {
	clear: both;
	margin: 30px auto 0;
}

body>#home #everyone_section {
	background-color: #f5f3f0;
	background-image:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/hill_background-4a90c16b6cc45e1d261b56da5fc65141.png);
	background-position: bottom center;
	background-repeat: no-repeat;
	margin: 0 auto;
	padding: 20px 0 30px;
	position: relative;
}

body>#home #everyone_section .positional {
	margin: 0 auto;
	position: relative;
	width: 1071px;
}

body>#home #everyone_section .positional .graphic {
	background-image:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/sprites-57e14dd7782dcbfa62637adc0ad5dba7.png);
	background-repeat: no-repeat;
	position: absolute;
}

body>#home #everyone_section .positional .graphic#big_cloud {
	background-position: -532px -506px;
	height: 136px;
	left: 10px;
	opacity: 0.9;
	top: 20px;
	width: 258px;
	z-index: 1;
}

body>#home #everyone_section .positional .graphic#small_cloud {
	background-position: -1px -290px;
	height: 92px;
	left: 450px;
	opacity: 0.75;
	top: 190px;
	width: 167px;
	z-index: 1;
}

body>#home #everyone_section .positional hgroup {
	margin: 0 auto;
	padding: 40px 0 0;
	position: relative;
	z-index: 2;
}

body>#home #everyone_section .positional hgroup .rounded_button {
	margin-top: 35px
}

body>#home #everyone_section .positional #use_cases {
	font-size: 14px;
	margin: 50px 0 0;
	position: relative;
	z-index: 2;
}

body>#home #everyone_section .positional #use_cases li {
	border-radius: 10px;
	-moz-border-radius: 10px;
	-webkit-border-radius: 10px;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-wekbit-box-sizing: border-box;
	background-color: rgba(255, 255, 255, 0.35);
	color: #807b6e;
	display: inline-block;
	margin: 0 25px 30px;
	padding: 20px 0;
	vertical-align: top;
	width: 267px;
}

body>#home #everyone_section .positional #use_cases h4 {
	color: #57534b;
	font-size: 16px;
	font-weight: bold;
	margin: 0 0 12px;
}

body>#home #everyone_section .positional #use_cases p {
	display: inline-block;
	line-height: 1.5em;
}

body>#home #signup_section {
	border-top: 8px solid #f90;
	margin: 0 auto;
	padding: 175px 0 150px;
}

body>#home #signup_section hgroup .section_title {
	background-image:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/sprites-57e14dd7782dcbfa62637adc0ad5dba7.png);
	background-position: -1px -1px;
	display: block;
	height: 41px;
	margin: 0 auto;
	text-indent: -9000px;
	width: 129px;
}

body>#home #signup_section hgroup .section_subtitle {
	border-radius: 100px;
	-moz-border-radius: 100px;
	-webkit-border-radius: 100px;
	background-color: #fff;
	display: inline-block;
	font-size: 22px;
	font-weight: normal;
	margin: 0 auto;
	padding: 0 15px;
	position: relative;
	top: 100px;
	z-index: 1;
}

body>#pricing {
	border-top: 8px solid #f90;
	font-size: 15px;
	margin: 0 auto;
	padding: 40px 0 50px;
	width: 100%;
}

body>#pricing h1 {
	margin: 0 auto;
	width: 130px;
}

body>#pricing h1 a {
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	background-image:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/sprites-57e14dd7782dcbfa62637adc0ad5dba7.png);
	background-position: -2px -2px;
	border: 2px solid transparent;
	display: block;
	height: 41px;
	text-indent: -9000px;
}

body>#pricing h1 a:hover {
	box-shadow: 0 0 0 1px #f90;
	-moz-box-shadow: 0 0 0 1px #f90;
	-webkit-box-shadow: 0 0 0 1px #f90;
	background-color: #f90;
	background-position: -2px -47px;
	border-color: #ffffff;
}

body>#pricing h2 {
	background-color: #fff;
	color: #807b6e;
	font-size: 22px;
	font-weight: normal;
	padding: 0 15px;
}

body>#pricing #new_pricing_blurb {
	margin: 40px auto 0
}

body>#pricing #new_pricing_blurb span {
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border: 5px solid #F5F3F0;
	color: #807b6e;
	display: inline-block;
	font-size: 16px;
	padding: 9px 12px;
}

body>#pricing #new_pricing_blurb a {
	color: #f90;
	font-weight: 500;
}

body>#pricing #new_pricing_blurb a:hover {
	text-decoration: underline
}

body>#pricing #plans {
	display: inline-block;
	margin: 25px auto 0;
}

body>#pricing #plans .plan {
	float: left;
	margin: 55px 0 0;
	width: auto;
}

body>#pricing #plans .plan:hover>.positional {
	background-color: rgba(245, 243, 240, 0.5)
}

body>#pricing #plans .plan:hover>.positional ul {
	color: #57534b
}

body>#pricing #plans .plan:hover .feature_list {
	color: #57534b
}

body>#pricing #plans .plan:hover .feature_list h4 {
	color: #3b3933
}

body>#pricing #plans .plan>.positional {
	border: 8px solid #F5F3F0
}

body>#pricing #plans .plan>.positional h3 {
	color: #fff;
	font-size: 22px;
	font-weight: bold;
	padding: 30px;
}

body>#pricing #plans .plan>.positional ul {
	border-top: 4px solid #F5F3F0;
	color: #807b6e;
	margin: 0 30px;
	padding: 10px 0;
}

body>#pricing #plans .plan>.positional ul li {
	margin: 20px 0
}

body>#pricing #plans .plan>.positional ul li h4 {
	font-weight: bold;
	display: inline-block;
}

body>#pricing #plans .plan>.positional .price {
	font-size: 36px;
	font-weight: 500;
	padding: 0 0 30px;
}

body>#pricing #plans .plan>.positional .price small {
	font-size: 14px
}

body>#pricing #plans .plan.business_plan {
	margin-right: 10px;
	position: relative;
	top: 25px;
	width: 250px;
}

body>#pricing #plans .plan.business_plan>.positional {
	border-top-left-radius: 10px;
	-moz-border-radius-topleft: 10px;
	-webkit-border-top-left-radius: 10px;
	border-bottom-left-radius: 10px;
	-moz-border-radius-bottomleft: 10px;
	-webkit-border-bottom-left-radius: 10px;
	border-right: 0 none;
}

body>#pricing #plans .plan.business_plan>.positional .colored {
	color: #dc0000
}

body>#pricing #plans .plan.professional_plan>.positional {
	border-radius: 10px;
	-moz-border-radius: 10px;
	-webkit-border-radius: 10px;
	width: 270px;
}

body>#pricing #plans .plan.professional_plan>.positional h3 {
	padding: 35px
}

body>#pricing #plans .plan.professional_plan>.positional .colored {
	color: #57cc2c
}

body>#pricing #plans .plan.professional_plan>.positional ul {
	padding: 15px 0 20px
}

body>#pricing #plans .plan.professional_plan>.positional ul li {
	margin: 22px 0
}

body>#pricing #plans .plan.professional_plan>.positional .price {
	font-size: 40px;
	padding: 0 0 45px;
}

body>#pricing #plans .plan.standard_plan {
	margin-left: 10px;
	position: relative;
	top: 25px;
	width: 250px;
}

body>#pricing #plans .plan.standard_plan>.positional {
	border-top-right-radius: 10px;
	-moz-border-radius-topright: 10px;
	-webkit-border-top-right-radius: 10px;
	border-bottom-right-radius: 10px;
	-moz-border-radius-bottomright: 10px;
	-webkit-border-bottom-right-radius: 10px;
	border-left: 0 none;
}

body>#pricing #plans .plan.standard_plan>.positional .colored {
	color: #0A8DD9
}

body>#pricing #plans .plan .feature_list {
	color: #807b6e;
	padding: 30px 10px 0;
}

body>#pricing #plans .plan .feature_list h4 {
	color: #726e62;
	display: inline-block;
	font-weight: bold;
}

body>#pricing #plans .plan .feature_list p {
	margin: 15px 0 30px
}

body>#pricing #explanation {
	background-color: rgba(245, 243, 240, 0.5);
	border-bottom: 8px solid #F5F3F0;
	border-top: 8px solid #F5F3F0;
	color: #656056;
	font-size: 17px;
	font-weight: 500;
	margin: 100px auto 140px;
	padding: 40px 0;
}

body>#pricing #explanation ul li {
	display: inline-block;
	line-height: 1.9em;
	padding: 0 20px;
	vertical-align: top;
	width: 250px;
}

body>#pricing #explanation ul li b {
	color: #49463f;
	font-weight: bold;
}

body>#pricing #signup {
	margin: -100px 0 0;
	position: relative;
}

body>#pricing #signup h2 {
	border-radius: 100px;
	-moz-border-radius: 100px;
	-webkit-border-radius: 100px;
	background-color: #fff;
	color: #807b6e;
	display: inline-block;
	font-size: 22px;
	font-weight: normal;
	margin: 0 auto;
	padding: 0 15px;
	position: relative;
	top: 100px;
	z-index: 1;
}

body>#pricing_2 {
	border-top: 8px solid #f90;
	font-size: 15px;
	margin: 0 auto;
	padding: 40px 0 50px;
	width: 100%;
}

body>#pricing_2 h1 {
	margin: 0 auto;
	width: 130px;
}

body>#pricing_2 h1 a {
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	background-image:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/sprites-57e14dd7782dcbfa62637adc0ad5dba7.png);
	background-position: -2px -2px;
	border: 2px solid transparent;
	display: block;
	height: 41px;
	text-indent: -9000px;
}

body>#pricing_2 h1 a:hover {
	box-shadow: 0 0 0 1px #f90;
	-moz-box-shadow: 0 0 0 1px #f90;
	-webkit-box-shadow: 0 0 0 1px #f90;
	background-color: #f90;
	background-position: -2px -47px;
	border-color: #ffffff;
}

body>#pricing_2 #plans {
	display: inline-block;
	margin: 50px auto 0;
	white-space: nowrap;
}

body>#pricing_2 #plans .plan {
	border: 8px solid #F5F3F0;
	float: left;
	padding: 20px 15px;
}

body>#pricing_2 #plans .plan:hover {
	background-color: rgba(245, 243, 240, 0.5)
}

body>#pricing_2 #plans .plan#starter_plan {
	border-top-left-radius: 10px;
	-moz-border-radius-topleft: 10px;
	-webkit-border-top-left-radius: 10px;
	border-bottom-left-radius: 10px;
	-moz-border-radius-bottomleft: 10px;
	-webkit-border-bottom-left-radius: 10px;
	border-right: 0 none;
	margin: 10px 10px 0 150px;
	width: 210px;
}

body>#pricing_2 #plans .plan#starter_plan .price {
	font-size: 22px
}

body>#pricing_2 #plans .plan#starter_plan .colored {
	color: #8d887a
}

body>#pricing_2 #plans .plan#business_plan {
	border-radius: 10px;
	-moz-border-radius: 10px;
	-webkit-border-radius: 10px;
	border-color: #efedea;
	margin: 0 110px 0 0;
	padding: 30px 15px;
	width: 250px;
}

body>#pricing_2 #plans .plan#business_plan .colored {
	color: #0A8DD9
}

body>#pricing_2 #plans .plan h2 {
	font-size: 22px;
	font-weight: bold;
	padding: 0 0 20px;
}

body>#pricing_2 #plans .plan p {
	color: #807b6e;
	font-size: 14px;
	line-height: 1.6em;
}

body>#pricing_2 #plans .plan .price {
	font-size: 36px;
	font-weight: 500;
	line-height: 36px;
	margin: 15px 0 0;
}

body>#pricing_2 #plans .plan .price small {
	font-size: 14px
}

body>#pricing_2 #plans #feature_comparison {
	color: #656056;
	margin: 20px 110px 0 0;
}

body>#pricing_2 #plans #feature_comparison li {
	overflow: hidden;
	padding: 0;
}

body>#pricing_2 #plans #feature_comparison li:hover div {
	background-color: rgba(245, 243, 240, 0.75);
	border-bottom: 2px solid white !important;
}

body>#pricing_2 #plans #feature_comparison li div {
	border-radius: 4px;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	cursor: default;
	float: left;
	font-size: 15px;
	padding: 15px 0;
	white-space: nowrap;
}

body>#pricing_2 #plans #feature_comparison li div:nth-child(1) {
	color: #807b6e;
	font-size: 14px;
	margin-right: 10px;
	padding-right: 10px;
	text-align: right;
	width: 130px;
}

body>#pricing_2 #plans #feature_comparison li div:nth-child(2) {
	border-bottom: 2px dotted #F5F3F0;
	margin-right: 10px;
	width: 248px;
}

body>#pricing_2 #plans #feature_comparison li div:nth-child(3) {
	border-bottom: 2px dotted #F5F3F0;
	font-weight: 500;
	width: 296px;
}

body>#pricing_2 #explanation {
	background-color: rgba(245, 243, 240, 0.5);
	border-bottom: 8px solid #F5F3F0;
	border-top: 8px solid #F5F3F0;
	color: #656056;
	font-size: 15px;
	font-weight: 500;
	margin: 75px auto 140px;
	padding: 40px 0;
}

body>#pricing_2 #explanation ul li {
	display: inline-block;
	line-height: 1.9em;
	padding: 0 20px;
	vertical-align: top;
	width: 250px;
}

body>#pricing_2 #explanation ul li b {
	color: #49463f;
	font-weight: bold;
}

body>#pricing_2 #signup {
	margin: -125px 0 0;
	position: relative;
}

body>#pricing_2 #signup h2 {
	border-radius: 100px;
	-moz-border-radius: 100px;
	-webkit-border-radius: 100px;
	background-color: #fff;
	color: #807b6e;
	display: inline-block;
	font-size: 22px;
	font-weight: normal;
	margin: 0 auto;
	padding: 0 15px;
	position: relative;
	top: 100px;
	z-index: 1;
}

body>#survey {
	border-top: 8px solid #f90;
	font-size: 15px;
	margin: 0 auto;
	padding: 40px 0 50px;
	width: 100%;
}

body>#survey h1 {
	margin: 0 auto;
	width: 130px;
}

body>#survey h1 a {
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	background-image:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/sprites-57e14dd7782dcbfa62637adc0ad5dba7.png);
	background-position: -2px -2px;
	border: 2px solid transparent;
	display: block;
	height: 41px;
	text-indent: -9000px;
}

body>#survey h1 a:hover {
	box-shadow: 0 0 0 1px #f90;
	-moz-box-shadow: 0 0 0 1px #f90;
	-webkit-box-shadow: 0 0 0 1px #f90;
	background-color: #f90;
	background-position: -2px -47px;
	border-color: #ffffff;
}

body>#survey h2 {
	background-color: #fff;
	color: #807b6e;
	font-size: 22px;
	font-weight: normal;
	margin: 25px auto 0;
	padding: 0 15px;
}

body>#survey form {
	border-radius: 10px;
	-moz-border-radius: 10px;
	-webkit-border-radius: 10px;
	border: 8px solid #F5F3F0;
	margin: 45px auto 0;
	text-align: left;
	width: 440px;
}

body>#survey form .form_section {
	padding: 20px
}

body>#survey form .form_section:first-child {
	padding-top: 30px
}

body>#survey form .form_section:last-child {
	margin-bottom: 0;
	padding-bottom: 30px;
}

body>#survey form .form_section.selected {
	background-color: #F5F3F0
}

body>#survey form .form_section.selected label {
	color: #000
}

body>#survey form label {
	color: #57534b;
	display: block;
	font-size: 14px;
	margin: 0 0 12px;
}

body>#survey form select {
	font-size: 13px;
	width: auto;
}

body>#survey form input[type=text], body>#survey form input[type=tel],
	body>#survey form textarea {
	font-size: 13px;
	margin: 0;
	padding: 5px 8px;
	width: 322px;
}

body>#survey form input[type=text].explanation, body>#survey form input[type=tel].explanation,
	body>#survey form textarea.explanation {
	margin: 0 0 0 10px;
	width: 200px;
}

body
>
#survey
 
form
 
input
[
type
=
text
]
:focus
:not
 
(
.basic
 
),
body
>
#survey
 
form
 
input
[
type
=
tel
]
:focus
:not

	
(
.basic
 
),
body
>
#survey
 
form
 
input
[
type
=
email
]
:focus
:not
 
(
.basic
 
),
body
>
#survey
 
form
 
input
[
type
=
password
]
:focus
:not
 
(
.basic
 
),
body
>
#survey
 
form
 
select
:focus
:not

	
(
.basic
 
),
body
>
#survey
 
form
 
textarea
:focus
:not
 
(
.basic
 
)
{
box-shadow
:
 
inset
 
0
1
px
 
3
px
 
rgba
(0
,
0,
0,
0
.1
)
,
0
0
8
px

		
rgba
(255
,
153,
0,
0
.4
);

	
-moz-box-shadow
:
 
inset
 
0
1
px
 
3
px
 
rgba
(0
,
0,
0,
0
.1
)
,
0
0
8
px

		
rgba
(255
,
153,
0,
0
.4
);

	
-webkit-box-shadow
:
 
inset
 
0
1
px
 
3
px
 
rgba
(0
,
0,
0,
0
.1
)
,
0
0
8
px

		
rgba
(255
,
153,
0,
0
.4
);

	
border-color
:
 
#f90
;


}
body>#survey form button {
	border-radius: 4px;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	background-color: rgba(102, 229, 46, 0.1);
	cursor: pointer;
	height: 56px;
	padding: 5px;
	width: auto;
}

body>#survey form button:hover {
	background-color: rgba(102, 229, 46, 0.18)
}

body>#survey form button:active {
	padding: 5px
}

body>#survey form button:active .button_text {
	box-shadow: 0 0 8px rgba(102, 229, 46, 0.07);
	-moz-box-shadow: 0 0 8px rgba(102, 229, 46, 0.07);
	-webkit-box-shadow: 0 0 8px rgba(102, 229, 46, 0.07);
	background-color: #4bbe18;
	background-repeat: repeat-x;
	background-image: linear-gradient(top, #4adc1c, #4bbe18);
	background-image: -khtml-gradient(linear, left top, left bottom, from(#4adc1c),
		to(#4bbe18));
	background-image: -moz-linear-gradient(top, #4adc1c, #4bbe18);
	background-image: -ms-linear-gradient(top, #4adc1c, #4bbe18);
	background-image: -o-linear-gradient(top, #4adc1c, #4bbe18);
	background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #4adc1c),
		color-stop(100%, #4bbe18));
	background-image: -webkit-linear-gradient(top, #4adc1c, #4bbe18);
	height: 46px;
	width: auto;
}

body>#survey form button .button_text {
	border-radius: 4px;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	box-shadow: 0 0 4px rgba(102, 229, 46, 0.2);
	-moz-box-shadow: 0 0 4px rgba(102, 229, 46, 0.2);
	-webkit-box-shadow: 0 0 4px rgba(102, 229, 46, 0.2);
	background-color: #3baf16;
	background-repeat: repeat-x;
	background-image: linear-gradient(top, #66e52e, #3baf16);
	background-image: -khtml-gradient(linear, left top, left bottom, from(#66e52e),
		to(#3baf16));
	background-image: -moz-linear-gradient(top, #66e52e, #3baf16);
	background-image: -ms-linear-gradient(top, #66e52e, #3baf16);
	background-image: -o-linear-gradient(top, #66e52e, #3baf16);
	background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #66e52e),
		color-stop(100%, #3baf16));
	background-image: -webkit-linear-gradient(top, #66e52e, #3baf16);
	color: #fff;
	display: inline-block;
	font-size: 18px;
	font-weight: bold;
	height: 46px;
	line-height: 46px;
	padding: 0 25px;
	text-shadow: 0 0 3px #246b0d;
	width: auto;
}

body>#signup {
	border-top: 8px solid #f90;
	margin: 0 auto;
	padding: 90px 0 0;
	width: 100%;
}

body>#signup h1 {
	margin: 0 auto;
	width: 130px;
}

body>#signup h1 a {
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	background-image:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/sprites-57e14dd7782dcbfa62637adc0ad5dba7.png);
	background-position: -2px -2px;
	border: 2px solid transparent;
	display: block;
	height: 41px;
	text-indent: -9000px;
}

body>#signup h1 a:hover {
	box-shadow: 0 0 0 1px #f90;
	-moz-box-shadow: 0 0 0 1px #f90;
	-webkit-box-shadow: 0 0 0 1px #f90;
	background-color: #f90;
	background-position: -2px -47px;
	border-color: #ffffff;
}

body>#signup h2 {
	border-radius: 100px;
	-moz-border-radius: 100px;
	-webkit-border-radius: 100px;
	background-color: #fff;
	color: #807b6e;
	display: inline-block;
	font-size: 22px;
	font-weight: normal;
	margin: 0 auto;
	padding: 0 15px;
	position: relative;
	top: 88px;
	z-index: 1;
}

body>#signup #signup_form {
	margin-top: 75px
}

body>#signup #key_benefits {
	border-radius: 10px;
	-moz-border-radius: 10px;
	-webkit-border-radius: 10px;
	height: 170px;
	margin: 135px auto 0;
	overflow: hidden;
	width: 810px;
}

body>#signup #key_benefits .benefit_block {
	float: left;
	height: 110px;
	padding: 30px 20px;
	width: 230px;
}

body>#signup #key_benefits .benefit_block#workflow_benefit {
	background-color: #f1eeea
}

body>#signup #key_benefits .benefit_block#workflow_benefit:hover {
	background-image:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/screenshots/team-6c396e66857c2c665064fb48ecbac4ed.jpg);
	background-position: -192px -140px;
	background-size: 500px 375px;
}

body>#signup #key_benefits .benefit_block#people_benefit {
	background-color: #e9e4de
}

body>#signup #key_benefits .benefit_block#people_benefit:hover {
	background-image:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/tour/discussions-549dc1d90188db5e123c0d8848305735.png);
	background-position: 13px -100px;
}

body>#signup #key_benefits .benefit_block#integrations_benefit {
	background-color: #f7f5f3
}

body>#signup #key_benefits .benefit_block#integrations_benefit:hover {
	background-image:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/tour/integrations-add87aabfddb312fe11fedd654933a4c.png);
	background-position: -300px -147px;
}

body>#signup #key_benefits .benefit_block:hover {
	border: 4px solid #ede9e4;
	padding: 26px 16px;
}

body>#signup #key_benefits .benefit_block:hover h3, body>#signup #key_benefits .benefit_block:hover p
	{
	color: transparent;
	text-indent: -9000px;
}

body>#signup #key_benefits h3 {
	color: #49463f;
	font-size: 15px;
	font-weight: 500;
	margin: 0 0 22px;
}

body>#signup #key_benefits p {
	color: #656056;
	font-size: 14px;
	line-height: 1.6em;
}

#signup_form {
	border-radius: 10px;
	-moz-border-radius: 10px;
	-webkit-border-radius: 10px;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-wekbit-box-sizing: border-box;
	border: 8px solid #F5F3F0;
	margin: 87px auto 0;
	padding: 80px 0 65px;
	position: relative;
	width: 1071px;
	z-index: 0;
}

#signup_form.locked input, #signup_form.locked button {
	opacity: 0.6
}

#signup_form.locked button {
	cursor: default
}

#signup_form.locked button:hover, #signup_form.locked button:active {
	background-color: rgba(102, 229, 46, 0.1)
}

#signup_form #signup_errors {
	color: #f90;
	display: block;
	font-size: 15px;
	font-weight: 500;
	margin: 0 0 50px;
}

#signup_form input {
	border-color: #F5F3F0;
	border-style: solid;
	border-width: 4px;
	display: inline-block;
	margin: 0 15px 0 0;
	position: relative;
}

#signup_form input:focus {
	border-color: #59de2c;
	border-width: 2px;
	padding: 14px 18px;
}

#signup_form input#signup_full_name_field {
	width: 205px
}

#signup_form input#signup_email_field {
	width: 260px
}

#signup_form input#signup_password_field {
	width: 185px
}

#signup_form input.error {
	border-width: 2px;
	padding: 14px 18px;
}

#signup_form label {
	color: #807b6e;
	font-size: 15px;
	margin: -20px 0 0 1px;
	position: absolute;
	z-index: 1;
}

#signup_form .error_message {
	border-bottom-left-radius: 5px;
	-moz-border-radius-bottomleft: 5px;
	-webkit-border-bottom-left-radius: 5px;
	border-bottom-right-radius: 5px;
	-moz-border-radius-bottomright: 5px;
	-webkit-border-bottom-right-radius: 5px;
	background-color: #f90;
	color: white;
	display: inline-block;
	margin-top: 53px;
	padding: 10px 16px;
	position: absolute;
	z-index: 1;
}

#signup_form .error_message#full_name_error {
	margin-left: -264px
}

#signup_form .error_message#email_error {
	margin-left: -319px
}

#signup_form .error_message#password_error {
	margin-left: -244px
}

#signup_form button {
	border-radius: 4px;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	background-color: rgba(102, 229, 46, 0.1);
	cursor: pointer;
	height: 56px;
	margin-left: 15px;
	padding: 5px;
	width: auto;
}

#signup_form button:hover {
	background-color: rgba(102, 229, 46, 0.18)
}

#signup_form button:active {
	padding: 5px
}

#signup_form button:active .button_text {
	box-shadow: 0 0 8px rgba(102, 229, 46, 0.07);
	-moz-box-shadow: 0 0 8px rgba(102, 229, 46, 0.07);
	-webkit-box-shadow: 0 0 8px rgba(102, 229, 46, 0.07);
	background-color: #4bbe18;
	background-repeat: repeat-x;
	background-image: linear-gradient(top, #4adc1c, #4bbe18);
	background-image: -khtml-gradient(linear, left top, left bottom, from(#4adc1c),
		to(#4bbe18));
	background-image: -moz-linear-gradient(top, #4adc1c, #4bbe18);
	background-image: -ms-linear-gradient(top, #4adc1c, #4bbe18);
	background-image: -o-linear-gradient(top, #4adc1c, #4bbe18);
	background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #4adc1c),
		color-stop(100%, #4bbe18));
	background-image: -webkit-linear-gradient(top, #4adc1c, #4bbe18);
	height: 46px;
	width: auto;
}

#signup_form button .button_text {
	border-radius: 4px;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	box-shadow: 0 0 4px rgba(102, 229, 46, 0.2);
	-moz-box-shadow: 0 0 4px rgba(102, 229, 46, 0.2);
	-webkit-box-shadow: 0 0 4px rgba(102, 229, 46, 0.2);
	background-color: #3baf16;
	background-repeat: repeat-x;
	background-image: linear-gradient(top, #66e52e, #3baf16);
	background-image: -khtml-gradient(linear, left top, left bottom, from(#66e52e),
		to(#3baf16));
	background-image: -moz-linear-gradient(top, #66e52e, #3baf16);
	background-image: -ms-linear-gradient(top, #66e52e, #3baf16);
	background-image: -o-linear-gradient(top, #66e52e, #3baf16);
	background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #66e52e),
		color-stop(100%, #3baf16));
	background-image: -webkit-linear-gradient(top, #66e52e, #3baf16);
	color: #fff;
	display: inline-block;
	font-size: 18px;
	font-weight: bold;
	height: 46px;
	line-height: 46px;
	padding: 0 25px;
	text-shadow: 0 0 3px #246b0d;
	width: auto;
}

#signup_form .switch_signup_method {
	border-radius: 40px;
	-moz-border-radius: 40px;
	-webkit-border-radius: 40px;
	background-color: #fff;
	color: #999488;
	display: inline-block;
	font-size: 15px;
	margin: 0 auto;
	padding: 0 12px;
	position: relative;
	top: 76px;
	white-space: nowrap;
}

#signup_form .switch_signup_method#password_signup {
	display: none
}

#signup_form .switch_signup_method .alt_signup_link {
	color: #807b6e;
	cursor: pointer;
	font-weight: 500;
}

#signup_form .switch_signup_method .alt_signup_link:hover {
	color: #f90
}

#signup_form .switch_signup_method#google_signup #google_signup_icon {
	background-image:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/sprites-57e14dd7782dcbfa62637adc0ad5dba7.png);
	background-position: -228px -414px;
	display: inline-block;
	height: 15px;
	margin: 0 6px 0 0;
	position: relative;
	top: 2px;
	width: 21px;
}

#signup_form .switch_signup_method#google_signup .alt_signup_link:hover
	{
	color: #e73122
}

body>#login {
	border-top: 8px solid #f90;
	margin: 0 auto;
	padding: 30px 0 0;
	width: 100%;
}

body>#login h1 {
	border-radius: 100px;
	-moz-border-radius: 100px;
	-webkit-border-radius: 100px;
	background-color: #fff;
	display: inline-block;
	margin: 0 auto;
	position: relative;
	top: 52px;
	width: 130px;
	z-index: 1;
}

body>#login h1:not (.subdomain_image ):not (.subdomain ) a {
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	background-image:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/sprites-57e14dd7782dcbfa62637adc0ad5dba7.png);
	background-position: -2px -2px;
	border: 2px solid transparent;
	display: block;
	height: 41px;
	text-indent: -9000px;
}

body>#login h1:not (.subdomain_image ):not (.subdomain ) a:hover {
	box-shadow: 0 0 0 1px #f90;
	-moz-box-shadow: 0 0 0 1px #f90;
	-webkit-box-shadow: 0 0 0 1px #f90;
	background-color: #f90;
	background-position: -2px -47px;
	border-color: #ffffff;
}

body>#login h1.subdomain {
	max-width: 400px;
	text-overflow: hidden;
	top: 41px;
	white-space: nowrap;
	width: auto;
}

body>#login h1.subdomain a {
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	display: inline-block;
	font-size: 24px;
	font-weight: 500;
	padding: 0 15px;
}

body>#login h1.subdomain_image {
	top: 55px;
	width: auto;
}

body>#login h1.subdomain_image a, body>#login h1.subdomain_image img {
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	display: inline-block;
	height: 43px;
}

body>#login h1.subdomain_image a {
	padding: 4px 0
}

body>#login form {
	border-radius: 10px;
	-moz-border-radius: 10px;
	-webkit-border-radius: 10px;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-wekbit-box-sizing: border-box;
	border: 8px solid #F5F3F0;
	display: inline-block;
	margin: 27px auto 0;
	padding: 60px 50px 45px;
	position: relative;
	z-index: 0;
}

body>#login form .form_errors {
	color: #f90;
	display: block;
	font-size: 15px;
	font-weight: 500;
	margin: 0 0 40px;
}

body>#login form .field_container {
	margin: 0 auto 12px;
	text-align: left;
	width: auto;
}

body>#login form .field_container:last-child {
	margin-bottom: 0
}

body>#login form button {
	border-radius: 7px;
	-moz-border-radius: 7px;
	-webkit-border-radius: 7px;
	background-color: #f6f6f6;
	cursor: pointer;
	margin-left: 12px;
	height: 56px;
	padding: 5px;
	width: auto;
}

body>#login form button:hover {
	background-color: #f8f8f8
}

body>#login form button:active {
	padding: 5px
}

body>#login form button:active .button_text {
	box-shadow: 0 0 8px #ccc;
	-moz-box-shadow: 0 0 8px #ccc;
	-webkit-box-shadow: 0 0 8px #ccc;
	background-color: #f6f6f6;
	background-repeat: repeat-x;
	background-image: linear-gradient(top, #f6f6f6, #f6f6f6);
	background-image: -khtml-gradient(linear, left top, left bottom, from(#f6f6f6),
		to(#f6f6f6));
	background-image: -moz-linear-gradient(top, #f6f6f6, #f6f6f6);
	background-image: -ms-linear-gradient(top, #f6f6f6, #f6f6f6);
	background-image: -o-linear-gradient(top, #f6f6f6, #f6f6f6);
	background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #f6f6f6),
		color-stop(100%, #f6f6f6));
	background-image: -webkit-linear-gradient(top, #f6f6f6, #f6f6f6);
	height: 46px;
	width: auto;
}

body>#login form button #google_openid_icon {
	background-image:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/sprites-57e14dd7782dcbfa62637adc0ad5dba7.png);
	background-position: -211px -414px;
	display: inline-block;
	height: 15px;
	margin-right: 3px;
	position: relative;
	top: -2px;
	vertical-align: middle;
	width: 16px;
}

body>#login form button .button_text {
	border-radius: 4px;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	box-shadow: 0 0 4px rgba(0, 0, 0, 0.2);
	-moz-box-shadow: 0 0 4px rgba(0, 0, 0, 0.2);
	-webkit-box-shadow: 0 0 4px rgba(0, 0, 0, 0.2);
	background-color: #f0f0f0;
	background-repeat: repeat-x;
	background-image: linear-gradient(top, #fafafa, #f0f0f0);
	background-image: -khtml-gradient(linear, left top, left bottom, from(#fafafa),
		to(#f0f0f0));
	background-image: -moz-linear-gradient(top, #fafafa, #f0f0f0);
	background-image: -ms-linear-gradient(top, #fafafa, #f0f0f0);
	background-image: -o-linear-gradient(top, #fafafa, #f0f0f0);
	background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #fafafa),
		color-stop(100%, #f0f0f0));
	background-image: -webkit-linear-gradient(top, #fafafa, #f0f0f0);
	color: #807b6e;
	display: inline-block;
	font-size: 16px;
	font-weight: 500;
	height: 46px;
	line-height: 46px;
	padding: 0 25px;
	text-shadow: 1px 1px 0 #fff;
	width: auto;
}

body>#login form input[type=text], body>#login form input[type=email],
	body>#login form input[type=password] {
	border-color: #F5F3F0;
	border-style: solid;
	border-width: 4px;
	display: inline-block;
	position: relative;
}

body>#login form input[type=text]:focus, body>#login form input[type=email]:focus,
	body>#login form input[type=password]:focus {
	border-color: #59de2c;
	border-width: 2px;
	padding: 14px 18px;
}

body>#login form input[type=text].error, body>#login form input[type=email].error,
	body>#login form input[type=password].error {
	border-width: 2px;
	padding: 14px 18px;
}

body>#login form input[type=text][disabled], body>#login form input[type=email][disabled],
	body>#login form input[type=password][disabled] {
	background-color: #F5F3F0;
	color: #999488;
}

body>#login form .login_link {
	color: #807b6e;
	font-size: 13px;
	font-weight: 500;
}

body>#login form .login_link:hover {
	color: #f90
}

body>#login form#login_form input[type=text], body>#login form#login_form input[type=email],
	body>#login form#login_form input[type=password] {
	width: 290px
}

body>#login form#login_form #google_sign_in_button {
	display: none
}

body>#login form#login_form #sign_in_options {
	color: #999488;
	font-size: 13px;
	padding: 30px 0 0;
}

body>#login form#login_form #sign_in_options #sign_in_alternatives_container
	{
	float: left;
	width: 290px;
}

body>#login form#login_form #sign_in_options #sign_in_alternatives_container a
	{
	margin-left: 4px
}

body>#login form#login_form #sign_in_options #sign_in_alternatives_container #password_sign_in_option
	{
	display: none
}

body>#login form#login_form #sign_in_options #remember_me_container {
	color: #807b6e;
	float: right;
	font-weight: 500;
	margin-right: 5px;
}

body>#login form#login_form #sign_in_options #remember_me_container input[type="checkbox"]
	{
	cursor: pointer;
	margin-right: 3px;
}

body>#login form#login_form #sign_in_options #remember_me_container label
	{
	cursor: pointer;
	display: inline-block;
}

body>#login form#forgot_password input[type=text], body>#login form#forgot_password input[type=email],
	body>#login form#forgot_password input[type=password], body>#login form#change_password input[type=text],
	body>#login form#change_password input[type=email], body>#login form#change_password input[type=password]
	{
	width: 290px
}

body>#login form#forgot_password .field_container:last-child, body>#login form#change_password .field_container:last-child
	{
	padding-top: 12px
}

body>#login form#forgot_password button, body>#login form#change_password button
	{
	float: left;
	margin: 0 auto;
}

body>#login form#forgot_password #back_to_login, body>#login form#change_password #back_to_login
	{
	float: right;
	font-weight: 500;
	line-height: 58px;
	margin-left: 15px;
}

body>#login #chrome_web_store {
	margin: 20px 0 0;
	position: relative;
	top: 32px;
}

body>#login #chrome_web_store #chrome_logo {
	background:
		url(https://d2umsx3twley6r.cloudfront.net/assets/website/sprites-57e14dd7782dcbfa62637adc0ad5dba7.png)
		-1px -383px;
	display: inline-block;
	height: 61px;
	margin: 0 15px 0 0;
	vertical-align: middle;
	width: 61px;
}

body>#login #chrome_web_store h2 {
	color: #807b6e;
	display: inline-block;
	font-size: 14px;
	vertical-align: middle;
}

body>#login #chrome_web_store a {
	color: #f90;
	border-bottom: 2px solid transparent;
	display: inline-block;
	font-size: inherit;
	font-weight: 500;
	padding-bottom: 2px;
}

body>#login #chrome_web_store a:hover {
	border-bottom: 2px solid #f90
}

body>#login #dont_have_an_account {
	margin: 80px 0
}

body>#login #dont_have_an_account h2 {
	color: #807b6e;
	font-size: 14px;
	margin: 0 0 35px;
}

body>#login #dont_have_an_account a {
	color: #f90;
	border-bottom: 2px solid transparent;
	display: inline-block;
	font-size: inherit;
	font-weight: 500;
	padding-bottom: 2px;
}

body>#login #dont_have_an_account a:hover {
	border-bottom: 2px solid #f90
}

body>#login form .idpw {
	position: relative;
	left: 115px;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>일반회원 로그인 화면</title>

<script>
	$(document).ready(function() {
		$("#textid").ubind("click").click(function(e) {
			e.preventDefault();
			fn_login();
		});
	});

	function fn_login() {
		if ($("#textid").val().length < 1) {

			alert("아이디를 입력해주세요.");
		} else if ($("#textpw").val().length < 1) {
			alert("비밀번호를 입력해주세요.");
		} else {
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='.do' />");
			comSubmit.submit();
		}
	}
</script>







<!-- 네이버아이디로로그인 버튼 노출 영역 -->
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>


<link rel='stylesheet'
	href='http://codepen.io/assets/libs/fullpage/jquery-ui.css'>

<link rel="stylesheet" href="css/style.css" media="screen"
	type="text/css" />
</head>
<body>
	<jsp:include page="Header.jsp" />
	<!-- <로그인 화면><br>
<input type="text" name="id" maxlength="20" placeholder="아이디"
			onchange='checkIdAjax(this.value)'
			style="width: 250px; height: 35px; font-size: 17px; margin-top: 10px;"><br>
            
<input type='password' name='pw' id='pwid'
			onchange='isSame()' maxlength="20" placeholder="비밀번호"
			style="width: 250px; height: 35px; font-size: 17px; margin-top: 10px;"><br>
			
<input type='button' value='가입하기'id='newbtn' style="width: 250px; height: 35px; font-size: 17px; margin-top: 10px;">
 -->


	<div id="login">
		<form id="login_form">
			<div class="field_container">
				<input type="text" id="textid" placeholder="아이디">
			</div>

			<div class="field_container">
				<input type="Password" placeholder="비밀번호">
				<button id="sign_in_button">
					<span class="button_text">Sign In</span>
				</button>
				<br>
				<div class="idpw">
					<a href="#" class="login_link">아이디찾기|</a> <a href="#"
						class="login_link">비밀번호찾기|</a> <a href="signUp.do"
						class="login_link">회원가입</a>
				</div>
			</div>

			<!-- <div id="naver_id_login"></div>  '네이버 아이디로 로그인하기' 버튼
 <script type="text/javascript">
 		var naver_id_login = new naver_id_login("_1g9pc8r0RyK3g8Zeg9_", "http://localhost:8888/mechuri/callback.do");	// Client ID, CallBack URL 삽입
											// 단 'localhost'가 포함된 CallBack URL
 		var state = naver_id_login.getUniqState();
		
 		naver_id_login.setButton("white", 2, 40);
 		naver_id_login.setDomain("http://127.0.0.1:8888/mechuri/memLogin.do");	//  URL
 		naver_id_login.setState(state);
 		naver_id_login.setPopup();
 		naver_id_login.init_naver_id_login();
	</script> -->

			<div id="sign_in_options" class="field_container">
				<div id="sign_in_alternatives_container">
					<span id="google_sign_in_option">or you can <a href="#"
						id="google_sign_in" class="login_link">sign in with Google</a></span> <span
						id="password_sign_in_option">or you can <a href="#"
						id="password_sign_in" class="login_link">sign in using a
							password</a></span>
				</div>
				<div id="remember_me_container">

					<input name="user[remember_me]" type="hidden" value="0"><input
						id="user_remember_me" name="user[remember_me]" type="checkbox"
						value="1"> <label class="login_link"
						for="user_remember_me" id="remember_me_label">stay signed
						in</label>

				</div>
				<div class="clearfix"></div>
			</div>
		</form>
	</div>
	<jsp:include page="Footer.jsp" />
</body>
</html>