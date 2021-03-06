﻿<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage/Main.master" AutoEventWireup="true" CodeFile="yutasad.aspx.cs" Inherits="yutasad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
นโยบายเชิงยุทธศาสตร์
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="linkheader" Runat="Server">
<link href="css/report.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentTitle" Runat="Server">
นโยบายเชิงยุทธศาสตร์
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="detail">
<table id="tblogin">
<tr>
    <td class="first"><label> รายละเอียด</label></td>
    <td class="second"><asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine" Rows="10" Width="400px"></asp:TextBox>

<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"  
    ControlToValidate="txtDesc"   ValidationGroup="register" CssClass ="ErrorDokJan">*</asp:RequiredFieldValidator>

    <br /><span class="comment">กรุณากรอกข้อมูลให้ครบก่อนการบันทึกข้อมูล</span>
    </td>
</tr> 
<tr>
    <td class="first"></td>
    <td class="second">
        <asp:Button ID="btnSubmit" runat="server" Text="บันทึกข้อมูล" 
            CssClass="button" ValidationGroup="register" onclick="btnSubmit_Click" />

            <asp:Button ID="btnCancel" runat="server" Text="ยกเลิก" 
            CssClass="button" ValidationGroup="cancel" onclick="btnCancel_Click"  />
    </td>
</tr>
</table>
<asp:HiddenField ID="hdSaveStatus" Value="" runat="server" /> 
<asp:HiddenField ID="hdYut_id" runat="server" Value=""/>
<div class="hr"></div>
<asp:GridView ID="gvYutasad" runat="server" Width="100%" CssClass="gvStyle" 
        DataKeyNames="yut_id"
        AutoGenerateColumns="False" AllowPaging="True" 
        AllowSorting="True" PageSize="5" 
        HeaderStyle-CssClass="gv-header"
        RowStyle-CssClass="gv-rows"
        onpageindexchanging="gvYutasad_PageIndexChanging" 
        onrowdeleting="gvYutasad_RowDeleting" onrowediting="gvYutasad_RowEditing">
        <RowStyle Font-Size="16px" />
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="btnSelect" runat="server" CommandName="Edit" Text="เลือก" Visible="true"></asp:LinkButton>
                    <asp:LinkButton ID="btnDelete" runat="server" CommandName="Delete" Text="ลบ"
                        Visible="true" OnClientClick="return confirm('กรุณายืนยันการลบข้อมูล')"></asp:LinkButton>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" Font-Size="18px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="หัวข้อ" >
                <ItemTemplate>
                    <asp:Label ID="lblid" runat="server" Text='<%#(Eval("yut_id"))%>'></asp:Label>
                </ItemTemplate>
                <ItemStyle CssClass="gv-item" Width="100" HorizontalAlign="Center" Font-Size="20px"/>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="รายละเอียด" >
                <ItemTemplate>
                    <asp:Label ID="lblTitle" runat="server" Text='<%#(Eval("yut_name"))%>'></asp:Label>
                </ItemTemplate>
                <ItemStyle CssClass="gv-item" Font-Size="20px"/>
            </asp:TemplateField>
 
                            
        </Columns>
        <PagerStyle CssClass="gv-pager" HorizontalAlign="Right" Font-Size="18px"/>
        <HeaderStyle CssClass="gv-header-style"/>
        <AlternatingRowStyle CssClass="gv-alternate-row"/>
    </asp:GridView>
</div> 
</asp:Content>

