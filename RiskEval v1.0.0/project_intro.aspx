﻿<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage/Main.master" AutoEventWireup="true" CodeFile="project_intro.aspx.cs" Inherits="project_intro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
การวิเคราะห์ความเสี่ยงตามหลักธรรมาภิบาล ตามแผนงาน/โครงการ ขั้นตอนการวิเคราะห์ความเสี่ยงตามหลักธรรมาภิบาล
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentTitle" Runat="Server">
ขั้นตอนการวิเคราะห์ความเสี่ยงตามหลักธรรมาภิบาล
</asp:Content>

<asp:Content ID="ContentLink" ContentPlaceHolderID="linkheader" runat="server">
<style type="text/css">
.caption_main {font-size:22px; color:Blue; padding-top:10px; padding-bottom:10px; font-weight:normal;}
.caption_sub1 {font-size:22px; color:Purple; padding-bottom:5px;}
.caption_sub2 {font-size:22px; color:Green; padding-bottom:5px;}
.caption_sub3 {font-size:22px; color:Red; padding-bottom:30px;}
</style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
        <div class="title">ขั้นตอนการวิเคราะห์ความเสี่ยงตามหลักธรรมาภิบาล</div>   
        <div>
            <p class="caption_main">ต้องเข้าสู่การบันทึก หน่วยงาน ยุทธศาสตร์ โครงการตามตัวอย่างก่อน เพื่อเชื่อมโยง จะเข้าสู่โปรแกรมทันทีไม่ได้ ก่อนเข้าโปรแกรมการประเมิน อยากให้มีหน้าที่อธิบายว่าองค์ประกอบของโปรแกรมมี 3 ส่วน</p>
            <p class="caption_sub1">ส่วนที่ 1 โปรแกรมการวิเคราะห์เพื่อคัดกรองเฉพาะโครงการที่เข้าข่ายต้องวิเคราะห์ความเสี่ยงตามหลักธรรมาภิบาล</p>
            <p class="caption_sub2">ส่วนที่ 2 โปรแกรมการวิเคราะห์ความเสี่ยงตามหลักธรรมาภิบาล ให้เข้าสู่โปรแกรมนี้เฉพาะกรณีที่ผลจากโปรแกรมส่วนที่ 1 ระบุให้ดำเนินการต่อ</p>
            <p class="caption_sub3">ส่วนที่ 3 โปรแกรมการวิเคราะห์ความเสี่ยงด้านสภาพแวดล้อมภายในและภายนอก ให้เข้าสู่โปรแกรมนี้ได้เฉพาะกรณีที่ผลจากโปรแกรมส่วนที่ 2 ระบุให้ดำเนินการต่อ</p>
        </div>
        <div>
            <asp:Button ID="btnNext" runat="server" Text="เข้าสู่ระบบวิเคราะห์ความเสี่ยง" 
                onclick="btnNext_Click" />

           
        </div>
    </div>

</asp:Content>
