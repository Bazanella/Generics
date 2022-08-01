unit Generics.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TKeyValue<T> = class
  private
    FKey: String;
    FValue: T;
  public
    property Key: String read FKey write FKey;
    property Value: T read FValue write FValue;
  end;

  TForm1 = class(TForm)
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    procedure ExibeMensagem(aChave: String; aValor: String);
    procedure MensagemTForm(Value: TForm);
    procedure MensagemTButton(Value: TButton);
    procedure MensagemInteger(Value: Integer);
    { Private declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0: MensagemTForm(Self);
    1: MensagemTButton(Button1);
    2: MensagemInteger(100);
  end
end;

procedure TForm1.MensagemTForm(Value: TForm);
var
  vKeyValue: TKeyValue<TForm>;
begin
  vKeyValue := TKeyValue<TForm>.Create;
  try
    vKeyValue.Key := 'TForm';
    vKeyValue.Value := Value;
    ExibeMensagem(vKeyValue.Key, vKeyValue.Value.Name);
  finally
    vKeyValue.Free;
  end;
end;

procedure TForm1.MensagemTButton(Value: TButton);
var
  vKeyValue: TKeyValue<TButton>;
begin
  vKeyValue := TKeyValue<TButton>.Create;
  try
    vKeyValue.Key := 'TButton';
    vKeyValue.Value := Value;
    ExibeMensagem(vKeyValue.Key, vKeyValue.Value.Name);
  finally
    vKeyValue.Free;
  end;
end;

procedure TForm1.MensagemInteger(Value: Integer);
var
  vKeyValue: TKeyValue<Integer>;
begin
  vKeyValue := TKeyValue<Integer>.Create;
  try
    vKeyValue.Key := 'Inteiro';
    vKeyValue.Value := Value;
    ExibeMensagem(vKeyValue.Key, vKeyValue.Value.ToString);
  finally
    vKeyValue.Free;
  end;
end;

procedure TForm1.ExibeMensagem(aChave, aValor: String);
begin
  //Showmessage('Chave: '+ aChave + ' ---> Valor Genérico: '+ aValor);
  Label1.Caption := 'Chave: '+ aChave + ' ---> Valor Genérico: '+ aValor;
end;


end.
