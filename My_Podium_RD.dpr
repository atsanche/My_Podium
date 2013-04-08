program My_Podium_RD;

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  Login_Screen in 'Login_Screen.pas' {loginForm},
  Home_Screen in 'Home_Screen.pas' {homeForm},
  Splash_Screen in 'Splash_Screen.pas' {splashForm};
{$R *.res}

begin
  Application.Initialize;
  Application.UseMetropolisUI;
  TStyleManager.TrySetStyle('Metropolis UI Dark');
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Metropolis UI Application';
  Application.CreateForm(TsplashForm, splashForm);
  Application.CreateForm(TloginForm, loginForm);
  Application.CreateForm(ThomeForm, homeForm);
  Application.Run;
end.
