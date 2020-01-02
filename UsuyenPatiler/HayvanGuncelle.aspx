<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HayvanGuncelle.aspx.cs" Inherits="HayvanGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <form id ="Form1" runat ="server">
        <div class ="form-group">
           

             <div>
                <asp:Label for="ID" runat="server" Text="Hayvan ID" style="font-weight: bold"></asp:Label>
                <asp:TextBox ID="ID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="Adi" runat="server" Text="Hayvan Adı" style="font-weight: bold"></asp:Label>
                <asp:TextBox ID="Adi" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="Turu" runat="server" Text="Hayvan Türü" style="font-weight: bold"></asp:Label>
                <asp:TextBox ID="Turu" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="YiyecekDurum" runat="server" Text="Yiyecek Durumu" style="font-weight: bold"></asp:Label>
                <asp:TextBox ID="YiyecekDurum" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="KonumID" runat="server" Text="Konum ID" style="font-weight: bold"></asp:Label>
                <asp:TextBox ID="KonumID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
           
        </div>
        <asp:Button ID ="Btn_HayvanGuncelle"  runat="server" text="Hayvan Güncelle"  CssClass ="btn btn-warning" OnClick="Btn_HayvanGuncelle_Click" />
    </form>


</asp:Content>

