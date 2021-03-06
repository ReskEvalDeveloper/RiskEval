﻿<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage/report.master" AutoEventWireup="true" CodeFile="project_filter_report.aspx.cs" Inherits="project_filter_report" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
การวิเคราะห์ความเสี่ยงตามหลักธรรมาภิบาล ตามแผนงาน/โครงการ กรั่นกรองโครงการ
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentTitle" Runat="Server">
    กรั่นกรองโครงการ
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div>


         <div class="accountInfo">
                <fieldset class="login">
                    <legend class="bold1">ข้อมูลโครงการ</legend>
                    <table style="margin:0px 0px 0px 0px; width: 800px;" >
                         <tr>
                            <td class="bold1">รหัสกระทรวง:</td>
                            <td><asp:Label ID="lblDeptCode" runat="server"></asp:Label></td>  
                            <td class="bold1">กระทรวง:</td>
                            <td><asp:Label ID="lblDeptName" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td class="bold1">รหัสหน่วยงาน:</td>
                            <td><asp:Label ID="lblDivisionCode" runat="server"></asp:Label></td>
                            <td class="bold1">หน่วยงาน:</td>
                            <td><asp:Label ID="lblDivisionName" runat="server"></asp:Label></td>
                        </tr>
                         <tr>
                            <td class="bold1">รหัสโครงการ:</td>
                            <td><asp:Label ID="lblProjectCode" runat="server"></asp:Label></td>
                            <td class="bold1">ชื่อโครงการ:</td>
                            <td><asp:Label ID="lblProjectName" runat="server"></asp:Label></td>
                        </tr>
                           <tr>
                             <td colspan="2" class="bold1">ยุทธศาสตร์การจัดสรรงบประมาณ:</td>
                             <td colspan="2"><asp:Label ID="lblYutasard" runat="server"></asp:Label></td>
                        </tr>
                         <tr>  
                             <td class="bold1">ปีงบประมาณ:</td>
                             <td><asp:Label ID="lblYear" runat="server"></asp:Label></td>
                             <td class="bold1">วงเงินงบประมาณทั้งสิ้น (บาท):</td>
                             <td><asp:Label ID="lblBudget" runat="server"></asp:Label></td>
                        </tr>
                   
                           <tr>
                             <td colspan="2" class="bold1">โครงการบูรณาการที่สำนักงบประมาณกำหนด:</td>
                             <td colspan="2"><asp:Label ID="lblIntegrateProject" runat="server"></asp:Label></td>
                        </tr>
                          <tr>
                             <td colspan="2" class="bold1">หน่วยงานที่เกี่ยงข้องกับการบูรณาการ:</td>
                             <td colspan="2"><asp:Label ID="lblRelateDept" runat="server"></asp:Label></td>
                        </tr>
                    </table>     
                </fieldset>
            </div>

             <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:GovBudgetingConnectionString %>">
               </asp:SqlDataSource>

        <div class="title">การวิเคราะห์เพื่อคัดกรองเฉพาะโครงการที่เข้าข่ายต้องวิเคราะห์ความเสี่ยงตามหลักธรรมาภิบาล</div>  
        
         <div>
            <asp:Literal ID="lblResult" runat="server"></asp:Literal>
        </div>

        <div style="margin: 10px 10px 10px 10px">
          <table style="border:1px solid black;">

                        <tr>
                            <td style="border:1px solid black; width:5%">1.</td>
                            <td style="border:1px solid black;">เป็นแผนงาน/โครงการที่มีผลกระทบต่อความสำเร็จในการบรรลุผลตามเป้าหมายกระทรวง ส่วนราชการ/ รัฐวิสาหกิจภายใต้กระทรวง กลุ่มจังหวัด หรือจังหวัด <b>และ</b></td> 
                            <td rowspan="3" style="border:1px solid black; width:20%">
                                <asp:RequiredFieldValidator ID="reqQ1" runat="server" Text="กรุณาเลือกใช่ หรือ ไม่ใช่" ErrorMessage="กรุณาเลือกใช่ หรือ ไม่ใช่ ของสามคำถามแรก" ControlToValidate="radQ1"></asp:RequiredFieldValidator>
                                <asp:RadioButtonList ID="radQ1" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="ใช่">ใช่</asp:ListItem>
                                    <asp:ListItem Value="ไม่ใช่">ไม่ใช่</asp:ListItem>
                                </asp:RadioButtonList>
                            </td> 
                        </tr>
                          <tr>
                            <td style="border:1px solid black; width:5%">2.</td>
                            <td style="border:1px solid black;">เป็นแผนงาน/โครงการที่มีผลกระทบต่อชีวิตความเป็นอยู่ของประชาชน สิ่งแวดล้อมหรือการให้บริการขั้นพื้นฐานของประชาชน <b>และ</b></td> 
                        </tr>
                           <tr>
                            <td style="border:1px solid black; width:5%">3.</td>
                            <td style="border:1px solid black;">เป็นแผนงาน/โครงการที่ใช้งบประมาณสูงสุด 3 อันดับแรกของงบลงทุนของส่วนราชการในกระทรวงเดียวกัน กลุ่มจังหวัด จังหวัด รัฐวิสาหกิจ และหน่วยงานอื่นๆ</td> 
                        
                        </tr>
                           <tr>
                            <td style="border:1px solid black; width:5%">4.</td>
                            <td style="border:1px solid black;">แผนงาน/โครงการที่ไม่เข้าข่ายต้องวิเคราะห์ความเสี่ยงตามหลักธรรมาภิบาลข้างต้น แต่เป็นแผนงาน/โครงการอื่นที่ส่วนราชการ/รัฐวิสาหกิจหรือผู้ตรวจราชการสำนักนายกรัฐมนตรี หรือผู้ตรวจราชการกระทรวง หรือสำนักงบประมาณเห็นควรให้มีการวิเคราะห์ความเสี่ยงเชิงยุทธศาสตร์ที่ส่งผลต่อความเสี่ยงตามหลักธรรมาภิบาล ก็ถือว่าเป็นแผนงาน/โครงการที่ต้องวิเคราะห์ความเสี่ยงตามหลักธรรมาภิบาล</td> 
                            <td style="border:1px solid black; width:20%">
                                <asp:RequiredFieldValidator ID="reqQ2" runat="server" Text="กรุณาเลือกใช่ หรือ ไม่ใช่" ErrorMessage="กรุณาเลือกใช่ หรือ ไม่ใช่ ของสามคำถามแรก" ControlToValidate="RadQ2"></asp:RequiredFieldValidator>
                                <asp:RadioButtonList ID="radQ2" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="ใช่">ใช่</asp:ListItem>
                                    <asp:ListItem Value="ไม่ใช่">ไม่ใช่</asp:ListItem>
                                </asp:RadioButtonList></td>
                        </tr>
                    </table>
       
       </div>
        
        <div>
       

          <asp:Button ID="btnPrint" runat="server" Text="Print เพื่อเป็นหลักฐาน" Visible="false"
                onclientclick="return window.print();" />
        </div>
      
     

    </div>




    <div>
        

    
    </div>


</asp:Content>

