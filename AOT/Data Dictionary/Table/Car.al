table 70001 "Car"
{
  DataClassification = ToBeClassified;
  Caption = 'Car';

  fields
  {
    field(1; "No."; Integer)
    {
      Caption = 'No.';
      DataClassification = ToBeClassified;
      
    }
    field(2; "Description"; Text[50])
    {
      Caption = 'Description';
      DataClassification = ToBeClassified;
      
    }
    field(3; "Type"; enum "Body Type")
    {
      Caption = 'Body Type';
      DataClassification = ToBeClassified;
    }
    field(4; "Country/Region Code"; Code[10])
    {
      Caption = 'Country/Region Code';
      DataClassification = CustomerContent;
      TableRelation = "Country/Region";
    }
  }
  
  keys
  {
    key(PK; "No.")
    {
      Clustered = true;
    }
  }
  
  fieldgroups
  {
    fieldgroup(DropDown; "No.", "Description", "Type", "Country/Region Code"){

    }
    fieldgroup(Brick; "No.", "Description", "Type", "Country/Region Code"){

    }
  }
  
  var
    myInt: Integer;
  
  trigger OnInsert()
  begin
    
  end;
  
  trigger OnModify()
  begin
    
  end;
  
  trigger OnDelete()
  begin
    
  end;
  
  trigger OnRename()
  begin
    
  end;
  
}