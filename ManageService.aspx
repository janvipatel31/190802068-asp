<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="ManageService.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="wrapper">
	<div class="form-w3layouts">
        <!-- page start-->
        <!-- page start-->
        <div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Manage Services
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <form role="form">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Title</label>
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter title"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Description</label>
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" 
                                        placeholder="Enter description" Rows="5" TextMode="MultiLine"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Status</label>
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                        RepeatDirection="Horizontal">
                                        <asp:ListItem Value="1">Active</asp:ListItem>
                                        <asp:ListItem Value="0">Deactive</asp:ListItem>
                                    </asp:RadioButtonList>
                                    </div>                       
                                 <asp:Button ID="Button3" runat="server" Text="Submit" class="btn btn-info" 
                                    onclick="Button3_Click"></asp:Button>
                                
                                <br />
                                <br />
                                <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                                <br />
                                <br />
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                                    <Columns>
                                        <asp:TemplateField HeaderText="id">
                                            <ItemTemplate>
                                                <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("id") %>'></asp:Literal>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Title">
                                            <ItemTemplate>
                                                <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("title") %>'></asp:Literal>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Description">
                                            <ItemTemplate>
                                                <asp:Literal ID="Literal5" runat="server" Text='<%# Eval("discription") %>'></asp:Literal>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Status">
                                            <ItemTemplate>
                                                <asp:Literal ID="Literal6" runat="server" Text='<%# Eval("status") %>'></asp:Literal>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Edit">
                                            <ItemTemplate>
                                                <asp:Button ID="Button4" runat="server" CommandArgument='<%# Eval("id") %>' 
                                                    onclick="Button4_Click" Text="Edit" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Delete">
                                            <ItemTemplate>
                                                <asp:Button ID="Button5" runat="server" CommandArgument='<%# Eval("id") %>' 
                                                    onclick="Button5_Click" Text="Delete" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                                  </div>
                            </form>
                            </div>

                        </div>
                    </section>

            </div>
        </div>
        <!-- page end-->
        </div>
</section>
</asp:Content>

