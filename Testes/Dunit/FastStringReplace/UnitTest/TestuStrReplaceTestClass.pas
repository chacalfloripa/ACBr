﻿unit TestuStrReplaceTestClass;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  Classes, SysUtils, uStrReplaceTestClass,
  {$ifdef FPC}
  fpcunit, testutils, testregistry, LConvEncoding
  {$else}
    TestFramework
  {$endif};

type
  // Test methods for class TStrReplaceTest

  TestTStrReplaceTest = class(TTestCase)
  strict private
    FStrReplaceTest: TStrReplaceTest;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestFastStringReplace1;
    procedure TestFastStringReplace2;
    procedure TestFastStringReplace3;
    procedure TestFastStringReplace4;
    procedure TestFastStringReplace5;
    procedure TestFastStringReplace6;
    procedure TestFastStringReplace7;
  end;

implementation

procedure TestTStrReplaceTest.SetUp;
begin
  FStrReplaceTest := TStrReplaceTest.Create;
end;

procedure TestTStrReplaceTest.TearDown;
begin
  FStrReplaceTest.Free;
  FStrReplaceTest := nil;
end;

procedure TestTStrReplaceTest.TestFastStringReplace1;
var
  ReturnValue1, ReturnValue2: string;
  Flags: TReplaceFlags;
  NewPattern: string;
  OldPattern: string;
  S: string;
begin
  NewPattern := '1234';
  OldPattern := 'ABCD';
  S := 'abcd 1234 abcd';

  Flags := [];
  ReturnValue1 := FStrReplaceTest.FastStringReplace(S, OldPattern, NewPattern, Flags);
  ReturnValue2 := FStrReplaceTest.StringReplace(S, OldPattern, NewPattern, Flags);
  Check(ReturnValue1 = ReturnValue2, 'TestFastStringReplace1 - 1 fail');

  Flags := [rfReplaceAll];
  ReturnValue1 := FStrReplaceTest.FastStringReplace(S, OldPattern, NewPattern, Flags);
  ReturnValue2 := FStrReplaceTest.StringReplace(S, OldPattern, NewPattern, Flags);
  Check(ReturnValue1 = ReturnValue2, 'TestFastStringReplace1 - 2 fail');

  Flags := [rfIgnoreCase];
  ReturnValue1 := FStrReplaceTest.FastStringReplace(S, OldPattern, NewPattern, Flags);
  ReturnValue2 := FStrReplaceTest.StringReplace(S, OldPattern, NewPattern, Flags);
  Check(ReturnValue1 = ReturnValue2, 'TestFastStringReplace1 - 3 fail');

  Flags := [rfReplaceAll, rfIgnoreCase];
  ReturnValue1 := FStrReplaceTest.FastStringReplace(S, OldPattern, NewPattern, Flags);
  ReturnValue2 := FStrReplaceTest.StringReplace(S, OldPattern, NewPattern, Flags);
  Check(ReturnValue1 = ReturnValue2, 'TestFastStringReplace1 - 4 fail');
end;

procedure TestTStrReplaceTest.TestFastStringReplace2;
var
  ReturnValue1, ReturnValue2: string;
  Flags: TReplaceFlags;
  NewPattern: string;
  OldPattern: string;
  S: string;
begin
  NewPattern := 'aeiou';
  OldPattern := 'ÁÉÍÓÚ';
  S := 'aeio u áéíóú aeiou áéíóú aeio u';

  Flags := [];
  ReturnValue1 := FStrReplaceTest.FastStringReplace(S, OldPattern, NewPattern, Flags);
  ReturnValue2 := FStrReplaceTest.StringReplace(S, OldPattern, NewPattern, Flags);
  Check(ReturnValue1 = ReturnValue2, 'TestFastStringReplace2 - 1 fail');

  Flags := [rfReplaceAll];
  ReturnValue1 := FStrReplaceTest.FastStringReplace(S, OldPattern, NewPattern, Flags);
  ReturnValue2 := FStrReplaceTest.StringReplace(S, OldPattern, NewPattern, Flags);
  Check(ReturnValue1 = ReturnValue2, 'TestFastStringReplace2 - 2 fail');

  Flags := [rfIgnoreCase];
  ReturnValue1 := FStrReplaceTest.FastStringReplace(S, OldPattern, NewPattern, Flags);
  ReturnValue2 := FStrReplaceTest.StringReplace(S, OldPattern, NewPattern, Flags);
  Check(ReturnValue1 = ReturnValue2, 'TestFastStringReplace2 - 3 fail');

  Flags := [rfReplaceAll, rfIgnoreCase];
  ReturnValue1 := FStrReplaceTest.FastStringReplace(S, OldPattern, NewPattern, Flags);
  ReturnValue2 := FStrReplaceTest.StringReplace(S, OldPattern, NewPattern, Flags);
  Check(ReturnValue1 = ReturnValue2, 'TestFastStringReplace2 - 4 fail');
end;

procedure TestTStrReplaceTest.TestFastStringReplace3;
var
  ReturnValue1, ReturnValue2: string;
  Flags: TReplaceFlags;
  NewPattern: string;
  OldPattern: string;
  S: string;
begin
  NewPattern := 'xx';
  OldPattern := 'AEIOU';
  S := 'aeio u aeiou aeiou aeiou aeio u';

  Flags := [];
  ReturnValue1 := FStrReplaceTest.FastStringReplace(S, OldPattern, NewPattern, Flags);
  ReturnValue2 := FStrReplaceTest.StringReplace(S, OldPattern, NewPattern, Flags);
  Check(ReturnValue1 = ReturnValue2, 'TestFastStringReplace3 - 1 fail');

  Flags := [rfReplaceAll];
  ReturnValue1 := FStrReplaceTest.FastStringReplace(S, OldPattern, NewPattern, Flags);
  ReturnValue2 := FStrReplaceTest.StringReplace(S, OldPattern, NewPattern, Flags);
  Check(ReturnValue1 = ReturnValue2, 'TestFastStringReplace3 - 2 fail');

  Flags := [rfIgnoreCase];
  ReturnValue1 := FStrReplaceTest.FastStringReplace(S, OldPattern, NewPattern, Flags);
  ReturnValue2 := FStrReplaceTest.StringReplace(S, OldPattern, NewPattern, Flags);
  Check(ReturnValue1 = ReturnValue2, 'TestFastStringReplace3 - 3 fail');

  Flags := [rfReplaceAll, rfIgnoreCase];
  ReturnValue1 := FStrReplaceTest.FastStringReplace(S, OldPattern, NewPattern, Flags);
  ReturnValue2 := FStrReplaceTest.StringReplace(S, OldPattern, NewPattern, Flags);
  Check(ReturnValue1 = ReturnValue2, 'TestFastStringReplace3 - 4 fail');
end;

procedure TestTStrReplaceTest.TestFastStringReplace4;
var
  ReturnValue1, ReturnValue2: string;
  Flags: TReplaceFlags;
  NewPattern: string;
  OldPattern: string;
  S: string;
begin
  NewPattern := '11111';
  OldPattern := 'áéíóú';
  S := 'áéíóú ÁÉÍÓÚ áéíóú ÁÉÍÓÚ áéíóú';

  Flags := [];
  ReturnValue1 := FStrReplaceTest.FastStringReplace(S, OldPattern, NewPattern, Flags);
  ReturnValue2 := FStrReplaceTest.StringReplace(S, OldPattern, NewPattern, Flags);
  Check(ReturnValue1 = ReturnValue2, 'TestFastStringReplace4 - 1 fail');

  Flags := [rfReplaceAll];
  ReturnValue1 := FStrReplaceTest.FastStringReplace(S, OldPattern, NewPattern, Flags);
  ReturnValue2 := FStrReplaceTest.StringReplace(S, OldPattern, NewPattern, Flags);
  Check(ReturnValue1 = ReturnValue2, 'TestFastStringReplace4 - 2 fail');

  Flags := [rfIgnoreCase];
  ReturnValue1 := FStrReplaceTest.FastStringReplace(S, OldPattern, NewPattern, Flags);
  ReturnValue2 := FStrReplaceTest.StringReplace(S, OldPattern, NewPattern, Flags);
  Check(ReturnValue1 = ReturnValue2, 'TestFastStringReplace4 - 3 fail');

  Flags := [rfReplaceAll, rfIgnoreCase];
  ReturnValue1 := FStrReplaceTest.FastStringReplace(S, OldPattern, NewPattern, Flags);
  ReturnValue2 := FStrReplaceTest.StringReplace(S, OldPattern, NewPattern, Flags);
  Check(ReturnValue1 = ReturnValue2, 'TestFastStringReplace4 - 4 fail');
end;

procedure TestTStrReplaceTest.TestFastStringReplace5;
var
  ReturnValue1, ReturnValue2: string;
  Flags: TReplaceFlags;
  NewPattern: string;
  OldPattern: string;
  S: string;
begin
  NewPattern := '12345';
  OldPattern := 'a';
  S := 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa';

  Flags := [];
  ReturnValue1 := FStrReplaceTest.FastStringReplace(S, OldPattern, NewPattern, Flags);
  ReturnValue2 := FStrReplaceTest.StringReplace(S, OldPattern, NewPattern, Flags);
  Check(ReturnValue1 = ReturnValue2, 'TestFastStringReplace5 - 1 fail');

  Flags := [rfReplaceAll];
  ReturnValue1 := FStrReplaceTest.FastStringReplace(S, OldPattern, NewPattern, Flags);
  ReturnValue2 := FStrReplaceTest.StringReplace(S, OldPattern, NewPattern, Flags);
  Check(ReturnValue1 = ReturnValue2, 'TestFastStringReplace5 - 2 fail');

  Flags := [rfIgnoreCase];
  ReturnValue1 := FStrReplaceTest.FastStringReplace(S, OldPattern, NewPattern, Flags);
  ReturnValue2 := FStrReplaceTest.StringReplace(S, OldPattern, NewPattern, Flags);
  Check(ReturnValue1 = ReturnValue2, 'TestFastStringReplace5 - 3 fail');

  Flags := [rfReplaceAll, rfIgnoreCase];
  ReturnValue1 := FStrReplaceTest.FastStringReplace(S, OldPattern, NewPattern, Flags);
  ReturnValue2 := FStrReplaceTest.StringReplace(S, OldPattern, NewPattern, Flags);
  Check(ReturnValue1 = ReturnValue2, 'TestFastStringReplace5 - 4 fail');
end;

procedure TestTStrReplaceTest.TestFastStringReplace6;
var
  ReturnValue1, ReturnValue2: string;
  Flags: TReplaceFlags;
  NewPattern: string;
  OldPattern: string;
  S: string;
begin
  NewPattern := '12345';
  OldPattern := 'b';
  S := 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa';

  Flags := [];
  ReturnValue1 := FStrReplaceTest.FastStringReplace(S, OldPattern, NewPattern, Flags);
  ReturnValue2 := FStrReplaceTest.StringReplace(S, OldPattern, NewPattern, Flags);
  Check(ReturnValue1 = ReturnValue2, 'TestFastStringReplace6 - 1 fail');

  Flags := [rfReplaceAll];
  ReturnValue1 := FStrReplaceTest.FastStringReplace(S, OldPattern, NewPattern, Flags);
  ReturnValue2 := FStrReplaceTest.StringReplace(S, OldPattern, NewPattern, Flags);
  Check(ReturnValue1 = ReturnValue2, 'TestFastStringReplace6 - 2 fail');

  Flags := [rfIgnoreCase];
  ReturnValue1 := FStrReplaceTest.FastStringReplace(S, OldPattern, NewPattern, Flags);
  ReturnValue2 := FStrReplaceTest.StringReplace(S, OldPattern, NewPattern, Flags);
  Check(ReturnValue1 = ReturnValue2, 'TestFastStringReplace6 - 3 fail');

  Flags := [rfReplaceAll, rfIgnoreCase];
  ReturnValue1 := FStrReplaceTest.FastStringReplace(S, OldPattern, NewPattern, Flags);
  ReturnValue2 := FStrReplaceTest.StringReplace(S, OldPattern, NewPattern, Flags);
  Check(ReturnValue1 = ReturnValue2, 'TestFastStringReplace6 - 4 fail');
end;

procedure TestTStrReplaceTest.TestFastStringReplace7;
var
  ReturnValue1, ReturnValue2: string;
  Flags: TReplaceFlags;
  NewPattern: string;
  OldPattern: string;
  S: string;
begin
  NewPattern := 'ÂÊÎÔÛ';
  OldPattern := 'τʼ ἀφʼ ὧν';
  S := 'Ἰοὺ ἰού· τὰ πάντʼ ἂν ἐξήκοι σαφῆ Ὦ φῶς, τελευταῖόν σε προσϐλέψαιμι νῦν, ὅστις πέφασμαι φύς τʼ ἀφʼ ὧν οὐ χρῆν, ξὺν οἷς τʼοὐ χρῆν ὁμιλῶν, οὕς τέ μʼ οὐκ ἔδει κτανών.';

  Flags := [];
  ReturnValue1 := FStrReplaceTest.FastStringReplace(S, OldPattern, NewPattern, Flags);
  ReturnValue2 := FStrReplaceTest.StringReplace(S, OldPattern, NewPattern, Flags);
  Check(ReturnValue1 = ReturnValue2, 'TestFastStringReplace7 - 1 fail');

  Flags := [rfReplaceAll];
  ReturnValue1 := FStrReplaceTest.FastStringReplace(S, OldPattern, NewPattern, Flags);
  ReturnValue2 := FStrReplaceTest.StringReplace(S, OldPattern, NewPattern, Flags);
  Check(ReturnValue1 = ReturnValue2, 'TestFastStringReplace7 - 2 fail');

  Flags := [rfIgnoreCase];
  ReturnValue1 := FStrReplaceTest.FastStringReplace(S, OldPattern, NewPattern, Flags);
  ReturnValue2 := FStrReplaceTest.StringReplace(S, OldPattern, NewPattern, Flags);
  Check(ReturnValue1 = ReturnValue2, 'TestFastStringReplace7 - 3 fail');

  Flags := [rfReplaceAll, rfIgnoreCase];
  ReturnValue1 := FStrReplaceTest.FastStringReplace(S, OldPattern, NewPattern, Flags);
  ReturnValue2 := FStrReplaceTest.StringReplace(S, OldPattern, NewPattern, Flags);
  Check(ReturnValue1 = ReturnValue2, 'TestFastStringReplace7 - 4 fail');
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTStrReplaceTest{$ifndef FPC}.Suite{$endif});
end.

