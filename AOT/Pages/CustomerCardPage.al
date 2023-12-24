
page 70002 SimpleItemList 
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
        area(content) 
        { 
            group(General) 
            { 
                field("No.";'No.') {
                  Editable = true;   
                } 
                field(Description;'Description') {
                  
                } 
            } 
        } 
    } 
}