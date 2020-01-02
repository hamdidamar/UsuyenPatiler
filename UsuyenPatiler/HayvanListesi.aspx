<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HayvanListesi.aspx.cs" Inherits="HayvanListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <div>
        <table class="table table-bordered table-hover">
            <thead>
                 <tr>
                    <th>Hayvan ID</th>
                    <th>Adi</th>
                    <th>Türü</th>
                    <th>Yiyecek Durumu</th>
                    <th>Konumu</th>
                </tr>
            </thead>

            <tbody>
                <asp:Repeater ID="rptrHayvanlar" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("ID")%></td>
                            <td><%#Eval("Adi")%></td>
                            <td><%#Eval("Turu")%></td>
                            <td><%#Eval("YiyecekDurum")%></td>
                            <td><%#Eval("KonumID")%></td>
                            <td>
                    <asp:HyperLink NavigateUrl=<%# "~/HayvanGuncelle.aspx?ID=" +Eval("ID") %> ID="HyperLink2" CssClass="btn btn-success" runat="server">Güncelle</asp:HyperLink>
                </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>

        </table>

    </div>

</asp:Content>

