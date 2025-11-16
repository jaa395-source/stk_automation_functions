function [app,root,scenario] = connect_to_stk()

dlgTitle = "STK Connection...";
dlgQuestion = "Connect to Already Running Instance of STK?";
btn1 = "Yes";
btn2 = "No";

choice = questdlg(dlgQuestion, dlgTitle, btn1, btn2, btn1);

switch choice
    case "Yes"
        app = actxGetRunningServer('STK12.Application');
        root = app.Personality2;
        scenario = root.CurrentScenario;
    case "No"
        app = actxserver('STK12.Application');
        app.Visible = 0;
        app.UserControl = 1;
        root = app.Personality2;
        root.NewScenario("temp");
        scenario = root.CurrentScenario;
end
end