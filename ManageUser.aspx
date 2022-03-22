<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageUser.aspx.cs" EnableEventValidation="false" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="wrapper">
	<div class="form-w3layouts">
        <!-- page start-->
        <!-- page start-->
        <div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Registration Details
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <form role="form">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Full name</label>
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter Fullname"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Enter email"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Password"></asp:TextBox>
                                </div>                       
                                 <asp:Button ID="Button3" runat="server" Text="Update" class="btn btn-info"></asp:Button>
                                
                                <div class="checkbox">
                                <label>
                                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                </label>
                                </div>
                                  <asp:GridView ID="GridView1" AutoGenerateColumns="False" runat="server" 
                                        CellPadding="4" ForeColor="#333333" 
                                        GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged">
                                      <AlternatingRowStyle BackColor="White" />
                                      <Columns>
                                          <asp:TemplateField HeaderText="id">
                                              <ItemTemplate>
                                                  <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("id") %>'></asp:Literal>
                                                  &nbsp;
                                              </ItemTemplate>
                                          </asp:TemplateField>
                                          <asp:TemplateField HeaderText="fullname">
                                              <ItemTemplate>
                                                  <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("fullname") %>'></asp:Literal>
                                              </ItemTemplate>
                                          </asp:TemplateField>
                                          <asp:TemplateField HeaderText="email">
                                              <ItemTemplate>
                                                  <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("email") %>'></asp:Literal>
                                              </ItemTemplate>
                                          </asp:TemplateField>
                                          <asp:TemplateField HeaderText="password">
                                              <ItemTemplate>
                                                  <asp:Literal ID="Literal5" runat="server" Text='<%# Eval("Password") %>'></asp:Literal>
                                              </ItemTemplate>
                                          </asp:TemplateField>
                                          <asp:TemplateField HeaderText="delete">
                                              <ItemTemplate>
                                                  <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("id") %>' 
                                                      Text="Delete" onclick="Button1_Click" />
                                              </ItemTemplate>
                                          </asp:TemplateField>
                                          <asp:TemplateField HeaderText="Edit">
                                              <ItemTemplate>
                                                  <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("id") %>' 
                                                      onclick="Button2_Click" Text="Edit" />
                                              </ItemTemplate>
                                          </asp:TemplateField>
                                      </Columns>
                                      <EditRowStyle BackColor="#7C6F57" />
                                      <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                      <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                      <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                      <RowStyle BackColor="#E3EAEB" />
                                      <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                      <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                      <SortedAscendingHeaderStyle BackColor="#246B61" />
                                      <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                      <SortedDescendingHeaderStyle BackColor="#15524A" />
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

