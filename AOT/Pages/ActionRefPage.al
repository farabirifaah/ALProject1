
page 70003 ActionRefPage
{
    actions
    {
        area(Promoted)
        {
            actionref(MyPromotedActionRef; MyBaseAction)
            {
              
            }
            group(Group1)
            {
                actionref(MySecondPromotedActionRef; MyBaseAction)
                { 
                }
            }

            group(Group2) 
            {
                ShowAs = SplitButton;

                actionref(MySplitButtonPromotedActionRef; MyBaseAction)
                {
                }
                
                actionref(MyOtherSplitButtonPromotedActionRef; MyBaseAction)
                {
                }
            }
        }
        area(Processing)
        {
            action(MyBaseAction)
            {
              ApplicationArea = all;
                Visible = true;
                trigger OnAction()
                begin
                    Message('Hello world!');
                end;
            }
        }
    }
}