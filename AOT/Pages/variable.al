page 70004 VariablePageTest
{
    PageType = List; 
    SourceTable = Car; 
    UsageCategory = Lists;
    AccessByPermission = page SimpleItemList = X;
    ApplicationArea = All;
    AdditionalSearchTerms = 'product, merchandise';
    Permissions = tabledata Car = rmid;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; 'No.')
                {
                    ApplicationArea = All;
                }
                field(Description; 'Description')
                {
                    ApplicationArea = All;
                }
            }
            group(Advanced)
            {
                Visible = ShowBalance;

                field("Country/Region Code"; 'Country Code')
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    protected var
        [InDataSet]
        ShowBalance: Boolean;
}

pageextension 70003 MyPageExt extends "Item List"
{
    layout
    {
        addlast(Content)
        {
            group(MoreBalance)
            {
                Visible = CanCancelApprovalForFlow; // ShowBalance from MyPage

                field("IsOnPhone"; "IsOnPhone")
                {
                    ApplicationArea = All;
                }
            }
        }

    }

    actions
    {
        addlast(Navigation)
        {
            action(ToggleBalance)
            {
                ApplicationArea = All;
                trigger OnAction()
                begin
                    CanCancelApprovalForFlow := not CanCancelApprovalForFlow; // Toggle ShowBalance from MyPage.
                end;
            }
        }
    }
}