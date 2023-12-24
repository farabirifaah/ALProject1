codeunit 70001 CodeUnit{
  procedure SelectType()
  var
    CarType: Enum "Body Type";
  begin
    CarType:= "Body Type"::Coupe;
    Message('The Seleced type is : %1', CarType)
  end;
}

enum 70001 "Body Type"
{
  Extensible = true;
  
  value(0; Hatchback)
  {
    Caption = 'Hatchback';
  }
  value(1; Sedan)
  {
    Caption = 'Sedan';
  }
  value(2; SUV)
  {
    Caption = 'SUV';
  }
  value(3; Coupe)
  {
    Caption = 'Coupe';
  }
}