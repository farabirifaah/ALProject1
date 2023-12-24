page 70005 "Master Car"
{
  PageType = List;
  ApplicationArea = All;
  UsageCategory = Lists;
  SourceTable = Car;
  // AccessByPermission = page "Master Car" = X;
  AdditionalSearchTerms = 'product, merchandise';
  Permissions = tabledata Car = rmid;
  
  layout
  {
    area(Content)
    {
      repeater(GroupName)
      {
        field("No."; 'No.')
        {
          ApplicationArea = All;
        }
        field(Description; 'Description')
        {
          ApplicationArea = All;
        }
        field("Body Type"; 'Body Type')
        {
          ApplicationArea = All;
        }
        field("Country/Region Code"; 'Country/Region Code')
        {
          ApplicationArea = All;
        }
      }
    }
    area(Factboxes)
    {
      
    }
  }
  
  actions
  {
    area(Processing)
    {
      action(ActionName)
      {
        ApplicationArea = All;
        
        trigger OnAction();
        begin
          
        end;
      }
    }
  }
}