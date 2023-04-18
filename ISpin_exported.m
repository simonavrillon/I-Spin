classdef ISpin_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        RecordingSettingsPanel          matlab.ui.container.Panel
        RefreshrateDropDown             matlab.ui.control.DropDown
        RefreshrateDropDownLabel        matlab.ui.control.Label
        LPfilterDropDown                matlab.ui.control.DropDown
        LPfilterDropDownLabel           matlab.ui.control.Label
        HPfilterDropDown                matlab.ui.control.DropDown
        HPfilterDropDownLabel           matlab.ui.control.Label
        StartVisualizationChecknoiseButton  matlab.ui.control.Button
        SelectfolderButton              matlab.ui.control.Button
        EditField_saving                matlab.ui.control.EditField
        SavingsettingsLabel             matlab.ui.control.Label
        StartVisualizationCheckEMGButton  matlab.ui.control.Button
        FrequencyDropDown               matlab.ui.control.DropDown
        FrequencyDropDownLabel          matlab.ui.control.Label
        MusclenamesLabel                matlab.ui.control.Label
        ChannelsLabel                   matlab.ui.control.Label
        EditField_4                     matlab.ui.control.EditField
        EditField_3                     matlab.ui.control.EditField
        EditField_2                     matlab.ui.control.EditField
        EditField_1                     matlab.ui.control.EditField
        Grid4CheckBox                   matlab.ui.control.CheckBox
        Grid3CheckBox                   matlab.ui.control.CheckBox
        Grid2CheckBox                   matlab.ui.control.CheckBox
        Grid1CheckBox                   matlab.ui.control.CheckBox
        TrainingSettingsPanel           matlab.ui.container.Panel
        COVthresholdEditField           matlab.ui.control.NumericEditField
        COVthresholdEditFieldLabel      matlab.ui.control.Label
        SILthresholdEditField           matlab.ui.control.NumericEditField
        SILthresholdEditFieldLabel      matlab.ui.control.Label
        EditField_MVC                   matlab.ui.control.EditField
        StartButton                     matlab.ui.control.Button
        NbIterationsEditField           matlab.ui.control.NumericEditField
        NbIterationsEditFieldLabel      matlab.ui.control.Label
        TrainingparametersLabel         matlab.ui.control.Label
        DurationtrainingEditField       matlab.ui.control.NumericEditField
        DurationtrainingEditFieldLabel  matlab.ui.control.Label
        MVCTargetEditField              matlab.ui.control.NumericEditField
        MVCTargetEditFieldLabel         matlab.ui.control.Label
        Gauge                           matlab.ui.control.SemicircularGauge
        StartMVCButton                  matlab.ui.control.Button
        EditField_offset                matlab.ui.control.NumericEditField
        OffsetCheckBox                  matlab.ui.control.CheckBox
        RestEditField                   matlab.ui.control.NumericEditField
        RestEditFieldLabel              matlab.ui.control.Label
        DurationEditField               matlab.ui.control.NumericEditField
        DurationEditFieldLabel          matlab.ui.control.Label
        MVCparametersLabel              matlab.ui.control.Label
        UIAxes                          matlab.ui.control.UIAxes
        EditionPanel                    matlab.ui.container.Panel
        CleaningLabel                   matlab.ui.control.Label
        PlotMUfiringratesButton         matlab.ui.control.Button
        SavetheeditionLabel             matlab.ui.control.Label
        VisualisationLabel              matlab.ui.control.Label
        SaveButton                      matlab.ui.control.Button
        PlotMUspiketrainsButton         matlab.ui.control.Button
        RemoveflaggedMUandduplicatesButton  matlab.ui.control.Button
        ImportdataButton                matlab.ui.control.Button
        SelectfileButton                matlab.ui.control.Button
        EditField_saving_2              matlab.ui.control.EditField
        BiofeedbackSettingsPanel        matlab.ui.container.Panel
        SmoothingEditField              matlab.ui.control.NumericEditField
        SmoothingEditFieldLabel         matlab.ui.control.Label
        ImportMUfiltersButton           matlab.ui.control.Button
        QualityofthedecompositionLabel  matlab.ui.control.Label
        DisplaythePulsetrainsButton     matlab.ui.control.Button
        StartRasterPlotwithMUsButton    matlab.ui.control.Button
        TypeofbiofeedbacksLabel         matlab.ui.control.Label
        ForceparametersLabel            matlab.ui.control.Label
        StartDRofalltheMUsButton        matlab.ui.control.Button
        StartQuadrantwithMUsButton      matlab.ui.control.Button
        StartQuadrantwithCSTsButton     matlab.ui.control.Button
        NbiterationsEditField           matlab.ui.control.NumericEditField
        NbiterationsEditFieldLabel      matlab.ui.control.Label
        DurationrestEditField           matlab.ui.control.NumericEditField
        DurationrestEditFieldLabel      matlab.ui.control.Label
        DurationplateauEditField        matlab.ui.control.NumericEditField
        DurationplateauEditFieldLabel   matlab.ui.control.Label
        DurationrampEditField           matlab.ui.control.NumericEditField
        DurationrampEditFieldLabel      matlab.ui.control.Label
        MVCtargetEditField              matlab.ui.control.NumericEditField
        MVCtargetEditFieldLabel         matlab.ui.control.Label
        UIAxes2                         matlab.ui.control.UIAxes
        VisualizationPanel              matlab.ui.container.Panel
        InitializeQuattrocentoButton    matlab.ui.control.Button
        DisconnectQuattrocentoButton    matlab.ui.control.Button
        GriddisplayedDropDownLabel      matlab.ui.control.Label
        GriddisplayedDropDown           matlab.ui.control.DropDown
        UIAxes3                         matlab.ui.control.UIAxes
        ManualeditionPanel              matlab.ui.container.Panel
        EditField_5                     matlab.ui.control.EditField
        ReevaluatewindowButton          matlab.ui.control.Button
        ScrollrightButton               matlab.ui.control.Button
        ZoomoutButton                   matlab.ui.control.Button
        ZoominButton                    matlab.ui.control.Button
        ScrollleftButton                matlab.ui.control.Button
        DeleteDRButton                  matlab.ui.control.Button
        DeletespikesButton              matlab.ui.control.Button
        AddspikesButton                 matlab.ui.control.Button
        FlagMUfordeletionButton         matlab.ui.control.Button
        RemoveoutliersButton            matlab.ui.control.Button
        MUdisplayedDropDownLabel        matlab.ui.control.Label
        MUdisplayedDropDown             matlab.ui.control.DropDown
        UIAxesDR                        matlab.ui.control.UIAxes
        UIAxesSpiketrain                matlab.ui.control.UIAxes
        VisualizationBiofeedback        matlab.ui.container.Panel
        InitializeQuattrocentoButton_2  matlab.ui.control.Button
        YaxisdisplayedDropDownLabel     matlab.ui.control.Label
        YaxisdisplayedDropDown          matlab.ui.control.DropDown
        DisconnectQuattrocentoButton_2  matlab.ui.control.Button
        XaxisdisplayedDropDownLabel     matlab.ui.control.Label
        XaxisdisplayedDropDown          matlab.ui.control.DropDown
        UIAxes5                         matlab.ui.control.UIAxes
        UIAxes4                         matlab.ui.control.UIAxes
        TabGroup                        matlab.ui.container.TabGroup
        RecordingTab                    matlab.ui.container.Tab
        TrainingTab                     matlab.ui.container.Tab
        EditionTab                      matlab.ui.container.Tab
        BiofeedbackTab                  matlab.ui.container.Tab
    end

    
    properties (Access = private)
        Pathname            % Folder where files will be saved      
        ComParameters       % Structure to save the parameters to interface with the quattrocento
        RecordParameters    % Structure to save the recording parameters (masks, muscles, MVC, offset)
        DecompParameters    % Structure to save the parameters of the decomposition (MU filters, extension matrix, centroids)
        OnlineParameters    % Structure to save the parameters of the online feedback

        filename2           % File to edit
        pathname2            % Folder where edited data will be saved
        MUedition           % Structure to save the data for MU edition accross contractions and intensities
        graphstart          % first time point of the graph for edition
        graphend            % last time point of the graph for edition
        roi                 % Region of interest for edition
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Button down function: BiofeedbackTab
        function BiofeedbackTabButtonDown(app, event)
            app.BiofeedbackSettingsPanel.Visible = 'on';
            app.EditionPanel.Visible = 'off';
            app.ManualeditionPanel.Visible = 'off';
            app.TrainingSettingsPanel.Visible = 'off';
            app.RecordingSettingsPanel.Visible = 'off';
            app.VisualizationPanel.Visible = 'off';
            app.VisualizationBiofeedback.Visible = 'on';
        end

        % Button down function: EditionTab
        function EditionTabButtonDown(app, event)
            app.BiofeedbackSettingsPanel.Visible = 'off';
            app.EditionPanel.Visible = 'on';
            app.ManualeditionPanel.Visible = 'on';
            app.TrainingSettingsPanel.Visible = 'off';
            app.RecordingSettingsPanel.Visible = 'off';
            app.VisualizationPanel.Visible = 'off';
            app.VisualizationBiofeedback.Visible = 'off';
        end

        % Button down function: RecordingTab
        function RecordingTabButtonDown(app, event)
            app.BiofeedbackSettingsPanel.Visible = 'off';
            app.EditionPanel.Visible = 'off';
            app.ManualeditionPanel.Visible = 'off';
            app.TrainingSettingsPanel.Visible = 'off';
            app.RecordingSettingsPanel.Visible = 'on';
            app.VisualizationPanel.Visible = 'on';
            app.VisualizationBiofeedback.Visible = 'off';
        end

        % Button down function: TrainingTab
        function TrainingTabButtonDown(app, event)
            app.BiofeedbackSettingsPanel.Visible = 'off';
            app.EditionPanel.Visible = 'off';
            app.ManualeditionPanel.Visible = 'off';
            app.TrainingSettingsPanel.Visible = 'on';
            app.RecordingSettingsPanel.Visible = 'off';
            app.VisualizationPanel.Visible = 'on';
            app.VisualizationBiofeedback.Visible = 'off';
        end

        % Button pushed function: SelectfolderButton
        function SelectfolderButtonPushed(app, event)
            app.UIFigure.Visible = 'off'; 
            app.Pathname = uigetdir;
            app.UIFigure.Visible = 'on';
            version = ispc;
            if version == 1
                app.EditField_saving.Value = [app.Pathname '\'];
            else
                app.EditField_saving.Value = [app.Pathname '/'];
            end
        end

        % Value changed function: Grid1CheckBox
        function Grid1CheckBoxValueChanged(app, event)
            if app.Grid1CheckBox.Value == 1
                app.EditField_1.Editable = 'on';
                app.Grid2CheckBox.Enable = 'on';
                app.RecordParameters.ngrid = 1;
                app.StartVisualizationChecknoiseButton.Enable = 'on';
                app.StartVisualizationCheckEMGButton.Enable = 'on';
                app.InitializeQuattrocentoButton.Enable = 'on';
                app.ComParameters.nchannel = 120;
                app.ComParameters.gridchannels = 33:1:96;
            else
                app.EditField_1.Editable = 'off';
                app.Grid2CheckBox.Enable = 'off';
                app.EditField_1.Value = '';
                app.EditField_2.Value = '';
                app.RecordParameters.ngrid = 0;
                app.GriddisplayedDropDown.Items = {'No Muscles'};
                app.GriddisplayedDropDown.Value = 'No Muscles';
                app.StartVisualizationChecknoiseButton.Enable = 'off';
                app.StartVisualizationCheckEMGButton.Enable = 'off';
                app.InitializeQuattrocentoButton.Enable = 'off';
            end
        end

        % Value changed function: Grid2CheckBox
        function Grid2CheckBoxValueChanged(app, event)
            if app.Grid2CheckBox.Value == 1
                app.EditField_2.Editable = 'on';
                app.Grid3CheckBox.Enable = 'on';
                app.RecordParameters.ngrid = 2;
                app.ComParameters.nchannel = 216;
                app.ComParameters.gridchannels = 65:1:192;
            else
                app.EditField_2.Editable = 'off';
                app.Grid2CheckBox.Enable = 'off';
                app.Grid3CheckBox.Enable = 'off';
                app.EditField_2.Value = '';
                app.EditField_3.Value = '';
                app.RecordParameters.ngrid = 1;
                app.ComParameters.nchannel = 120;
                app.ComParameters.gridchannels = 33:1:96;
            end
        end

        % Value changed function: Grid3CheckBox
        function Grid3CheckBoxValueChanged(app, event)
            if app.Grid3CheckBox.Value == 1
                app.EditField_3.Editable = 'on';
                app.Grid4CheckBox.Enable = 'on';
                app.RecordParameters.ngrid = 3;
                app.ComParameters.nchannel = 312;
                app.ComParameters.gridchannels = 97:1:288;
            else
                app.EditField_3.Editable = 'off';
                app.Grid3CheckBox.Enable = 'off';
                app.Grid4CheckBox.Enable = 'off';
                app.EditField_4.Value = '';
                app.EditField_3.Value = '';
                app.RecordParameters.ngrid = 2;
                app.ComParameters.nchannel = 216;
                app.ComParameters.gridchannels = 65:1:192;
            end            
        end

        % Value changed function: Grid4CheckBox
        function Grid4CheckBoxValueChanged(app, event)
            if app.Grid4CheckBox.Value == 1
                app.EditField_4.Editable = 'on';
                app.RecordParameters.ngrid = 4;
                app.ComParameters.nchannel = 408;
                app.ComParameters.gridchannels = 129:1:384;
            else
                app.EditField_4.Editable = 'off';
                app.Grid4CheckBox.Enable = 'off';
                app.EditField_4.Value = '';
                app.RecordParameters.ngrid = 3;
                app.ComParameters.nchannel = 312;
                app.ComParameters.gridchannels = 97:1:288;
            end
        end

        % Value changed function: EditField_1
        function EditField_1ValueChanged(app, event)
            app.GriddisplayedDropDown.Items = {'1'};
            app.GriddisplayedDropDown.Value = '1';
            app.RecordParameters.Muscles = {app.EditField_1.Value};
        end

        % Value changed function: EditField_2
        function EditField_2ValueChanged(app, event)
            app.GriddisplayedDropDown.Items = {'1', '2'};
            app.RecordParameters.Muscles = {app.EditField_1.Value, app.EditField_2.Value};
        end

        % Value changed function: EditField_3
        function EditField_3ValueChanged(app, event)
            app.GriddisplayedDropDown.Items = {'1', '2', '3'};
            app.RecordParameters.Muscles = {app.EditField_1.Value, app.EditField_2.Value, app.EditField_3.Value};
        end

        % Value changed function: EditField_4
        function EditField_4ValueChanged(app, event)
            app.GriddisplayedDropDown.Items = {'1', '2', '3', '4'};
            app.RecordParameters.Muscles = {app.EditField_1.Value, app.EditField_2.Value, app.EditField_3.Value, app.EditField_4.Value};
        end

        % Button pushed function: InitializeQuattrocentoButton
        function InitializeQuattrocentoButtonPushed(app, event)
            app.ComParameters.fsamp = str2double(app.FrequencyDropDown.Value);
            app.ComParameters.nsamp = floor(app.ComParameters.fsamp/str2double(app.RefreshrateDropDown.Value));
            app.ComParameters.highpass = str2double(app.HPfilterDropDown.Value);
            app.ComParameters.lowpass = str2double(app.LPfilterDropDown.Value);
            app.ComParameters.ConfString = bitseqquattro(app.ComParameters.fsamp, app.ComParameters.nchannel, app.ComParameters.highpass, app.ComParameters.lowpass);
            
            app.ComParameters.tcpSocket = tcpclient('169.254.1.10', 23456);
            app.ComParameters.tcpSocket.InputBufferSize = 2 * app.ComParameters.nchannel * app.ComParameters.fsamp;
            app.GriddisplayedDropDown.Enable = 'on';
            app.InitializeQuattrocentoButton.Enable = 'off';
            app.DisconnectQuattrocentoButton.Enable = 'on';
            app.StartVisualizationCheckEMGButton.Enable = 'on';
            app.StartVisualizationChecknoiseButton.Enable = 'on';
            app.StartButton.Enable = 'on';
            app.StartMVCButton.Enable = 'on';
            app.OffsetCheckBox.Enable = 'on';
        end

        % Button pushed function: DisconnectQuattrocentoButton
        function DisconnectQuattrocentoButtonPushed(app, event)
            app.ComParameters.ConfString(1) = bin2dec('10000000'); % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);            
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8');
            fclose(app.ComParameters.tcpSocket); % Close the communication
            flush(app.ComParameters.tcpSocket)
            app.InitializeQuattrocentoButton.Enable = 'on';
            app.DisconnectQuattrocentoButton.Enable = 'off';
            app.StartVisualizationCheckEMGButton.Enable = 'off';
            app.StartVisualizationChecknoiseButton.Enable = 'off';
            app.StartButton.Enable = 'off';
            app.StartMVCButton.Enable = 'off';
            app.OffsetCheckBox.Enable = 'off';
        end

        % Button pushed function: StartVisualizationChecknoiseButton
        function StartVisualizationChecknoiseButtonPushed(app, event)
            
            % Set the properties of the axes for data viz
            app.UIAxes3.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes3.YColor = [0.9412 0.9412 0.9412];
            xlabel(app.UIAxes3,'Time');
            ylabel(app.UIAxes3,'Channels');
            
            % record 15 seconds of data to assess the baseline noise
            nwin = floor((15*str2double(app.FrequencyDropDown.Value))/app.ComParameters.nsamp);
            nwinbuffmax = floor(str2double(app.FrequencyDropDown.Value)*5/app.ComParameters.nsamp);
            i = 1;
            nwinbuff = 1;

            % Pre allocate empty matrices
            time = linspace(0,5,5*str2double(app.FrequencyDropDown.Value));
            buffer = zeros(str2double(app.FrequencyDropDown.Value)*5,64);
            EMG = zeros(64*app.RecordParameters.ngrid,nwin*app.ComParameters.nsamp);     
            offset = ones(64,app.ComParameters.nsamp).* (1:1:64)';

            % Set the connection with the Quattrocento
            app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) + 1; % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);
            fopen(app.ComParameters.tcpSocket);
            set(app.ComParameters.tcpSocket, 'ByteOrder', 'little-endian');
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8'); % Send the configuration to quattrocento
            while i <= nwin
                data = fread(app.ComParameters.tcpSocket, [app.ComParameters.nchannel, app.ComParameters.nsamp], 'int16');
                EMG(:,(i-1)*app.ComParameters.nsamp+1:i*app.ComParameters.nsamp) = data(app.ComParameters.gridchannels, :);

                buffer((nwinbuff-1)*app.ComParameters.nsamp+1:nwinbuff*app.ComParameters.nsamp,:) = (EMG((str2double(app.GriddisplayedDropDown.Value)-1)*64+1:str2double(app.GriddisplayedDropDown.Value)*64,(i-1)*app.ComParameters.nsamp+1:i*app.ComParameters.nsamp) * 0.0005 + offset)';
                                
                plot(app.UIAxes3, time, buffer, 'LineWidth', 1, 'Color', [0.9412 0.9412 0.9412]);
                app.UIAxes3.XLim = [0 5];
                app.UIAxes3.YLim = [0 66];
                line(app.UIAxes3, [time(nwinbuff*app.ComParameters.nsamp) time(nwinbuff*app.ComParameters.nsamp)], [0 64], 'LineWidth', 1, 'Color', [0.81 0.50 1.00]);
                drawnow limitrate
                i = i + 1;               
                if nwinbuff < nwinbuffmax
                    nwinbuff = nwinbuff+1;
                else
                    nwinbuff = 1;
                end
            end
            app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) - 1; % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);            
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8');
            fclose(app.ComParameters.tcpSocket); % Close the communication
            flush(app.ComParameters.tcpSocket)

            % Check EMG noise
            Noisecheck = zeros(64,1);
            for j = 1:64
                Noisecheck(j) = rms(EMG((str2double(app.GriddisplayedDropDown.Value)-1)*64+j,str2double(app.FrequencyDropDown.Value):end-str2double(app.FrequencyDropDown.Value))/1000);
            end
            bar(app.UIAxes3,Noisecheck)
            app.UIAxes3.XLim = [0 65];
            app.UIAxes3.YLim = [0 max(Noisecheck)];
            xlabel(app.UIAxes3,'Channels');
            ylabel(app.UIAxes3,'RMS amplitude');
            drawnow
            
            % Update the UI for the next acquisition
            app.InitializeQuattrocentoButton.Enable = 'on';
            app.DisconnectQuattrocentoButton.Enable = 'off';
            app.StartVisualizationCheckEMGButton.Enable = 'off';
            app.StartVisualizationChecknoiseButton.Enable = 'off';
            app.StartButton.Enable = 'off';
            app.StartMVCButton.Enable = 'off';
            app.OffsetCheckBox.Enable = 'off';
        end

        % Button pushed function: StartVisualizationCheckEMGButton
        function StartVisualizationCheckEMGButtonPushed(app, event)
            
            % Set the properties of the axes for data viz
            app.UIAxes3.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes3.YColor = [0.9412 0.9412 0.9412];
            xlabel(app.UIAxes3,'Time');
            ylabel(app.UIAxes3,'Channels');

            % record 30 seconds of data to assess the quality of the EMG
            % signals and remove noisy channels
            nwin = floor((30*str2double(app.FrequencyDropDown.Value))/app.ComParameters.nsamp);
            nwinbuffmax = floor(str2double(app.FrequencyDropDown.Value)*5/app.ComParameters.nsamp);   
            i = 1;
            nwinbuff = 1;

            % Pre allocate empty matrices
            time = linspace(0,5,5*str2double(app.FrequencyDropDown.Value));
            buffer = zeros(str2double(app.FrequencyDropDown.Value)*5,64);
            EMG = zeros(64*app.RecordParameters.ngrid,nwin*app.ComParameters.nsamp);
            offset = ones(64,app.ComParameters.nsamp).* (1:1:64)';

            % Set the connection with the Quattrocento
            app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) + 1; % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);
            fopen(app.ComParameters.tcpSocket);
            set(app.ComParameters.tcpSocket, 'ByteOrder', 'little-endian');
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8'); % Send the configuration to quattrocento
            while i <= nwin
                data = fread(app.ComParameters.tcpSocket, [app.ComParameters.nchannel, app.ComParameters.nsamp], 'int16');
                EMG(:,(i-1)*app.ComParameters.nsamp+1:i*app.ComParameters.nsamp) = data(app.ComParameters.gridchannels, :);

                buffer((nwinbuff-1)*app.ComParameters.nsamp+1:nwinbuff*app.ComParameters.nsamp,:) = (EMG((str2double(app.GriddisplayedDropDown.Value)-1)*64+1:str2double(app.GriddisplayedDropDown.Value)*64,(i-1)*app.ComParameters.nsamp+1:i*app.ComParameters.nsamp) * 0.0005 + offset)';
                                 
                plot(app.UIAxes3, time, buffer, 'LineWidth', 1, 'Color', [0.9412 0.9412 0.9412]);
                app.UIAxes3.XLim = [0 5];
                app.UIAxes3.YLim = [0 66];
                line(app.UIAxes3, [time(nwinbuff*app.ComParameters.nsamp) time(nwinbuff*app.ComParameters.nsamp)], [0 64], 'LineWidth', 1, 'Color', [0.81 0.50 1.00]);
                drawnow limitrate
                i = i + 1;               
                if nwinbuff < nwinbuffmax
                    nwinbuff = nwinbuff+1;
                else
                    nwinbuff = 1;
                end
            end            
            app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) - 1; % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);            
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8');
            fclose(app.ComParameters.tcpSocket); % Close the communication
            flush(app.ComParameters.tcpSocket)

            % Check EMG
            for i = 1:app.RecordParameters.ngrid
                EMGcheck = zeros(13,size(EMG,2)*5);
                for j = 1:5
                    if j<5
                        EMGcheck(:,(j-1)*size(EMG,2)+1:j*size(EMG,2)) = EMG((i-1)*64+j*13-12:(i-1)*64+j*13,:);
                    else
                        EMGcheck(1:12,(j-1)*size(EMG,2)+1:j*size(EMG,2)) = EMG((i-1)*64+j*13-12:(i-1)*64+j*13-1,:);
                    end
                end
                offset2 = ones(13,size(EMGcheck,2)) .* (1:1:13)';
                EMGcheck = EMGcheck * 0.0005 + offset2;
                plot(app.UIAxes3,EMGcheck')
                line(app.UIAxes3,[size(EMG,2) size(EMG,2)], [0 14], 'LineWidth', 2, 'Color', [0.81 0.50 1.00])
                line(app.UIAxes3,[2*size(EMG,2) 2*size(EMG,2)], [0 14], 'LineWidth', 2, 'Color', [0.81 0.50 1.00])
                line(app.UIAxes3,[3*size(EMG,2) 3*size(EMG,2)], [0 14], 'LineWidth', 2, 'Color', [0.81 0.50 1.00])
                line(app.UIAxes3,[4*size(EMG,2) 4*size(EMG,2)], [0 14], 'LineWidth', 2, 'Color', [0.81 0.50 1.00])
                app.UIAxes3.XLim = [0 size(EMGcheck,2)];
                app.UIAxes3.YLim = [0 14];
                xlabel(app.UIAxes3,'Columns');
                ylabel(app.UIAxes3,'Rows');
                drawnow
                
                prompt   = {'col #1', 'col #2', 'col #3', 'col #4', 'col #5'};
                name     = 'Select the bad channels';
                dlg_emg  = inputdlg(prompt, name);

                app.RecordParameters.DiscardChannels{i} = zeros(65,1);
                for j = 1:5
                    app.RecordParameters.DiscardChannels{i}(str2num(dlg_emg{j}) + ((j-1)*13),1) = 1;
                end
                app.RecordParameters.DiscardChannels{i} = app.RecordParameters.DiscardChannels{i}(2:end,1);
                close;
            end
            
            % Save the file and update the UI for the next acquisition
            DisChannels = app.RecordParameters.DiscardChannels;
            Musclename = app.RecordParameters.Muscles;
            save([app.EditField_saving.Value 'EMGChecking ' replace(datestr(datetime('now')),':','_') '.mat'],'EMG', 'DisChannels', 'Musclename');
            app.InitializeQuattrocentoButton.Enable = 'on';
            app.DisconnectQuattrocentoButton.Enable = 'off';
            app.StartVisualizationCheckEMGButton.Enable = 'off';
            app.StartVisualizationChecknoiseButton.Enable = 'off';
            app.StartButton.Enable = 'off';
            app.StartMVCButton.Enable = 'off';
            app.OffsetCheckBox.Enable = 'off';
        end

        % Value changed function: OffsetCheckBox
        function OffsetCheckBoxValueChanged(app, event)
            if app.OffsetCheckBox.Value == 1
                            
                nwin = floor((3*str2double(app.FrequencyDropDown.Value))/app.ComParameters.nsamp);
                i = 1;
                
                % Pre allocate an empty vector
                force = zeros(1,nwin * app.ComParameters.nsamp);
                    
                % Set the connection with the Quattrocento
                app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) + 1; % Update the first byte that start the data transer
                app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);
                fopen(app.ComParameters.tcpSocket);
                set(app.ComParameters.tcpSocket, 'ByteOrder', 'little-endian');
                fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8'); % Send the configuration to quattrocento
                while i <= nwin
                    data = fread(app.ComParameters.tcpSocket, [app.ComParameters.nchannel, app.ComParameters.nsamp], 'int16');
                    force((i-1)*app.ComParameters.nsamp+1:i*app.ComParameters.nsamp) = data(app.ComParameters.gridchannels(end)+1, :);                    
                    i = i + 1;
                end
                app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) - 1; % Update the first byte that start the data transer
                app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);            
                fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8');
                fclose(app.ComParameters.tcpSocket); % Close the communication
                flush(app.ComParameters.tcpSocket)

                app.RecordParameters.offsetforce = mean(force(str2double(app.FrequencyDropDown.Value):end));
                app.EditField_offset.Value = app.RecordParameters.offsetforce;
            else
                app.RecordParameters.offsetforce = 0;
                app.EditField_offset.Value = app.RecordParameters.offsetforce;
            end
            
            % Update the UI for the next acquisition
            app.InitializeQuattrocentoButton.Enable = 'on';
            app.DisconnectQuattrocentoButton.Enable = 'off';
            app.StartVisualizationCheckEMGButton.Enable = 'off';
            app.StartVisualizationChecknoiseButton.Enable = 'off';
            app.StartButton.Enable = 'off';
            app.StartMVCButton.Enable = 'off';
            app.OffsetCheckBox.Enable = 'off';
        end

        % Button pushed function: StartMVCButton
        function StartMVCButtonPushed(app, event)

            % Set the properties of the gauge for data viz
            app.Gauge.Limits = [0 5];
            app.Gauge.MajorTicks = 0:1:5;

            % Generate the timeline for n trials separated by rest
            trialength = str2double(app.FrequencyDropDown.Value) * app.DurationEditField.Value * 3 + str2double(app.FrequencyDropDown.Value) * app.RestEditField.Value * 2 + str2double(app.FrequencyDropDown.Value) * 10;
            nwin = floor(trialength/app.ComParameters.nsamp);
            i = 1;

            MVCBeg = zeros(str2double(app.FrequencyDropDown.Value) * 10,1);
            MVCtrial = ones(str2double(app.FrequencyDropDown.Value) * app.DurationEditField.Value,1);
            MVCrest = zeros(str2double(app.FrequencyDropDown.Value) * app.RestEditField.Value,1);
            MVClight = [MVCBeg;MVCtrial;MVCrest;MVCtrial;MVCrest;MVCtrial];     
            TimeBeg = linspace(10,0,10*str2double(app.FrequencyDropDown.Value));
            Timetrial = zeros(1,str2double(app.FrequencyDropDown.Value) * app.DurationEditField.Value);
            Timerest = linspace(app.RestEditField.Value,0,app.RestEditField.Value*str2double(app.FrequencyDropDown.Value));
            Time = [TimeBeg Timetrial Timerest Timetrial Timerest Timetrial];
            
            % Pre allocate empty matrices
            EMG = zeros(64*app.RecordParameters.ngrid,trialength);
            Force = zeros(1,trialength);
            
            % Set the connection with the Quattrocento
            app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) + 1; % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);
            fopen(app.ComParameters.tcpSocket);
            set(app.ComParameters.tcpSocket, 'ByteOrder', 'little-endian');
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8');
            while i <= nwin
                data = fread(app.ComParameters.tcpSocket, [app.ComParameters.nchannel, app.ComParameters.nsamp], 'int16');
                EMG(:,(i-1)*app.ComParameters.nsamp+1:i*app.ComParameters.nsamp) = data(app.ComParameters.gridchannels, :);
                Force((i-1)*app.ComParameters.nsamp+1:i*app.ComParameters.nsamp) = (data(app.ComParameters.gridchannels(end)+1,:) - app.RecordParameters.offsetforce);
                                
                app.Gauge.Value = abs(mean(Force((i-1)*app.ComParameters.nsamp+1:i*app.ComParameters.nsamp))) * 0.0005;
                app.EditField_MVC.Value = num2str(Time(i*app.ComParameters.nsamp));
                if MVClight(i*app.ComParameters.nsamp) == 1
                    app.StartMVCButton.BackgroundColor = 'green';
                else
                    app.StartMVCButton.BackgroundColor = 'red';
                end
                drawnow
                i = i + 1;
            end            
            app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) - 1; % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);            
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8');
            fclose(app.ComParameters.tcpSocket); % Close the communication
            flush(app.ComParameters.tcpSocket)

            % remove the first second where the initialization of the amplifier occurs
            EMG = EMG(:,str2double(app.FrequencyDropDown.Value):end); 
            Force = Force(str2double(app.FrequencyDropDown.Value):end);

            % estimate the MVC over a moving average of 250 ms
            app.RecordParameters.MVC = max(abs(movmean(Force, str2double(app.FrequencyDropDown.Value)*0.25))); 
            MVCforce = app.RecordParameters.MVC;
            Offset_force = app.RecordParameters.offsetforce;
            DisChannels = app.RecordParameters.DiscardChannels;
            Musclename = app.RecordParameters.Muscles;
            
            % save the file
            save([app.EditField_saving.Value 'MVC ' replace(datestr(datetime('now')),':','_') '.mat'], 'EMG', 'MVCforce', 'Force', 'Offset_force', 'Time', 'MVClight', 'DisChannels', 'Musclename');
            
            % Update the UI for the next acquisition
            app.InitializeQuattrocentoButton.Enable = 'on';
            app.DisconnectQuattrocentoButton.Enable = 'off';
            app.StartVisualizationCheckEMGButton.Enable = 'off';
            app.StartVisualizationChecknoiseButton.Enable = 'off';
            app.StartButton.Enable = 'off';
            app.StartMVCButton.Enable = 'off';
            app.OffsetCheckBox.Enable = 'off';
        end

        % Value changed function: DurationtrainingEditField
        function DurationtrainingEditFieldValueChanged(app, event)
            fsamp = str2double(app.FrequencyDropDown.Value);
            app.DecompParameters.durationtraining = app.DurationtrainingEditField.Value * fsamp + 2*10*fsamp + 2*6*fsamp;
            time = linspace(0,app.DecompParameters.durationtraining/fsamp,app.DecompParameters.durationtraining);
            rest = zeros(1,6*fsamp);
            rampup = linspace(0,app.MVCTargetEditField.Value,10*fsamp);
            rampdown = linspace(app.MVCTargetEditField.Value,0,10*fsamp);
            plateau = ones(1,app.DurationtrainingEditField.Value * fsamp) * app.MVCTargetEditField.Value;
            app.DecompParameters.target = [rest rampup plateau rampdown rest];
            plot(app.UIAxes,time,app.DecompParameters.target,'Linewidth', 2, 'Color', [0.56 0.62 0.85]);
            app.UIAxes.XLim = [0 app.DecompParameters.durationtraining/fsamp];
            app.UIAxes.YLim = [0 app.MVCTargetEditField.Value + 1];
            app.UIAxes.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes.YColor = [0.9412 0.9412 0.9412];
            xlabel(app.UIAxes,'Time');
            ylabel(app.UIAxes,'Relative force');
        end

        % Value changed function: MVCTargetEditField
        function MVCTargetEditFieldValueChanged(app, event)
            fsamp = str2double(app.FrequencyDropDown.Value);
            app.DecompParameters.durationtraining = app.DurationtrainingEditField.Value * fsamp + 2*10*fsamp + 2*6*fsamp;
            time = linspace(0,app.DecompParameters.durationtraining/fsamp,app.DecompParameters.durationtraining);
            rest = zeros(1,6*fsamp);
            rampup = linspace(0,app.MVCTargetEditField.Value,10*fsamp);
            rampdown = linspace(app.MVCTargetEditField.Value,0,10*fsamp);
            plateau = ones(1,app.DurationtrainingEditField.Value * fsamp) * app.MVCTargetEditField.Value;
            app.DecompParameters.target = [rest rampup plateau rampdown rest];
            plot(app.UIAxes,time,app.DecompParameters.target,'Linewidth', 2, 'Color', [0.56 0.62 0.85]);
            app.UIAxes.XLim = [0 app.DecompParameters.durationtraining/fsamp];
            app.UIAxes.YLim = [0 app.MVCTargetEditField.Value + 1];
            app.UIAxes.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes.YColor = [0.9412 0.9412 0.9412];
            xlabel(app.UIAxes,'Time');
            ylabel(app.UIAxes,'Relative force');
        end

        % Button pushed function: StartButton
        function StartButtonPushed(app, event)
            
            % Set the properties of the axes for data viz
            app.UIAxes3.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes3.YColor = [0.9412 0.9412 0.9412];
            xlabel(app.UIAxes3,'Time');
            ylabel(app.UIAxes3,'Channels');

            nwin = floor(app.DecompParameters.durationtraining/app.ComParameters.nsamp);
            nwinbuffmax = floor(str2double(app.FrequencyDropDown.Value)*5/app.ComParameters.nsamp);
            i = 1;

            % Pre allocate empty matrices
            timetot = linspace(0,app.DecompParameters.durationtraining/str2double(app.FrequencyDropDown.Value),app.DecompParameters.durationtraining);
            EMG = zeros(app.RecordParameters.ngrid*64,app.DecompParameters.durationtraining);
            Force = NaN(1,app.DecompParameters.durationtraining);

            % Get the data
            app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) + 1; % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);
            fopen(app.ComParameters.tcpSocket);
            set(app.ComParameters.tcpSocket, 'ByteOrder', 'little-endian');
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8'); % Send the configuration to quattrocento
            while i <= nwin - nwinbuffmax
                data = fread(app.ComParameters.tcpSocket, [app.ComParameters.nchannel, app.ComParameters.nsamp], 'int16');
                EMG(:,(i-1)*app.ComParameters.nsamp+1:i*app.ComParameters.nsamp) = data(app.ComParameters.gridchannels, :);
                Force(:,(i-1)*app.ComParameters.nsamp+1:i*app.ComParameters.nsamp) = (data(app.ComParameters.gridchannels(end)+1,:) - app.RecordParameters.offsetforce);
                Force(:,(i-1)*app.ComParameters.nsamp+1:i*app.ComParameters.nsamp) = movmean(Force(:,(i-1)*app.ComParameters.nsamp+1:i*app.ComParameters.nsamp),round(app.ComParameters.nsamp*0.25));
                
                if i <= nwinbuffmax
                    plot(app.UIAxes3, timetot(1:str2double(app.FrequencyDropDown.Value)*10), abs(Force(1:str2double(app.FrequencyDropDown.Value)*10))/app.RecordParameters.MVC *100, ...
                    timetot(1:str2double(app.FrequencyDropDown.Value)*10), app.DecompParameters.target(1:str2double(app.FrequencyDropDown.Value)*10), ...
                    timetot(i*app.ComParameters.nsamp), abs(Force(i*app.ComParameters.nsamp))/app.RecordParameters.MVC * 100, 'o', 'MarkerSize', 20, 'LineWidth', 3, 'Color', [0.38 0.78 0.75]);
                    app.UIAxes3.XLim = [timetot(1) timetot(str2double(app.FrequencyDropDown.Value)*10)];
                    app.UIAxes3.YLim = [0 app.MVCTargetEditField.Value + 3];
                    plot(app.UIAxes, timetot, app.DecompParameters.target, timetot(i*app.ComParameters.nsamp), app.DecompParameters.target(i*app.ComParameters.nsamp), 'o', 'LineWidth', 2, 'MarkerSize', 20, 'Color', [0.56 0.62 0.85]);
                    drawnow limitrate
                else
                    plot(app.UIAxes3, timetot((i-1)*app.ComParameters.nsamp+1-str2double(app.FrequencyDropDown.Value)*5:str2double(app.FrequencyDropDown.Value)*5+(i-1)*app.ComParameters.nsamp), abs(Force((i-1)*app.ComParameters.nsamp+1-str2double(app.FrequencyDropDown.Value)*5:str2double(app.FrequencyDropDown.Value)*5+(i-1)*app.ComParameters.nsamp))/app.RecordParameters.MVC *100, ...
                    timetot((i-1)*app.ComParameters.nsamp+1-str2double(app.FrequencyDropDown.Value)*5:str2double(app.FrequencyDropDown.Value)*5+(i-1)*app.ComParameters.nsamp), app.DecompParameters.target((i-1)*app.ComParameters.nsamp+1-str2double(app.FrequencyDropDown.Value)*5:str2double(app.FrequencyDropDown.Value)*5+(i-1)*app.ComParameters.nsamp), ...
                    timetot(i*app.ComParameters.nsamp), abs(Force(i*app.ComParameters.nsamp))/app.RecordParameters.MVC *100, 'o', 'MarkerSize', 20, 'LineWidth', 3, 'Color', [0.38 0.78 0.75]);
                    app.UIAxes3.XLim = [timetot((i-1)*app.ComParameters.nsamp+1-str2double(app.FrequencyDropDown.Value)*5) timetot((i-1)*app.ComParameters.nsamp+1+str2double(app.FrequencyDropDown.Value)*5)];
                    app.UIAxes3.YLim = [0 app.MVCTargetEditField.Value + 3];
                    plot(app.UIAxes, timetot, app.DecompParameters.target, timetot(i*app.ComParameters.nsamp), app.DecompParameters.target(i*app.ComParameters.nsamp), 'o', 'LineWidth', 2, 'MarkerSize', 20, 'Color', [0.56 0.62 0.85]);
                    drawnow limitrate
                end
                i = i + 1;
            end            
            app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) - 1; % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);            
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8');
            fclose(app.ComParameters.tcpSocket); % Close the communication
            flush(app.ComParameters.tcpSocket)

            % Update the UI for the next acquisition
            app.InitializeQuattrocentoButton.Enable = 'on';
            app.DisconnectQuattrocentoButton.Enable = 'off';
            app.StartVisualizationCheckEMGButton.Enable = 'off';
            app.StartVisualizationChecknoiseButton.Enable = 'off';
            app.StartButton.Enable = 'off';
            app.StartMVCButton.Enable = 'off';
            app.OffsetCheckBox.Enable = 'off';

            % Decomposition for training
            f = waitbar(0,'Decomposition...');
            nbextchan = 1500;
            
            offsetMU = 0;

            for i = 1:app.RecordParameters.ngrid
                SIG = EMG((i-1)*64+1:i*64,25*str2double(app.FrequencyDropDown.Value):25*str2double(app.FrequencyDropDown.Value)+app.DurationtrainingEditField.Value*str2double(app.FrequencyDropDown.Value));
                SIG = SIG(app.RecordParameters.DiscardChannels{i}==0,:);

                % Signal Extension
                exFactor = round(nbextchan/size(SIG,1));
                eSIG = extend(SIG,exFactor);

                % Signal Whitening
                [E, D] = pcaesig(eSIG);
                [wSIG, ~, dewhiteningMatrix] = whiteesig(eSIG, E, D);
                
                % Removing the edges
                wSIG = wSIG(:,round(str2double(app.FrequencyDropDown.Value)):end-round(str2double(app.FrequencyDropDown.Value)));

                % FastICA
                % Initialize matrix B (n x m) n: separation vectors, m: iterations 
                % Initialize matrix MUFilters to only save the reliable filters
                % Intialize SIL and PNR
                B = zeros(size(wSIG,1), app.NbIterationsEditField.Value); % all separation vectors
                MUFilters = zeros(size(wSIG,1), app.NbIterationsEditField.Value); % only reliable vectors
                SIL = zeros(1,app.NbIterationsEditField.Value);
                COV = zeros(1,app.NbIterationsEditField.Value);

                % Find the index where the square of the summed whitened vectors is
                % maximized and initialize W with the whitened observations at this time
                idx1 = zeros(1,app.NbIterationsEditField.Value);

                for j = 1:app.NbIterationsEditField.Value
                    if j == 1
                        X = wSIG; % Initialize X (whitened signal), then X: residual
                        actind = sum(X,1).^2;
                        [~, idx1(j)] = max(actind);
                        w = X(:, idx1(j)); % Initialize w
                    else
                        actind(idx1(j-1)) = 0; % remove the previous vector
                        [~, idx1(j)] = max(actind);
                        w = X(:, idx1(j)); % Initialize w
                    end
                    
                    w = w - B * B' * w; % Orthogonalization
                    w = w / norm(w); % Normalization
                    
                    %       3a: Fixed point algorithm (end when sparsness is maximized)
                    maxiter = 500; % max number of iterations for the fixed point algorithm
                    w = fixedpointalg(w, X, B , maxiter, 'logcosh');
                    
                    % Step 4: Minimization of the CoV of discharge times (end when CoV is
                    % minimized)
                    % Initialize CoV (variation of interspike intervals, %) Step 4a => 4e
                    [~, spikes] = getspikes(w, X, str2double(app.FrequencyDropDown.Value));
                    
                    if length(spikes) > 10 % If the number of peaks is low, skip the second algorithm
                        ISI = diff(spikes/str2double(app.FrequencyDropDown.Value)); % Interspike interval
                        COV(j) = std(ISI)/mean(ISI); % Coefficient of variation
                        Wini = sum(X(:,spikes),2); % update W by summing the spikes
                                       
                                % Minimization of the CoV of discharge times (end when CoV is
                        % minimized)
                        [MUFilters(:,j), ~, COV(j)] = minimizeCOVISI(Wini, X, COV(j), str2double(app.FrequencyDropDown.Value));
                        B(:,j) = w;
                    
                        % Calculate SIL values
                        [~, ~, SIL(j)] = calcSIL(X, MUFilters(:,j), str2double(app.FrequencyDropDown.Value));
                    else
                        B(:,j) = w;
                    end
                    tit = ['Ite : ' num2str(j) ' - SIL : ' num2str(round(SIL(j),2)) ' - COV : ' num2str(round(COV(j),2))];
                    waitbar((j+app.NbIterationsEditField.Value*(i-1))/(app.NbIterationsEditField.Value*app.RecordParameters.ngrid),f,tit);                               
                end

                waitbar(i/app.RecordParameters.ngrid,f,['Batch processing grid #' num2str(i) '...']);
                % Filter out MUfilters below the SIL threshold
                MUFilters(:,SIL < app.SILthresholdEditField.Value) = [];
                COV(SIL < app.SILthresholdEditField.Value) = [];
                SIL(SIL < app.SILthresholdEditField.Value) = [];
                MUFilters(:,COV > app.COVthresholdEditField.Value) = [];
                MUFilters = dewhiteningMatrix * MUFilters;
                size(MUFilters);

                % Get the pulse train for the entire signal
                [PulseT, Distime, ~] = getPulseT(EMG((i-1)*64+1:i*64,:), app.RecordParameters.DiscardChannels{i}, MUFilters, str2double(app.FrequencyDropDown.Value));

                % Remove duplicates
                close(f)
                [~, Distime] = remduplicates(PulseT, Distime, Distime, exFactor, 0.3);

                % Get the decomposition parameters for the biofeedback
                app.DecompParameters.MUFilters{i} = getMUfilters(EMG((i-1)*64+1:i*64,:), app.RecordParameters.DiscardChannels{i}, Distime);
                [PulseT, Distime, ~] = getPulseT(EMG((i-1)*64+1:i*64,:), app.RecordParameters.DiscardChannels{i}, app.DecompParameters.MUFilters{i}, str2double(app.FrequencyDropDown.Value));
                [app.DecompParameters.extensionfactor(i), app.DecompParameters.iReSIG{i}, app.DecompParameters.norm{i}, app.DecompParameters.centroid{i}] = getonlineparameters(EMG((i-1)*64+1:i*64,:), app.RecordParameters.DiscardChannels{i}, app.DecompParameters.MUFilters{i}, str2double(app.FrequencyDropDown.Value));

                time = linspace(0,size(PulseT,2)/str2double(app.FrequencyDropDown.Value),size(PulseT,2));

                for k = 1:length(Distime)
                    plot(app.UIAxes3, time, PulseT(k,:)+k+offsetMU, time(Distime{k}), PulseT(k,Distime{k})+k+offsetMU, 'o', 'LineWidth', 1.5, 'MarkerSize', 10, 'Color', [0.9412 0.9412 0.9412], 'MarkerEdgeColor', [0.81 0.50 1.00]);
                    hold(app.UIAxes3, 'on')
                    signal.Dischargetimes{i,k} = Distime{k};
                    app.DecompParameters.DR{i}(k) = mean(1./(diff(Distime{k})/str2double(app.FrequencyDropDown.Value)));
                end
                    
                offsetMU = offsetMU + length(Distime) + 1;
                    
                signal.EMGmask{i} = app.RecordParameters.DiscardChannels{i};
                app.DecompParameters.EMGmask{i} = app.RecordParameters.DiscardChannels{i};
                signal.Pulsetrain{i} = PulseT;
                signal.gridname{i} = 'GR08MM1305';
                signal.SIL{i} = SIL;
                signal.COV{i} = COV;

                clearvars Distime PulseT B w wSIG X E D eSIG SIG maskEMG SIL COV
            end
            
            hold(app.UIAxes3, 'off')
            app.UIAxes3.XLim = [time(1) time(end)];
            app.UIAxes3.YLim = [0 offsetMU];
            xlabel(app.UIAxes3,'Time');
            ylabel(app.UIAxes3,'MUs');

            signal.data = EMG;
            signal.target = app.DecompParameters.target;
            signal.path = abs(Force)/app.RecordParameters.MVC * 100;
            signal.fsamp = str2double(app.FrequencyDropDown.Value);
            signal.muscle = app.RecordParameters.Muscles;
            signal.nChan = size(EMG,1);
            signal.ngrid = app.RecordParameters.ngrid; 
            save([app.EditField_saving.Value 'Training_' num2str(app.MVCTargetEditField.Value) '.mat'], 'signal');

            for i = 1:app.RecordParameters.ngrid
                % Update the list of the MUs for the biofeedback
                app.XaxisdisplayedDropDown.Items = {};
                app.YaxisdisplayedDropDown.Items = {};
                for j = 1:size(signal.Pulsetrain{i},1)
                    app.XaxisdisplayedDropDown.Items = horzcat(app.XaxisdisplayedDropDown.Items, {['Grid_', num2str(i), '_MU_' , num2str(j)]});
                    app.YaxisdisplayedDropDown.Items = horzcat(app.YaxisdisplayedDropDown.Items, {['Grid_', num2str(i), '_MU_' , num2str(j)]});
                end
            end
            app.XaxisdisplayedDropDown.Enable = 'on';
            app.YaxisdisplayedDropDown.Enable = 'on';

            % Update the UI for the next acquisition
            app.InitializeQuattrocentoButton.Enable = 'on';
            app.DisconnectQuattrocentoButton.Enable = 'off';
            app.StartVisualizationCheckEMGButton.Enable = 'off';
            app.StartVisualizationChecknoiseButton.Enable = 'off';
            app.StartButton.Enable = 'off';
            app.StartMVCButton.Enable = 'off';
            app.OffsetCheckBox.Enable = 'off';
        end

        % Button pushed function: ImportMUfiltersButton
        function ImportMUfiltersButtonPushed(app, event)
            app.UIFigure.Visible = 'off'; 
            [filename, pathname] = uigetfile();
            app.UIFigure.Visible = 'on';
            file = load([pathname filename], 'signal', 'edition');
            
            % for each grid, import the EMG signal and the discharge times
            % to generate the filters
            for i = 1:file.signal.ngrid
                app.DecompParameters.EMGmask{i} = file.signal.EMGmask{i};
                for j = 1:size(file.signal.Pulsetrain{i},1)
                    Distime{j} = file.edition.Dischargetimes{i,j}; % Import the edited discharge times
                    app.DecompParameters.DR{i}(j) = mean(1./(diff(Distime{j})/str2double(app.FrequencyDropDown.Value)));
                end
                % Get the filters and the parameters for online
                % decomposition
                app.DecompParameters.MUFilters{i} = getMUfilters(file.signal.data((i-1)*64+1:i*64,:), app.DecompParameters.EMGmask{i}, Distime);
                [app.DecompParameters.extensionfactor(i), app.DecompParameters.iReSIG{i}, app.DecompParameters.norm{i}, app.DecompParameters.centroid{i}] = getonlineparameters(file.signal.data((i-1)*64+1:i*64,:), app.DecompParameters.EMGmask{i}, app.DecompParameters.MUFilters{i}, str2double(app.FrequencyDropDown.Value));
                clearvars Distime
            end
        end

        % Value changed function: NbiterationsEditField
        function NbiterationsEditFieldValueChanged(app, event)
            fsamp = str2double(app.FrequencyDropDown.Value);
            app.OnlineParameters.durationonline = (app.DurationplateauEditField.Value * fsamp + 2*app.DurationrampEditField.Value*fsamp + 2*app.DurationrestEditField.Value*fsamp) * app.NbiterationsEditField.Value;
            time = linspace(0,app.OnlineParameters.durationonline/fsamp,app.OnlineParameters.durationonline);
            rest = zeros(1,app.DurationrestEditField.Value*fsamp);
            rampup = linspace(0,app.MVCtargetEditField.Value,app.DurationrampEditField.Value*fsamp);
            rampdown = linspace(app.MVCtargetEditField.Value,0,app.DurationrampEditField.Value*fsamp);
            plateau = ones(1,app.DurationplateauEditField.Value * fsamp) * app.MVCtargetEditField.Value;
            app.OnlineParameters.targetonline = [];
            for i = 1:app.NbiterationsEditField.Value
                app.OnlineParameters.targetonline = [app.OnlineParameters.targetonline rest rampup plateau rampdown rest];
            end
            plot(app.UIAxes2,time,app.OnlineParameters.targetonline,'Linewidth', 2, 'Color', [0.81 0.50 1.00]);
            app.UIAxes2.XLim = [-0.01 app.OnlineParameters.durationonline/fsamp];
            app.UIAxes2.YLim = [-0.01 app.MVCtargetEditField.Value + 1];
            app.UIAxes2.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes2.YColor = [0.9412 0.9412 0.9412];
            xlabel(app.UIAxes2,'Time');
            ylabel(app.UIAxes2,'Relative force');
        end

        % Value changed function: DurationrestEditField
        function DurationrestEditFieldValueChanged(app, event)
            fsamp = str2double(app.FrequencyDropDown.Value);
            app.OnlineParameters.durationonline = (app.DurationplateauEditField.Value * fsamp + 2*app.DurationrampEditField.Value*fsamp + 2*app.DurationrestEditField.Value*fsamp) * app.NbiterationsEditField.Value;
            time = linspace(0,app.OnlineParameters.durationonline/fsamp,app.OnlineParameters.durationonline);
            rest = zeros(1,app.DurationrestEditField.Value*fsamp);
            rampup = linspace(0,app.MVCtargetEditField.Value,app.DurationrampEditField.Value*fsamp);
            rampdown = linspace(app.MVCtargetEditField.Value,0,app.DurationrampEditField.Value*fsamp);
            plateau = ones(1,app.DurationplateauEditField.Value * fsamp) * app.MVCtargetEditField.Value;
            app.OnlineParameters.targetonline = [];
            for i = 1:app.NbiterationsEditField.Value
                app.OnlineParameters.targetonline = [app.OnlineParameters.targetonline rest rampup plateau rampdown rest];
            end
            plot(app.UIAxes2,time,app.OnlineParameters.targetonline,'Linewidth', 2, 'Color', [0.81 0.50 1.00]);
            app.UIAxes2.XLim = [-0.01 app.OnlineParameters.durationonline/fsamp];
            app.UIAxes2.YLim = [-0.01 app.MVCtargetEditField.Value + 1];  
            app.UIAxes2.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes2.YColor = [0.9412 0.9412 0.9412];
            xlabel(app.UIAxes2,'Time');
            ylabel(app.UIAxes2,'Relative force');
        end

        % Value changed function: DurationplateauEditField
        function DurationplateauEditFieldValueChanged(app, event)
            fsamp = str2double(app.FrequencyDropDown.Value);
            app.OnlineParameters.durationonline = (app.DurationplateauEditField.Value * fsamp + 2*app.DurationrampEditField.Value*fsamp + 2*app.DurationrestEditField.Value*fsamp) * app.NbiterationsEditField.Value;
            time = linspace(0,app.OnlineParameters.durationonline/fsamp,app.OnlineParameters.durationonline);
            rest = zeros(1,app.DurationrestEditField.Value*fsamp);
            rampup = linspace(0,app.MVCtargetEditField.Value,app.DurationrampEditField.Value*fsamp);
            rampdown = linspace(app.MVCtargetEditField.Value,0,app.DurationrampEditField.Value*fsamp);
            plateau = ones(1,app.DurationplateauEditField.Value * fsamp) * app.MVCtargetEditField.Value;
            app.OnlineParameters.targetonline = [];
            for i = 1:app.NbiterationsEditField.Value
                app.OnlineParameters.targetonline = [app.OnlineParameters.targetonline rest rampup plateau rampdown rest];
            end
            plot(app.UIAxes2,time,app.OnlineParameters.targetonline,'Linewidth', 2, 'Color', [0.81 0.50 1.00]);
            app.UIAxes2.XLim = [-0.01 app.OnlineParameters.durationonline/fsamp];
            app.UIAxes2.YLim = [-0.01 app.MVCtargetEditField.Value + 1];
            app.UIAxes2.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes2.YColor = [0.9412 0.9412 0.9412];
            xlabel(app.UIAxes2,'Time');
            ylabel(app.UIAxes2,'Relative force');
        end

        % Value changed function: DurationrampEditField
        function DurationrampEditFieldValueChanged(app, event)
            fsamp = str2double(app.FrequencyDropDown.Value);
            app.OnlineParameters.durationonline = (app.DurationplateauEditField.Value * fsamp + 2*app.DurationrampEditField.Value*fsamp + 2*app.DurationrestEditField.Value*fsamp) * app.NbiterationsEditField.Value;
            time = linspace(0,app.OnlineParameters.durationonline/fsamp,app.OnlineParameters.durationonline);
            rest = zeros(1,app.DurationrestEditField.Value*fsamp);
            rampup = linspace(0,app.MVCtargetEditField.Value,app.DurationrampEditField.Value*fsamp);
            rampdown = linspace(app.MVCtargetEditField.Value,0,app.DurationrampEditField.Value*fsamp);
            plateau = ones(1,app.DurationplateauEditField.Value * fsamp) * app.MVCtargetEditField.Value;
            app.OnlineParameters.targetonline = [];
            for i = 1:app.NbiterationsEditField.Value
                app.OnlineParameters.targetonline = [app.OnlineParameters.targetonline rest rampup plateau rampdown rest];
            end
            plot(app.UIAxes2,time,app.OnlineParameters.targetonline,'Linewidth', 2, 'Color', [0.81 0.50 1.00]);
            app.UIAxes2.XLim = [-0.01 app.OnlineParameters.durationonline/fsamp];
            app.UIAxes2.YLim = [-0.01 app.MVCtargetEditField.Value + 1];
            app.UIAxes2.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes2.YColor = [0.9412 0.9412 0.9412];
            xlabel(app.UIAxes2,'Time');
            ylabel(app.UIAxes2,'Relative force');
        end

        % Value changed function: MVCtargetEditField
        function MVCtargetEditFieldValueChanged(app, event)
            fsamp = str2double(app.FrequencyDropDown.Value);
            app.OnlineParameters.durationonline = (app.DurationplateauEditField.Value * fsamp + 2 * app.DurationrampEditField.Value * fsamp + 2*app.DurationrestEditField.Value*fsamp) * app.NbiterationsEditField.Value;
            app.NbiterationsEditField.Value
            time = linspace(0,app.OnlineParameters.durationonline/fsamp,app.OnlineParameters.durationonline);
            rest = zeros(1,app.DurationrestEditField.Value * fsamp);
            rampup = linspace(0,app.MVCtargetEditField.Value,app.DurationrampEditField.Value * fsamp);
            rampdown = linspace(app.MVCtargetEditField.Value,0,app.DurationrampEditField.Value * fsamp);
            plateau = ones(1,app.DurationplateauEditField.Value * fsamp) * app.MVCtargetEditField.Value;
            app.OnlineParameters.targetonline = [];
            for i = 1:app.NbiterationsEditField.Value
                app.OnlineParameters.targetonline = [app.OnlineParameters.targetonline rest rampup plateau rampdown rest];
            end
            plot(app.UIAxes2,time,app.OnlineParameters.targetonline,'Linewidth', 2, 'Color', [0.81 0.50 1.00]);
            app.UIAxes2.XLim = [-0.01 app.OnlineParameters.durationonline/fsamp];
            app.UIAxes2.YLim = [-0.01 app.MVCtargetEditField.Value + 1];
            app.UIAxes2.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes2.YColor = [0.9412 0.9412 0.9412];
            xlabel(app.UIAxes2,'Time');
            ylabel(app.UIAxes2,'Relative force');
        end

        % Button pushed function: StartRasterPlotwithMUsButton
        function StartRasterPlotwithMUsButtonPushed(app, event)
            C1 = strsplit(app.XaxisdisplayedDropDown.Value,'_');
            idxmuscle1 = str2double(C1{2});

            nwin = floor(app.OnlineParameters.durationonline/app.ComParameters.nsamp);
            nwinbuff = floor(str2double(app.FrequencyDropDown.Value)*5/app.ComParameters.nsamp);
            k = 1;
            
            % Pre allocate empty matrices
            Time = linspace(0,nwin*app.ComParameters.nsamp/str2double(app.FrequencyDropDown.Value),nwin*app.ComParameters.nsamp);
            EMG = zeros(app.RecordParameters.ngrid*64,app.OnlineParameters.durationonline);
            Force = NaN(1,app.OnlineParameters.durationonline);
            EMGtmp{1} = zeros(64,app.ComParameters.nsamp);
            esample2{1} = zeros((64-sum(app.DecompParameters.EMGmask{idxmuscle1}))*app.DecompParameters.extensionfactor(idxmuscle1),app.DecompParameters.extensionfactor(idxmuscle1)-1);
            Distime{1} = zeros(nwin*app.ComParameters.nsamp, size(app.DecompParameters.MUFilters{idxmuscle1},2));
            signal.Pulsetrain{1} = zeros(size(app.DecompParameters.MUFilters{idxmuscle1},2), app.ComParameters.nsamp*nwin);
            noise_centroids{1} = ones(app.ComParameters.nsamp,size(app.DecompParameters.MUFilters{idxmuscle1},2)) .* (app.DecompParameters.centroid{idxmuscle1}(:,1)');
            spike_centroids{1} = ones(app.ComParameters.nsamp,size(app.DecompParameters.MUFilters{idxmuscle1},2)) .* (app.DecompParameters.centroid{idxmuscle1}(:,2)');
            MUfilt{1} = app.DecompParameters.MUFilters{idxmuscle1}' * app.DecompParameters.iReSIG{idxmuscle1};
            MUoffset = 1:1:size(app.DecompParameters.MUFilters{idxmuscle1},2);
            forcefb = zeros(1,nwin);
            feedback = zeros(1,nwin);

            % Set the properties of the axes for data viz
            plot(app.UIAxes4, Time(1:str2double(app.FrequencyDropDown.Value)*5), Distime{1}(1:str2double(app.FrequencyDropDown.Value)*5,:).*MUoffset, '|', 'LineWidth', 4, 'MarkerSize', 20, 'Color', [0.56 0.62 0.85])
            plot(app.UIAxes5, 1, forcefb(k),'o', 'LineWidth', 4, 'MarkerSize', 20, 'Color', [0.9412 0.9412 0.9412])
            line(app.UIAxes5,[0 2], [feedback(k)*0.95 feedback(k)*0.95],'LineWidth', 4, 'Color', [0.9412 0.9412 0.9412])
            line(app.UIAxes5,[0 2], [feedback(k)*1.05 feedback(k)*1.05],'LineWidth', 4, 'Color', [0.9412 0.9412 0.9412])          
            app.UIAxes4.XLim = [Time(1) Time(str2double(app.FrequencyDropDown.Value)*5)];
            app.UIAxes4.YLim = [0.5 size(app.DecompParameters.MUFilters{idxmuscle1},2)+0.5];
            app.UIAxes5.XLim = [0 2];
            app.UIAxes5.YLim = [0 max(app.OnlineParameters.targetonline)*1.25];
            app.UIAxes4.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes4.YColor = [0.9412 0.9412 0.9412];
            app.UIAxes5.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes5.YColor = [0.9412 0.9412 0.9412];
            xlabel(app.UIAxes4,'Time');
            ylabel(app.UIAxes4,'MU Discharge times');

            % Get the data
            app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) + 1; % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);
            fopen(app.ComParameters.tcpSocket);
            set(app.ComParameters.tcpSocket, 'ByteOrder', 'little-endian');
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8'); % Send the configuration to quattrocento
            while k <= nwin - floor(nwinbuff/2)
                data = fread(app.ComParameters.tcpSocket, [app.ComParameters.nchannel, app.ComParameters.nsamp], 'int16');
                EMG(:,(k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp) = data(app.ComParameters.gridchannels((idxmuscle1-1)*64+1:idxmuscle1*64), :);
                Force(:,(k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp) = (data(app.ComParameters.gridchannels(end)+1,:) - app.RecordParameters.offsetforce);
                forcefb(k) = mean(abs(Force((k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp)));
                feedback(k) = mean(app.OnlineParameters.targetonline((k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp));
                
                EMGtmp{1} = EMG(app.DecompParameters.EMGmask{idxmuscle1}==0, (k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp);
            
                [signal.Pulsetrain{1}(:,(k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp), Distime{1}((k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp, :), esample2{1}] = getspikesonline(EMGtmp{1}, app.DecompParameters.extensionfactor(idxmuscle1), esample2{1}, MUfilt{1}, app.DecompParameters.norm{idxmuscle1}, noise_centroids{1}, spike_centroids{1}, app.ComParameters.nsamp, str2double(app.FrequencyDropDown.Value));
                
                if k <= nwinbuff
                    plot(app.UIAxes4, Time(1:str2double(app.FrequencyDropDown.Value)*5), Distime{1}(1:str2double(app.FrequencyDropDown.Value)*5,:).*MUoffset, '|', 'LineWidth', 4, 'MarkerSize', 20, 'Color', [0.56 0.62 0.85])
                    app.UIAxes4.XLim = [Time(1) Time(str2double(app.FrequencyDropDown.Value)*5)];
                    plot(app.UIAxes5, 1, forcefb(k)/app.RecordParameters.MVC * 100,'o', 'LineWidth', 4, 'MarkerSize', 20, 'Color', [0.9412 0.9412 0.9412])
                    line(app.UIAxes5,[0 2], [feedback(k)*0.95 feedback(k)*0.95],'LineWidth', 4, 'Color', [0.9412 0.9412 0.9412])
                    line(app.UIAxes5,[0 2], [feedback(k)*1.05 feedback(k)*1.05],'LineWidth', 4, 'Color', [0.9412 0.9412 0.9412])
                else
                    plot(app.UIAxes4, Time((k-1)*app.ComParameters.nsamp+1-str2double(app.FrequencyDropDown.Value)*2.5:str2double(app.FrequencyDropDown.Value)*2.5+(k-1)*app.ComParameters.nsamp), Distime{1}((k-1)*app.ComParameters.nsamp+1-str2double(app.FrequencyDropDown.Value)*2.5:str2double(app.FrequencyDropDown.Value)*2.5+(k-1)*app.ComParameters.nsamp,:).*MUoffset, '|', 'LineWidth', 4, 'MarkerSize', 20, 'Color', [0.56 0.62 0.85])
                    app.UIAxes4.XLim = [Time((k-1)*app.ComParameters.nsamp+1-str2double(app.FrequencyDropDown.Value)*2.5) Time(str2double(app.FrequencyDropDown.Value)*2.5+(k-1)*app.ComParameters.nsamp)];
                    plot(app.UIAxes5, 1, forcefb(k)/app.RecordParameters.MVC * 100,'o', 'LineWidth', 4, 'MarkerSize', 20, 'Color', [0.9412 0.9412 0.9412])
                    line(app.UIAxes5,[0 2], [feedback(k)*0.95 feedback(k)*0.95],'LineWidth', 4, 'Color', [0.9412 0.9412 0.9412])
                    line(app.UIAxes5,[0 2], [feedback(k)*1.05 feedback(k)*1.05],'LineWidth', 4, 'Color', [0.9412 0.9412 0.9412])
                end
                app.UIAxes5.YLim = [0 max(app.OnlineParameters.targetonline)*1.25];
                app.UIAxes4.YLim = [0.5 size(app.DecompParameters.MUFilters{idxmuscle1},2)+0.5];
                drawnow limitrate
                k = k+1;
            end
            app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) - 1; % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);            
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8');
            fclose(app.ComParameters.tcpSocket); % Close the communication
            flush(app.ComParameters.tcpSocket)

            % Save the data
            signal.data = EMG;
            signal.target = app.OnlineParameters.targetonline;
            signal.path = Force;
            signal.fsamp = str2double(app.FrequencyDropDown.Value);
            signal.muscle = app.RecordParameters.Muscles{idxmuscle1};
            signal.nChan = size(EMG,1);
            signal.ngrid = app.RecordParameters.ngrid; 
            signal.EMGmask{1} = app.DecompParameters.EMGmask{idxmuscle1};
            signal.gridname{1} = 'GR08MM1305';
            signal.feedback{1} = 'Raster plot';
            for k = 1:size(Distime{1},2)
                signal.Dischargetimes{k} = find(Distime{1}(:,k) > 0);
            end
            save([app.EditField_saving.Value 'Online ' replace(datestr(datetime('now')),':','_') '.mat'], 'signal');

            % Update the results of the last decomposition
            app.OnlineParameters.Timeplot = linspace(0,size(signal.Pulsetrain{1},2)/str2double(app.FrequencyDropDown.Value),size(signal.Pulsetrain{1},2));
            app.OnlineParameters.Pulsetrain = [];
            app.OnlineParameters.Dischargetimes = {};
            nMU = 1;
            for i = 1:length(Distime)
                app.OnlineParameters.Pulsetrain = [app.OnlineParameters.Pulsetrain; signal.Pulsetrain{i}];
                for j = 1:size(Distime{i},2)
                    app.OnlineParameters.Dischargetimes{nMU} =  signal.Dischargetimes{i,j};
                    nMU = nMU + 1;
                end
            end
            clearvars Distime

            % Updates the parameters of the decomposition
            EMG = EMG(:,str2double(app.FrequencyDropDown.Value):end);
            [~, Distime, ~] = getPulseT(EMG, app.RecordParameters.DiscardChannels{idxmuscle1}, app.DecompParameters.MUFilters{idxmuscle1}, str2double(app.FrequencyDropDown.Value));
            app.DecompParameters.MUFilters{idxmuscle1} = getMUfilters(EMG, app.RecordParameters.DiscardChannels{idxmuscle1}, Distime);
            [app.DecompParameters.extensionfactor(idxmuscle1), app.DecompParameters.iReSIG{idxmuscle1}, app.DecompParameters.norm{idxmuscle1}, app.DecompParameters.centroid{idxmuscle1}] = getonlineparameters(EMG, app.RecordParameters.DiscardChannels{idxmuscle1}, app.DecompParameters.MUFilters{idxmuscle1}, str2double(app.FrequencyDropDown.Value));

            % Update the UI for the next acquisition
            app.InitializeQuattrocentoButton_2.Enable = 'on';
            app.DisconnectQuattrocentoButton_2.Enable = 'off';
            app.StartQuadrantwithCSTsButton.Enable = 'off';
            app.StartQuadrantwithMUsButton.Enable = 'off';
            app.StartRasterPlotwithMUsButton.Enable = 'off';
            app.StartDRofalltheMUsButton.Enable = 'off';
            app.DisplaythePulsetrainsButton.Enable = 'on';
        end

        % Button pushed function: StartQuadrantwithCSTsButton
        function StartQuadrantwithCSTsButtonPushed(app, event)
            C1 = strsplit(app.XaxisdisplayedDropDown.Value,'_');
            idxmuscle1 = str2double(C1{2});

            nwin = floor(app.OnlineParameters.durationonline/app.ComParameters.nsamp);
            k = 1;

            % Pre allocate empty matrices
            EMG = zeros(app.RecordParameters.ngrid*64,app.OnlineParameters.durationonline);
            Force = NaN(1,app.OnlineParameters.durationonline);
            EMGtmp{1} = zeros(64,app.ComParameters.nsamp);
            esample2{1} = zeros((64-sum(app.DecompParameters.EMGmask{idxmuscle1}))*app.DecompParameters.extensionfactor(idxmuscle1),app.DecompParameters.extensionfactor(idxmuscle1)-1);
            Distime{1} = zeros(nwin*app.ComParameters.nsamp, size(app.DecompParameters.MUFilters{idxmuscle1},2));
            signal.Pulsetrain{1} = zeros(size(app.DecompParameters.MUFilters{idxmuscle1},2), app.ComParameters.nsamp*nwin);
            noise_centroids{1} = ones(app.ComParameters.nsamp,size(app.DecompParameters.MUFilters{idxmuscle1},2)) .* (app.DecompParameters.centroid{idxmuscle1}(:,1)');
            spike_centroids{1} = ones(app.ComParameters.nsamp,size(app.DecompParameters.MUFilters{idxmuscle1},2)) .* (app.DecompParameters.centroid{idxmuscle1}(:,2)');
            MUfilt{1} = app.DecompParameters.MUFilters{idxmuscle1}' * app.DecompParameters.iReSIG{idxmuscle1};
            DR = zeros(nwin, 2);
            forcefb = zeros(1,nwin);
            feedback = zeros(1,nwin);

            % Set the properties of the axes for data viz
            idxhMU = floor(size(app.DecompParameters.MUFilters{idxmuscle1},2)/2);
            plot(app.UIAxes4, DR(k:k+7,1) , DR(k:k+7,2), DR(k,1) , DR(k,2),'o', 'LineWidth', 4, 'MarkerSize', 20, 'Color', [0.9412 0.9412 0.9412])
            plot(app.UIAxes5, 1, forcefb(k),'o', 'LineWidth', 4, 'MarkerSize', 20, 'Color', [0.9412 0.9412 0.9412])
            line(app.UIAxes5,[0 2], [feedback(k)*0.95 feedback(k)*0.95],'LineWidth', 4, 'Color', [0.9412 0.9412 0.9412])
            line(app.UIAxes5,[0 2], [feedback(k)*1.05 feedback(k)*1.05],'LineWidth', 4, 'Color', [0.9412 0.9412 0.9412])
            app.UIAxes4.XLim = [0 sum(app.DecompParameters.DR{idxmuscle1}(1:idxhMU))*1.2];
            app.UIAxes4.YLim = [0 sum(app.DecompParameters.DR{idxmuscle1}(idxhMU+1:end))*1.2];
            app.UIAxes5.XLim = [0 2];
            app.UIAxes5.YLim = [0 max(app.OnlineParameters.targetonline)*1.25];
            app.UIAxes4.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes4.YColor = [0.9412 0.9412 0.9412];
            app.UIAxes5.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes5.YColor = [0.9412 0.9412 0.9412];
            xlabel(app.UIAxes4,'Discharge rate CST1');
            ylabel(app.UIAxes4,'Discharge rate CST2');

            % Get the data
            app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) + 1; % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);
            fopen(app.ComParameters.tcpSocket);
            set(app.ComParameters.tcpSocket, 'ByteOrder', 'little-endian');
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8'); % Send the configuration to quattrocento
            while k <= nwin
                data = fread(app.ComParameters.tcpSocket, [app.ComParameters.nchannel, app.ComParameters.nsamp], 'int16');
                EMG(:,(k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp) = data(app.ComParameters.gridchannels((idxmuscle1-1)*64+1:idxmuscle1*64), :);
                Force(:,(k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp) = (data(app.ComParameters.gridchannels(end)+1,:) - app.RecordParameters.offsetforce);
                forcefb(k) = mean(abs(Force((k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp)));
                feedback(k) = mean(app.OnlineParameters.targetonline((k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp));
                
                EMGtmp{1} = EMG(app.DecompParameters.EMGmask{idxmuscle1}==0, (k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp);
            
                [signal.Pulsetrain{1}(:,(k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp), Distime{1}((k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp, :), esample2{1}] = getspikesonline(EMGtmp{1}, app.DecompParameters.extensionfactor(idxmuscle1), esample2{1}, MUfilt{1}, app.DecompParameters.norm{idxmuscle1}, noise_centroids{1}, spike_centroids{1}, app.ComParameters.nsamp, str2double(app.FrequencyDropDown.Value));
                
                if k < 8
                    DR(k,1) = sum(Distime{1}((k-1)*app.ComParameters.nsamp+1:8*app.ComParameters.nsamp, 1:idxhMU) > 0, 'all');
                    DR(k,2) = sum(Distime{1}((k-1)*app.ComParameters.nsamp+1:8*app.ComParameters.nsamp, idxhMU+1:end) > 0, 'all');    
                    plot(app.UIAxes4, DR(k:k+7,1) , DR(k:k+7,2), DR(k,1) , DR(k,2),'o', 'LineWidth', 4, 'MarkerSize', 20, 'Color', [0.56 0.62 0.85])
                    plot(app.UIAxes5, 1, forcefb(k)/app.RecordParameters.MVC * 100,'o', 'LineWidth', 4, 'MarkerSize', 20, 'Color', [0.9412 0.9412 0.9412])
                    line(app.UIAxes5,[0 2], [feedback(k)*0.95 feedback(k)*0.95],'LineWidth', 4, 'Color', [0.9412 0.9412 0.9412])
                    line(app.UIAxes5,[0 2], [feedback(k)*1.05 feedback(k)*1.05],'LineWidth', 4, 'Color', [0.9412 0.9412 0.9412])
                else
                    DR(k,1) = sum(Distime{1}((k-7)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp, 1:idxhMU) > 0, 'all');
                    DR(k,2) = sum(Distime{1}((k-7)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp, idxhMU+1:end) > 0, 'all');
                    DR(k,:) = mean(DR(k-(app.SmoothingEditField.Value-1):k,:), 1);
                    plot(app.UIAxes4, DR(k-7:k,1) , DR(k-7:k,2), DR(k,1) , DR(k,2),'o', 'LineWidth', 4, 'MarkerSize', 20, 'Color', [0.56 0.62 0.85])
                    plot(app.UIAxes5, 1, forcefb(k)/app.RecordParameters.MVC * 100,'o', 'LineWidth', 4, 'MarkerSize', 20, 'Color', [0.9412 0.9412 0.9412])
                    line(app.UIAxes5,[0 2], [feedback(k)*0.95 feedback(k)*0.95],'LineWidth', 4, 'Color', [0.9412 0.9412 0.9412])
                    line(app.UIAxes5,[0 2], [feedback(k)*1.05 feedback(k)*1.05],'LineWidth', 4, 'Color', [0.9412 0.9412 0.9412])
                end
                app.UIAxes4.XLim = [0 sum(app.DecompParameters.DR{idxmuscle1}(1:idxhMU))*1.2];
                app.UIAxes4.YLim = [0 sum(app.DecompParameters.DR{idxmuscle1}(idxhMU+1:end))*1.2];
                app.UIAxes5.YLim = [0 max(app.OnlineParameters.targetonline)*1.25];
                drawnow
                k = k+1;
            end
            app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) - 1; % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);            
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8');
            fclose(app.ComParameters.tcpSocket); % Close the communication
            flush(app.ComParameters.tcpSocket)

            % Save the data
            signal.data = EMG;
            signal.target = app.OnlineParameters.targetonline;
            signal.path = Force;
            signal.fsamp = str2double(app.FrequencyDropDown.Value);
            signal.muscle = app.RecordParameters.Muscles{idxmuscle1};
            signal.nChan = size(EMG,1);
            signal.ngrid = app.RecordParameters.ngrid; 
            signal.EMGmask{1} = app.DecompParameters.EMGmask{idxmuscle1};
            signal.gridname{1} = 'GR08MM1305';
            signal.feedback{1} = 'Quadrant_CST';
            for k = 1:size(Distime{1},2)
                signal.Dischargetimes{k} = find(Distime{1}(:,k) > 0);
            end
            save([app.EditField_saving.Value 'Online ' replace(datestr(datetime('now')),':','_') '.mat'], 'signal');

            % Update the results of the last decomposition
            app.OnlineParameters.Timeplot = linspace(0,size(signal.Pulsetrain{1},2)/str2double(app.FrequencyDropDown.Value),size(signal.Pulsetrain{1},2));
            app.OnlineParameters.Pulsetrain = [];
            app.OnlineParameters.Dischargetimes = {};
            nMU = 1;
            for i = 1:length(Distime)
                app.OnlineParameters.Pulsetrain = [app.OnlineParameters.Pulsetrain; signal.Pulsetrain{i}];
                for j = 1:size(Distime{i},2)
                    app.OnlineParameters.Dischargetimes{nMU} =  signal.Dischargetimes{i,j};
                    nMU = nMU + 1;
                end
            end
            clearvars Distime

            % Updates the parameters of the decomposition
            EMG = EMG(:,str2double(app.FrequencyDropDown.Value):end);
            [~, Distime, ~] = getPulseT(EMG, app.RecordParameters.DiscardChannels{idxmuscle1}, app.DecompParameters.MUFilters{idxmuscle1}, str2double(app.FrequencyDropDown.Value));
            app.DecompParameters.MUFilters{idxmuscle1} = getMUfilters(EMG, app.RecordParameters.DiscardChannels{idxmuscle1}, Distime);
            [app.DecompParameters.extensionfactor(idxmuscle1), app.DecompParameters.iReSIG{idxmuscle1}, app.DecompParameters.norm{idxmuscle1}, app.DecompParameters.centroid{idxmuscle1}] = getonlineparameters(EMG, app.RecordParameters.DiscardChannels{idxmuscle1}, app.DecompParameters.MUFilters{idxmuscle1}, str2double(app.FrequencyDropDown.Value));

            % Update the UI for the next acquisition
            app.InitializeQuattrocentoButton_2.Enable = 'on';
            app.DisconnectQuattrocentoButton_2.Enable = 'off';
            app.StartQuadrantwithCSTsButton.Enable = 'off';
            app.StartQuadrantwithMUsButton.Enable = 'off';
            app.StartRasterPlotwithMUsButton.Enable = 'off';
            app.StartDRofalltheMUsButton.Enable = 'off';
            app.DisplaythePulsetrainsButton.Enable = 'on';
        end

        % Button pushed function: StartQuadrantwithMUsButton
        function StartQuadrantwithMUsButtonPushed(app, event)
            C1 = strsplit(app.XaxisdisplayedDropDown.Value,'_');
            C2 = strsplit(app.YaxisdisplayedDropDown.Value,'_');
            idxmuscle1 = str2double(C1{2});
            idxmuscle2 = str2double(C2{2});
            idxmu1 = str2double(C1{4});
            idxmu2 = str2double(C2{4});

            nwin = floor(app.OnlineParameters.durationonline/app.ComParameters.nsamp);
            k = 1;

            % Pre allocate empty matrices
            Force = NaN(1,app.OnlineParameters.durationonline);

            EMG{1} = zeros(app.RecordParameters.ngrid*64,app.OnlineParameters.durationonline);
            EMGtmp{1} = zeros(64,app.ComParameters.nsamp);
            esample2{1} = zeros((64-sum(app.DecompParameters.EMGmask{idxmuscle1}))*app.DecompParameters.extensionfactor(idxmuscle1),app.DecompParameters.extensionfactor(idxmuscle1)-1);
            Distime{1} = zeros(nwin*app.ComParameters.nsamp, size(app.DecompParameters.MUFilters{idxmuscle1},2));
            signal.Pulsetrain{1} = zeros(size(app.DecompParameters.MUFilters{idxmuscle1},2), app.ComParameters.nsamp*nwin);
            noise_centroids{1} = ones(app.ComParameters.nsamp,size(app.DecompParameters.MUFilters{idxmuscle1},2)) .* (app.DecompParameters.centroid{idxmuscle1}(:,1)');
            spike_centroids{1} = ones(app.ComParameters.nsamp,size(app.DecompParameters.MUFilters{idxmuscle1},2)) .* (app.DecompParameters.centroid{idxmuscle1}(:,2)');
            MUfilt{1} = app.DecompParameters.MUFilters{idxmuscle1}' * app.DecompParameters.iReSIG{idxmuscle1};

            EMG{2} = zeros(app.RecordParameters.ngrid*64,app.OnlineParameters.durationonline);
            EMGtmp{2} = zeros(64,app.ComParameters.nsamp);
            esample2{2} = zeros((64-sum(app.DecompParameters.EMGmask{idxmuscle2}))*app.DecompParameters.extensionfactor(idxmuscle2),app.DecompParameters.extensionfactor(idxmuscle2)-1);
            Distime{2} = zeros(nwin*app.ComParameters.nsamp, size(app.DecompParameters.MUFilters{idxmuscle2},2));
            signal.Pulsetrain{2} = zeros(size(app.DecompParameters.MUFilters{idxmuscle2},2), app.ComParameters.nsamp*nwin);
            noise_centroids{2} = ones(app.ComParameters.nsamp,size(app.DecompParameters.MUFilters{idxmuscle2},2)) .* (app.DecompParameters.centroid{idxmuscle2}(:,1)');
            spike_centroids{2} = ones(app.ComParameters.nsamp,size(app.DecompParameters.MUFilters{idxmuscle2},2)) .* (app.DecompParameters.centroid{idxmuscle2}(:,2)');
            MUfilt{2} = app.DecompParameters.MUFilters{idxmuscle2}' * app.DecompParameters.iReSIG{idxmuscle2};

            DR{1} = zeros(nwin, size(app.DecompParameters.MUFilters{idxmuscle1},2));
            DR{2} = zeros(nwin, size(app.DecompParameters.MUFilters{idxmuscle2},2));
            forcefb = zeros(1,nwin);
            feedback = zeros(1,nwin);

            % Set the properties of the axes for data viz         
            plot(app.UIAxes4, DR{1}(k:k+7,idxmu1) , DR{2}(k:k+7,idxmu2), DR{1}(k,idxmu1) , DR{2}(k,idxmu2),'o', 'LineWidth', 4, 'MarkerSize', 20, 'Color', [0.56 0.62 0.85])
            plot(app.UIAxes5, 1, forcefb(k)/app.RecordParameters.MVC * 100,'o', 'LineWidth', 4, 'MarkerSize', 20, 'Color', [0.9412 0.9412 0.9412])
            line(app.UIAxes5,[0 2], [feedback(k)*0.95 feedback(k)*0.95],'LineWidth', 4, 'Color', [0.9412 0.9412 0.9412])
            line(app.UIAxes5,[0 2], [feedback(k)*1.05 feedback(k)*1.05],'LineWidth', 4, 'Color', [0.9412 0.9412 0.9412])
            app.UIAxes4.XLim = [0 app.DecompParameters.DR{idxmuscle1}(idxmu1)*1.2];
            app.UIAxes4.YLim = [0 app.DecompParameters.DR{idxmuscle2}(idxmu2)*1.2];
            app.UIAxes5.XLim = [0 2];
            app.UIAxes5.YLim = [0 max(app.OnlineParameters.targetonline)*1.25];
            app.UIAxes4.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes4.YColor = [0.9412 0.9412 0.9412];
            app.UIAxes5.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes5.YColor = [0.9412 0.9412 0.9412];
            xlabel(app.UIAxes4,'Discharge rate MU1');
            ylabel(app.UIAxes4,'Discharge rate MU2');

            % Get the data
            app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) + 1; % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);
            fopen(app.ComParameters.tcpSocket);
            set(app.ComParameters.tcpSocket, 'ByteOrder', 'little-endian');
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8'); % Send the configuration to quattrocento
            app.DisconnectQuattrocentoButton.Enable = 'on';
            while k <= nwin
                data = fread(app.ComParameters.tcpSocket, [app.ComParameters.nchannel, app.ComParameters.nsamp], 'int16');
                Force(:,(k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp) = (data(app.ComParameters.gridchannels(end)+1,:) - app.RecordParameters.offsetforce);
                forcefb(k) = mean(abs(Force((k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp)));
                feedback(k) = mean(app.OnlineParameters.targetonline((k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp));
                
                EMG{1}(:,(k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp) = data(app.ComParameters.gridchannels((idxmuscle1-1)*64+1:idxmuscle1*64), :);
                EMGtmp{1} = EMG{1}(app.DecompParameters.EMGmask{idxmuscle1}==0, (k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp);
                [signal.Pulsetrain{1}(:,(k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp), Distime{1}((k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp, :), esample2{1}] = getspikesonline(EMGtmp{1}, app.DecompParameters.extensionfactor(idxmuscle1), esample2{1}, MUfilt{1}, app.DecompParameters.norm{idxmuscle1}, noise_centroids{1}, spike_centroids{1}, app.ComParameters.nsamp, str2double(app.FrequencyDropDown.Value));
                
                EMG{2}(:,(k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp) = data(app.ComParameters.gridchannels((idxmuscle1-1)*64+1:idxmuscle1*64), :);
                EMGtmp{2} = EMG{2}(app.DecompParameters.EMGmask{idxmuscle2}==0, (k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp);
                [signal.Pulsetrain{2}(:,(k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp), Distime{2}((k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp, :), esample2{2}] = getspikesonline(EMGtmp{2}, app.DecompParameters.extensionfactor(idxmuscle2), esample2{2}, MUfilt{2}, app.DecompParameters.norm{idxmuscle2}, noise_centroids{2}, spike_centroids{2}, app.ComParameters.nsamp, str2double(app.FrequencyDropDown.Value));

                if k < 8
                    DR{1}(k,:) = sum(Distime{1}((k-1)*app.ComParameters.nsamp+1:8*app.ComParameters.nsamp, :) > 0, 1);
                    DR{2}(k,:) = sum(Distime{2}((k-1)*app.ComParameters.nsamp+1:8*app.ComParameters.nsamp, :) > 0, 1);    
                    plot(app.UIAxes4, DR{1}(k:k+7,idxmu1) , DR{2}(k:k+7,idxmu2), DR{1}(k,idxmu1) , DR{2}(k,idxmu2),'o', 'LineWidth', 4, 'MarkerSize', 20, 'Color', [0.56 0.62 0.85])
                    plot(app.UIAxes5, 1, forcefb(k)/app.RecordParameters.MVC * 100,'o', 'LineWidth', 4, 'MarkerSize', 20, 'Color', [0.9412 0.9412 0.9412])
                    line(app.UIAxes5,[0 2], [feedback(k)*0.95 feedback(k)*0.95],'LineWidth', 4, 'Color', [0.9412 0.9412 0.9412])
                    line(app.UIAxes5,[0 2], [feedback(k)*1.05 feedback(k)*1.05],'LineWidth', 4, 'Color', [0.9412 0.9412 0.9412])
                else
                    DR{1}(k,:) = sum(Distime{1}((k-7)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp, :) > 0, 1);
                    DR{2}(k,:) = sum(Distime{2}((k-7)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp, :) > 0, 1);
                    DR{1}(k,:) = mean(DR{1}(k-(app.SmoothingEditField.Value-1):k,:), 1);
                    DR{2}(k,:) = mean(DR{2}(k-(app.SmoothingEditField.Value-1):k,:), 1);
                    plot(app.UIAxes4, DR{1}(k-7:k,idxmu1) , DR{2}(k-7:k,idxmu2), DR{1}(k,idxmu1) , DR{2}(k,idxmu2),'o', 'LineWidth', 4, 'MarkerSize', 20, 'Color', [0.56 0.62 0.85])
                    plot(app.UIAxes5, 1, forcefb(k)/app.RecordParameters.MVC * 100,'o', 'LineWidth', 4, 'MarkerSize', 20, 'Color', [0.9412 0.9412 0.9412])
                    line(app.UIAxes5,[0 2], [feedback(k)*0.95 feedback(k)*0.95],'LineWidth', 4, 'Color', [0.9412 0.9412 0.9412])
                    line(app.UIAxes5,[0 2], [feedback(k)*1.05 feedback(k)*1.05],'LineWidth', 4, 'Color', [0.9412 0.9412 0.9412])
                end
                app.UIAxes4.XLim = [0 sum(app.DecompParameters.DR{idxmuscle1}(idxmu1))*1.2];
                app.UIAxes4.YLim = [0 sum(app.DecompParameters.DR{idxmuscle2}(idxmu2))*1.2];
                app.UIAxes5.YLim = [0 max(app.OnlineParameters.targetonline)*1.25];
                drawnow
                k = k+1;
            end
            app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) - 1; % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);            
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8');
            fclose(app.ComParameters.tcpSocket); % Close the communication
            flush(app.ComParameters.tcpSocket)

            % Save the data
            signal.data = [];
            signal.target = app.OnlineParameters.targetonline;
            signal.path = Force;
            signal.fsamp = str2double(app.FrequencyDropDown.Value);
            signal.muscle = app.RecordParameters.Muscles;
            signal.nChan = size(EMG,1);
            signal.ngrid = app.RecordParameters.ngrid; 
            signal.EMGmask{1} = app.DecompParameters.EMGmask{idxmuscle1};
            signal.gridname{1} = 'GR08MM1305';
            signal.feedback{1} = 'Quadrant_MU';
            for i = 1:2
                for k = 1:size(Distime{i},2)
                    signal.Dischargetimes{i,k} = find(Distime{i}(:,k) > 0);
                end
                signal.data = [signal.data; EMG{i}];
            end
            save([app.EditField_saving.Value 'Online ' replace(datestr(datetime('now')),':','_') '.mat'], 'signal');

            % Update the results of the last decomposition
            app.OnlineParameters.Timeplot = linspace(0,size(signal.Pulsetrain{1},2)/str2double(app.FrequencyDropDown.Value),size(signal.Pulsetrain{1},2));
            app.OnlineParameters.Pulsetrain = [];
            app.OnlineParameters.Dischargetimes = {};
            nMU = 1;
            for i = 1:length(Distime)
                app.OnlineParameters.Pulsetrain = [app.OnlineParameters.Pulsetrain; signal.Pulsetrain{i}];
                for j = 1:size(Distime{i},2)
                    app.OnlineParameters.Dischargetimes{nMU} =  signal.Dischargetimes{i,j};
                    nMU = nMU + 1;
                end
            end
            clearvars Distime

            % Updates the parameters of the decomposition
            EMG = EMG(:,str2double(app.FrequencyDropDown.Value):end);
            [~, Distime, ~] = getPulseT(EMG((idxmuscle1-1)*64+1:idxmuscle1*64,:), app.RecordParameters.DiscardChannels{idxmuscle1}, app.DecompParameters.MUFilters{idxmuscle1}, str2double(app.FrequencyDropDown.Value));
            app.DecompParameters.MUFilters{idxmuscle1} = getMUfilters(EMG((idxmuscle1-1)*64+1:idxmuscle1*64,:), app.RecordParameters.DiscardChannels{idxmuscle1}, Distime);
            [app.DecompParameters.extensionfactor(idxmuscle1), app.DecompParameters.iReSIG{idxmuscle1}, app.DecompParameters.norm{idxmuscle1}, app.DecompParameters.centroid{idxmuscle1}] = getonlineparameters(EMG((idxmuscle1-1)*64+1:idxmuscle1*64,:), app.RecordParameters.DiscardChannels{idxmuscle1}, app.DecompParameters.MUFilters{idxmuscle1}, str2double(app.FrequencyDropDown.Value));
            [~, Distime, ~] = getPulseT(EMG((idxmuscle2-1)*64+1:idxmuscle2*64,:), app.RecordParameters.DiscardChannels{idxmuscle2}, app.DecompParameters.MUFilters{idxmuscle2}, str2double(app.FrequencyDropDown.Value));
            app.DecompParameters.MUFilters{idxmuscle2} = getMUfilters(EMG((idxmuscle2-1)*64+1:idxmuscle2*64,:), app.RecordParameters.DiscardChannels{idxmuscle2}, Distime);
            [app.DecompParameters.extensionfactor(idxmuscle2), app.DecompParameters.iReSIG{idxmuscle2}, app.DecompParameters.norm{idxmuscle2}, app.DecompParameters.centroid{idxmuscle2}] = getonlineparameters(EMG((idxmuscle2-1)*64+1:idxmuscle2*64,:), app.RecordParameters.DiscardChannels{idxmuscle2}, app.DecompParameters.MUFilters{idxmuscle2}, str2double(app.FrequencyDropDown.Value));

            % Update the UI for the next acquisition
            app.InitializeQuattrocentoButton_2.Enable = 'on';
            app.DisconnectQuattrocentoButton_2.Enable = 'off';
            app.StartQuadrantwithCSTsButton.Enable = 'off';
            app.StartQuadrantwithMUsButton.Enable = 'off';
            app.StartRasterPlotwithMUsButton.Enable = 'off';
            app.StartDRofalltheMUsButton.Enable = 'off';
            app.DisplaythePulsetrainsButton.Enable = 'on';
        end

        % Button pushed function: StartDRofalltheMUsButton
        function StartDRofalltheMUsButtonPushed(app, event)
            C1 = strsplit(app.XaxisdisplayedDropDown.Value,'_');
            idxmuscle1 = str2double(C1{2});

            nwin = floor(app.OnlineParameters.durationonline/app.ComParameters.nsamp);
            k = 1;

            % Pre allocate empty matrices
            EMG = zeros(app.RecordParameters.ngrid*64,app.OnlineParameters.durationonline);
            Force = NaN(1,app.OnlineParameters.durationonline);
            Time = linspace(0,size(EMG,2)/str2double(app.FrequencyDropDown.Value), nwin);
            EMGtmp{1} = zeros(64,app.ComParameters.nsamp);
            esample2{1} = zeros((64-sum(app.DecompParameters.EMGmask{idxmuscle1}))*app.DecompParameters.extensionfactor(idxmuscle1),app.DecompParameters.extensionfactor(idxmuscle1)-1);
            Distime{1} = zeros(nwin*app.ComParameters.nsamp, size(app.DecompParameters.MUFilters{idxmuscle1},2));
            signal.Pulsetrain{1} = zeros(size(app.DecompParameters.MUFilters{idxmuscle1},2), app.ComParameters.nsamp*nwin);
            noise_centroids{1} = ones(app.ComParameters.nsamp,size(app.DecompParameters.MUFilters{idxmuscle1},2)) .* (app.DecompParameters.centroid{idxmuscle1}(:,1)');
            spike_centroids{1} = ones(app.ComParameters.nsamp,size(app.DecompParameters.MUFilters{idxmuscle1},2)) .* (app.DecompParameters.centroid{idxmuscle1}(:,2)');
            MUfilt{1} = app.DecompParameters.MUFilters{idxmuscle1}' * app.DecompParameters.iReSIG{idxmuscle1};
            DR = NaN(nwin, size(app.DecompParameters.MUFilters{idxmuscle1},2));
            forcefb = zeros(1,nwin);
            feedback = zeros(1,nwin);

            % Set the properties of the axes for data viz         
            plot(app.UIAxes4, Time(1:80), DR(1:80,:), Time(k), DR(k,:), 'o', 'LineWidth', 4, 'MarkerSize', 20, 'Color', [0.56 0.62 0.85])
            plot(app.UIAxes5, 1, forcefb(k),'o', 'LineWidth', 4, 'MarkerSize', 20, 'Color', [0.9412 0.9412 0.9412])
            line(app.UIAxes5,[0 2], [feedback(k)*0.95 feedback(k)*0.95],'LineWidth', 4, 'Color', [0.9412 0.9412 0.9412])
            line(app.UIAxes5,[0 2], [feedback(k)*1.05 feedback(k)*1.05],'LineWidth', 4, 'Color', [0.9412 0.9412 0.9412])
            app.UIAxes4.XLim = [Time(1) Time(80)];
            app.UIAxes4.YLim = [0 max(app.DecompParameters.DR{idxmuscle1})*1.2];
            app.UIAxes5.XLim = [0 2];
            app.UIAxes5.YLim = [0 max(app.OnlineParameters.targetonline)*1.25];
            app.UIAxes4.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes4.YColor = [0.9412 0.9412 0.9412];
            app.UIAxes5.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes5.YColor = [0.9412 0.9412 0.9412];
            xlabel(app.UIAxes4,'Time');
            ylabel(app.UIAxes4,'Discharge rate');

            % Get the data
            app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) + 1; % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);
            fopen(app.ComParameters.tcpSocket);
            set(app.ComParameters.tcpSocket, 'ByteOrder', 'little-endian');
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8'); % Send the configuration to quattrocento
            app.DisconnectQuattrocentoButton.Enable = 'on';
            while k <= nwin - 40
                data = fread(app.ComParameters.tcpSocket, [app.ComParameters.nchannel, app.ComParameters.nsamp], 'int16');
                EMG(:,(k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp) = data(app.ComParameters.gridchannels((idxmuscle1-1)*64+1:idxmuscle1*64), :);
                Force(:,(k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp) = (data(app.ComParameters.gridchannels(end)+1,:) - app.RecordParameters.offsetforce);
                forcefb(k) = mean(abs(Force((k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp)));
                feedback(k) = mean(app.OnlineParameters.targetonline((k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp));
                
                EMGtmp{1} = EMG(app.DecompParameters.EMGmask{idxmuscle1}==0, (k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp);
            
                [signal.Pulsetrain{1}(:,(k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp), Distime{1}((k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp, :), esample2{1}] = getspikesonline(EMGtmp{1}, app.DecompParameters.extensionfactor(idxmuscle1), esample2{1}, MUfilt{1}, app.DecompParameters.norm{idxmuscle1}, noise_centroids{1}, spike_centroids{1}, app.ComParameters.nsamp, str2double(app.FrequencyDropDown.Value));
                
                if k < 40
                    DR(k,:) = sum(Distime{1}((k-1)*app.ComParameters.nsamp+1:8*app.ComParameters.nsamp, :) > 0, 1);
                    plot(app.UIAxes4, Time(1:80), DR(1:80,:), Time(k), DR(k,:),'o', 'LineWidth', 4, 'MarkerSize', 20, 'Color', [0.56 0.62 0.85])
                    app.UIAxes4.XLim = [Time(1) Time(80)];
                    plot(app.UIAxes5, 1, forcefb(k)/app.RecordParameters.MVC * 100,'o', 'LineWidth', 4, 'MarkerSize', 20, 'Color', [0.9412 0.9412 0.9412])
                    line(app.UIAxes5,[0 2], [feedback(k)*0.95 feedback(k)*0.95],'LineWidth', 4, 'Color', [0.9412 0.9412 0.9412])
                    line(app.UIAxes5,[0 2], [feedback(k)*1.05 feedback(k)*1.05],'LineWidth', 4, 'Color', [0.9412 0.9412 0.9412])
                else
                    DR(k,:) = sum(Distime{1}((k-7)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp, :) > 0, 1);
                    DR(k,:) = mean(DR(k-(app.SmoothingEditField.Value-1):k,:), 1);
                    plot(app.UIAxes4, Time(k-39:k+40), DR(k-39:k+40,:), Time(k), DR(k,:),'o', 'LineWidth', 4, 'MarkerSize', 20, 'Color', [0.56 0.62 0.85])
                    app.UIAxes4.XLim = [Time(k-39) Time(k+40)];
                    plot(app.UIAxes5, 1, forcefb(k)/app.RecordParameters.MVC * 100,'o', 'LineWidth', 4, 'MarkerSize', 20, 'Color', [0.9412 0.9412 0.9412])
                    line(app.UIAxes5,[0 2], [feedback(k)*0.95 feedback(k)*0.95],'LineWidth', 4, 'Color', [0.9412 0.9412 0.9412])
                    line(app.UIAxes5,[0 2], [feedback(k)*1.05 feedback(k)*1.05],'LineWidth', 4, 'Color', [0.9412 0.9412 0.9412])
                end
                app.UIAxes5.YLim = [0 max(app.OnlineParameters.targetonline)*1.25];
                app.UIAxes4.YLim = [0 max(app.DecompParameters.DR{idxmuscle1})*1.2];

                drawnow limitrate
                k = k+1;
            end
            app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) - 1; % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);            
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8');
            fclose(app.ComParameters.tcpSocket); % Close the communication
            flush(app.ComParameters.tcpSocket)

            % Save the data
            signal.data = EMG;
            signal.target = app.OnlineParameters.targetonline;
            signal.path = Force;
            signal.fsamp = str2double(app.FrequencyDropDown.Value);
            signal.muscle = app.RecordParameters.Muscles{idxmuscle1};
            signal.nChan = size(EMG,1);
            signal.ngrid = app.RecordParameters.ngrid; 
            signal.EMGmask{1} = app.DecompParameters.EMGmask{idxmuscle1};
            signal.gridname{1} = 'GR08MM1305';
            signal.feedback{1} = 'Smooth_DR';
            for k = 1:size(Distime{1},2)
                signal.Dischargetimes{k} = find(Distime{1}(:,k) > 0);
            end
            save([app.EditField_saving.Value 'Online ' replace(datestr(datetime('now')),':','_') '.mat'], 'signal');

            % Update the results of the last decomposition
            app.OnlineParameters.Timeplot = linspace(0,size(signal.Pulsetrain{1},2)/str2double(app.FrequencyDropDown.Value),size(signal.Pulsetrain{1},2));
            app.OnlineParameters.Pulsetrain = [];
            app.OnlineParameters.Dischargetimes = {};
            nMU = 1;
            for i = 1:length(Distime)
                app.OnlineParameters.Pulsetrain = [app.OnlineParameters.Pulsetrain; signal.Pulsetrain{i}];
                for j = 1:size(Distime{i},2)
                    app.OnlineParameters.Dischargetimes{nMU} =  signal.Dischargetimes{i,j};
                    nMU = nMU + 1;
                end
            end
            clearvars Distime

            % Updates the parameters of the decomposition
            EMG = EMG(:,str2double(app.FrequencyDropDown.Value):end);
            [~, Distime, ~] = getPulseT(EMG, app.RecordParameters.DiscardChannels{idxmuscle1}, app.DecompParameters.MUFilters{idxmuscle1}, str2double(app.FrequencyDropDown.Value));
            app.DecompParameters.MUFilters{idxmuscle1} = getMUfilters(EMG, app.RecordParameters.DiscardChannels{idxmuscle1}, Distime);
            [app.DecompParameters.extensionfactor(idxmuscle1), app.DecompParameters.iReSIG{idxmuscle1}, app.DecompParameters.norm{idxmuscle1}, app.DecompParameters.centroid{idxmuscle1}] = getonlineparameters(EMG, app.RecordParameters.DiscardChannels{idxmuscle1}, app.DecompParameters.MUFilters{idxmuscle1}, str2double(app.FrequencyDropDown.Value));

            % Update the UI for the next acquisition
            app.InitializeQuattrocentoButton_2.Enable = 'on';
            app.DisconnectQuattrocentoButton_2.Enable = 'off';
            app.StartQuadrantwithCSTsButton.Enable = 'off';
            app.StartQuadrantwithMUsButton.Enable = 'off';
            app.StartRasterPlotwithMUsButton.Enable = 'off';
            app.StartDRofalltheMUsButton.Enable = 'off';
            app.DisplaythePulsetrainsButton.Enable = 'on';
        end

        % Button pushed function: DisplaythePulsetrainsButton
        function DisplaythePulsetrainsButtonPushed(app, event)
            for i = 1:size(app.OnlineParameters.Pulsetrain,1)
                plot(app.UIAxes4, app.OnlineParameters.Timeplot, app.OnlineParameters.Pulsetrain(i,:)+i, app.OnlineParameters.Timeplot(app.OnlineParameters.Dischargetimes{i}), app.OnlineParameters.Pulsetrain(i,app.OnlineParameters.Dischargetimes{i})+i,'o','LineWidth', 1, 'MarkerSize', 10, 'Color', [0.38 0.78 0.75], 'MarkerEdgeColor', [0.96 0.96 0.96]);
                hold(app.UIAxes4, 'on')
            end
            hold(app.UIAxes4, 'off')
            xlabel(app.UIAxes4,'Time');
            ylabel(app.UIAxes4,'MU');
            app.UIAxes4.XLim = [app.OnlineParameters.Timeplot(1) app.OnlineParameters.Timeplot(end)];
            app.UIAxes4.YLim = [0 i+2];
        end

        % Button pushed function: InitializeQuattrocentoButton_2
        function InitializeQuattrocentoButton_2Pushed(app, event)
            app.ComParameters.fsamp = str2double(app.FrequencyDropDown.Value);
            app.ComParameters.nsamp = floor(app.ComParameters.fsamp/str2double(app.RefreshrateDropDown.Value));
            app.ComParameters.highpass = str2double(app.HPfilterDropDown.Value);
            app.ComParameters.lowpass = str2double(app.LPfilterDropDown.Value);
            app.ComParameters.ConfString = bitseqquattro(app.ComParameters.fsamp, app.ComParameters.nchannel, app.ComParameters.highpass, app.ComParameters.lowpass);
            
            app.ComParameters.tcpSocket = tcpclient('169.254.1.10', 23456);
            app.ComParameters.tcpSocket.InputBufferSize = 2 * app.ComParameters.nchannel * app.ComParameters.fsamp;
            app.XaxisdisplayedDropDown.Enable = 'on';
            app.YaxisdisplayedDropDown.Enable = 'on';
            app.InitializeQuattrocentoButton_2.Enable = 'off';
            app.DisconnectQuattrocentoButton_2.Enable = 'on';
            app.StartQuadrantwithCSTsButton.Enable = 'on';
            app.StartQuadrantwithMUsButton.Enable = 'on';
            app.StartRasterPlotwithMUsButton.Enable = 'on';
            app.StartDRofalltheMUsButton.Enable = 'on';
        end

        % Button pushed function: DisconnectQuattrocentoButton_2
        function DisconnectQuattrocentoButton_2Pushed(app, event)
            app.ComParameters.ConfString(1) = bin2dec('10000000'); % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);            
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8');
            fclose(app.ComParameters.tcpSocket); % Close the communication
            flush(app.ComParameters.tcpSocket)
            app.InitializeQuattrocentoButton_2.Enable = 'on';
            app.DisconnectQuattrocentoButton_2.Enable = 'off';
            app.StartQuadrantwithCSTsButton.Enable = 'off';
            app.StartQuadrantwithMUsButton.Enable = 'off';
            app.StartRasterPlotwithMUsButton.Enable = 'off';
            app.StartDRofalltheMUsButton.Enable = 'off';
        end

        % Button pushed function: SelectfileButton
        function SelectfileButtonPushed(app, event)
            app.UIFigure.Visible = 'off'; 
            [app.filename2,app.pathname2] = uigetfile;
            app.UIFigure.Visible = 'on'; 
            app.EditField_saving_2.Value = app.filename2;
        end

        % Button pushed function: ImportdataButton
        function ImportdataButtonPushed(app, event)
            app.MUdisplayedDropDown.Items = {};

            % Load the file
            if contains(app.filename2,'edited')
                files = load([app.pathname2 app.filename2], 'parameters', 'signal', 'edition'); 
                for i = 1:files.signal.ngrid
                    % Update the list and load the edited files
                    for j = 1:size(files.edition.Pulsetrain{i},1)
                        app.MUdisplayedDropDown.Items = horzcat(app.MUdisplayedDropDown.Items, {['Grid_', num2str(i), '_MU_' , num2str(j)]});
                        files.edition.silval{i,j} = getsil(files.signal.Pulsetrain{i}(j,:), files.signal.fsamp);
                    end
                end
                app.MUdisplayedDropDown.Enable = 'on';
            else
                files = load([app.pathname2 app.filename2], 'parameters', 'signal');   
                for i = 1:files.signal.ngrid
                    % Update the list and load the edited files
                    files.edition.Pulsetrain{i} = files.signal.Pulsetrain{i};
                    for j = 1:size(files.signal.Pulsetrain{i},1)
                        files.edition.Dischargetimes{i,j} = files.signal.Dischargetimes{i,j};
                        app.MUdisplayedDropDown.Items = horzcat(app.MUdisplayedDropDown.Items, {['Grid_', num2str(i), '_MU_' , num2str(j)]});
                        files.edition.silval{i,j} = getsil(files.signal.Pulsetrain{i}(j,:), files.signal.fsamp);
                    end
                end
                app.MUdisplayedDropDown.Enable = 'on';
                files.edition.time = linspace(0,size(files.signal.Pulsetrain{i},2)/files.signal.fsamp, size(files.signal.Pulsetrain{i},2));
            end
            
            files.parameters.nbelectrodes = 64;

            % Display the first MU
            C = strsplit(app.MUdisplayedDropDown.Value,'_');
            plot(app.UIAxesSpiketrain, files.edition.time, files.edition.Pulsetrain{str2double(C{2})}(str2double(C{4}),:), 'Color', [0.9412 0.9412 0.9412], 'LineWidth', 1);
            hold(app.UIAxesSpiketrain, 'on')
            plot(app.UIAxesSpiketrain, files.edition.time, files.signal.target/max(files.signal.target), '--', 'Color', [0.9412 0.9412 0.9412], 'LineWidth', 1);
            plot(app.UIAxesSpiketrain, files.edition.time(files.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}), files.edition.Pulsetrain{str2double(C{2})}(1,files.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}), 'o', 'LineWidth', 1, 'MarkerSize', 10, 'Color', [0.85 0.33 0.10]);
            hold(app.UIAxesSpiketrain, 'off')
            app.UIAxesSpiketrain.XColor = [0.9412 0.9412 0.9412];
            app.UIAxesSpiketrain.YColor = [0.9412 0.9412 0.9412];

            distime = zeros(1,length(files.edition.Dischargetimes{str2double(C{2}),str2double(C{4})})-1);
            for i = 1:length(files.edition.Dischargetimes{str2double(C{2}),str2double(C{4})})-1
                distime(i) = (round((files.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i+1) - files.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i)) / 2) + files.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i)) / files.signal.fsamp;
            end
            DR = 1./((diff(files.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}))/files.signal.fsamp);

            plot(app.UIAxesDR, distime, DR, 'o', 'LineWidth', 1.5, 'MarkerSize', 10, 'Color', [0.9412 0.9412 0.9412]);

            app.EditField_5.Value = ['SIL = ' num2str(files.edition.silval{1,1})];

            app.UIAxesSpiketrain.XLim = [files.edition.time(1) files.edition.time(end)];
            app.UIAxesDR.XLim = [files.edition.time(1) files.edition.time(end)];
            app.UIAxesDR.YLim = [0 max(DR)*1.5];

            app.UIAxesSpiketrain.YLim = [-0.05 1.5];
            app.UIAxesDR.XColor = [0.9412 0.9412 0.9412];
            app.UIAxesDR.YColor = [0.9412 0.9412 0.9412];
            app.graphstart = files.edition.time(1);
            app.graphend = files.edition.time(end);

            app.MUedition = files;
            app.ImportdataButton.BackgroundColor = [0.5 0.5 0.5];
        end

        % Value changed function: MUdisplayedDropDown
        function MUdisplayedDropDownValueChanged(app, event)
            C = strsplit(app.MUdisplayedDropDown.Value,'_');
            plot(app.UIAxesSpiketrain, app.MUedition.edition.time, app.MUedition.edition.Pulsetrain{str2double(C{2})}(str2double(C{4}),:), 'Color', [0.9412 0.9412 0.9412], 'LineWidth', 1);
            hold(app.UIAxesSpiketrain, 'on')
            plot(app.UIAxesSpiketrain, app.MUedition.edition.time, app.MUedition.signal.target/max(app.MUedition.signal.target), '--', 'LineWidth', 1, 'Color', [0.9412 0.9412 0.9412]);

            plot(app.UIAxesSpiketrain, app.MUedition.edition.time(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}), app.MUedition.edition.Pulsetrain{str2double(C{2})}(str2double(C{4}),app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}), 'o', 'LineWidth', 1, 'MarkerSize', 10, 'Color', [0.85 0.33 0.10]);
            hold(app.UIAxesSpiketrain, 'off')

            distime = zeros(1,length(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})})-1);
            for i = 1:length(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})})-1
                distime(i) = (round((app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i+1) - app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i)) / 2) + app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i)) / app.MUedition.signal.fsamp;
            end
            DR = 1./((diff(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}))/app.MUedition.signal.fsamp);

            plot(app.UIAxesDR, distime, DR, 'o', 'LineWidth', 1.5, 'MarkerSize', 10, 'Color', [0.9412 0.9412 0.9412]);

            app.EditField_5.Value = ['SIL = ' num2str(app.MUedition.edition.silval{str2double(C{2}),str2double(C{4})})];

            app.UIAxesSpiketrain.XLim = [app.graphstart app.graphend];
            app.UIAxesDR.XLim = [app.graphstart app.graphend];
            app.UIAxesSpiketrain.YLim = [-0.05 1.5];
            app.UIAxesDR.YLim = [0 max(DR)*1.5];            
        end

        % Button pushed function: ZoominButton
        function ZoominButtonPushed(app, event)
            duration = app.graphend - app.graphstart;
            center = app.graphstart + duration/2;
            duration = duration * 0.8;
            app.graphstart = center - duration/2;
            app.graphend = center + duration/2;
            app.UIAxesSpiketrain.XLim = [app.graphstart app.graphend];
            app.UIAxesDR.XLim = [app.graphstart app.graphend];
            app.UIAxesSpiketrain.YLim = [-0.05 1.5];
        end

        % Button pushed function: ZoomoutButton
        function ZoomoutButtonPushed(app, event)
            duration = app.graphend - app.graphstart;
            center = app.graphstart + duration/2;
            duration = duration * 1.5;
            if duration > (app.MUedition.edition.time(end) - app.MUedition.edition.time(1))
                app.graphstart = app.MUedition.edition.time(1);
                app.graphend = app.MUedition.edition.time(end);
                app.UIAxesSpiketrain.XLim = [app.graphstart app.graphend];
                app.UIAxesDR.XLim = [app.graphstart app.graphend];
                app.UIAxesSpiketrain.YLim = [-0.05 1.5];
            else
                app.graphstart = center - duration/2;
                app.graphend = center + duration/2;
                app.UIAxesSpiketrain.XLim = [app.graphstart app.graphend];
                app.UIAxesDR.XLim = [app.graphstart app.graphend];
                app.UIAxesSpiketrain.YLim = [-0.05 1.5];
            end
        end

        % Button pushed function: ScrollrightButton
        function ScrollrightButtonPushed(app, event)
            duration = app.graphend - app.graphstart;
            step = 0.05 * duration;
            if (app.graphend + step) > app.MUedition.edition.time(end)
                app.graphend = app.MUedition.edition.time(end);
                app.graphstart = app.graphend - duration;
                app.UIAxesSpiketrain.XLim = [app.graphstart app.graphend];
                app.UIAxesDR.XLim = [app.graphstart app.graphend];
                app.UIAxesSpiketrain.YLim = [-0.05 1.5];
            else
                app.graphend = app.graphend + step;
                app.graphstart = app.graphend - duration;
                app.UIAxesSpiketrain.XLim = [app.graphstart app.graphend];
                app.UIAxesDR.XLim = [app.graphstart app.graphend];
                app.UIAxesSpiketrain.YLim = [-0.05 1.5];
            end
        end

        % Button pushed function: ScrollleftButton
        function ScrollleftButtonPushed(app, event)
            duration = app.graphend - app.graphstart;
            step = 0.05 * duration;
            if (app.graphstart - step) < 0
                app.graphstart = 0;
                app.graphend = app.graphstart + duration;
                app.UIAxesSpiketrain.XLim = [app.graphstart app.graphend];
                app.UIAxesDR.XLim = [app.graphstart app.graphend];
                app.UIAxesSpiketrain.YLim = [-0.05 1.5];
            else
                app.graphstart = app.graphstart - step;
                app.graphend = app.graphstart + duration;
                app.UIAxesSpiketrain.XLim = [app.graphstart app.graphend];
                app.UIAxesDR.XLim = [app.graphstart app.graphend];
                app.UIAxesSpiketrain.YLim = [-0.05 1.5];
            end
        end

        % Button pushed function: AddspikesButton
        function AddspikesButtonPushed(app, event)
            C = strsplit(app.MUdisplayedDropDown.Value,'_');
            app.roi = drawrectangle(app.UIAxesSpiketrain);
            y = [app.roi.Position(2) app.roi.Position(2) + app.roi.Position(4)];
            x = [app.roi.Position(1) app.roi.Position(1) + app.roi.Position(3)];

            temp = app.MUedition.edition.Pulsetrain{str2double(C{2})}(str2double(C{4}),:);
            temp(x(1)> app.MUedition.edition.time | app.MUedition.edition.time>x(2)) = 0;
            [~, locs] = findpeaks(temp,'MinPeakHeight', y(1), 'MinPeakDistance', round(0.005*app.MUedition.signal.fsamp));
            delete(app.roi)

            if ~isempty(locs)
                app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})} = [app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})} locs];
                app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})} = unique(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})});
                app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})} = sort(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})});
                
                % Update graph
                plot(app.UIAxesSpiketrain, app.MUedition.edition.time, app.MUedition.edition.Pulsetrain{str2double(C{2})}(str2double(C{4}),:), 'Color', [0.9412 0.9412 0.9412], 'LineWidth', 1);
                hold(app.UIAxesSpiketrain, 'on')
                plot(app.UIAxesSpiketrain, app.MUedition.edition.time, app.MUedition.signal.target/max(app.MUedition.signal.target), '--', 'LineWidth', 1, 'Color', [0.9412 0.9412 0.9412]);
                plot(app.UIAxesSpiketrain, app.MUedition.edition.time(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}), app.MUedition.edition.Pulsetrain{str2double(C{2})}(str2double(C{4}),app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}), 'o', 'LineWidth', 1, 'MarkerSize', 10, 'Color', [0.85 0.33 0.10]);
                hold(app.UIAxesSpiketrain, 'off')
    
                distime1 = zeros(1,length(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})})-1);
                for i = 1:length(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})})-1
                    distime1(i) = (round((app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i+1) - app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i)) / 2) + app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i)) / app.MUedition.signal.fsamp;
                end
                DR1 = 1./((diff(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}))/app.MUedition.signal.fsamp);
    
                plot(app.UIAxesDR, distime1, DR1, 'o', 'LineWidth', 1.5, 'MarkerSize', 10, 'Color', [0.9412 0.9412 0.9412]);
    
                app.UIAxesSpiketrain.XLim = [app.graphstart app.graphend];
                app.UIAxesSpiketrain.YLim = [-0.05 1.5];
                app.UIAxesDR.XLim = [app.graphstart app.graphend];
                app.UIAxesDR.YLim = [0 max(DR1)*1.5];
            end

        end

        % Button pushed function: DeletespikesButton
        function DeletespikesButtonPushed(app, event)
            C = strsplit(app.MUdisplayedDropDown.Value,'_');
            app.roi = drawrectangle(app.UIAxesSpiketrain);
            y = [app.roi.Position(2) app.roi.Position(2) + app.roi.Position(4)];
            x = [app.roi.Position(1) app.roi.Position(1) + app.roi.Position(3)];

            idx = find(x(1)< app.MUedition.edition.time & app.MUedition.edition.time<x(2));
            idx2 = find(app.MUedition.edition.Pulsetrain{str2double(C{2})}(str2double(C{4}),:) > y(1) & app.MUedition.edition.Pulsetrain{str2double(C{2})}(str2double(C{4}),:) < y(2));
            idx3 = intersect(idx,idx2);
            delete(app.roi)

            if ~isempty(idx3)
                idxdel = intersect(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})},idx3);
                for j = 1:length(idxdel)
                    app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})} == idxdel(j)) = [];
                end
                % Update graph
                plot(app.UIAxesSpiketrain, app.MUedition.edition.time, app.MUedition.edition.Pulsetrain{str2double(C{2})}(str2double(C{4}),:), 'Color', [0.9412 0.9412 0.9412], 'LineWidth', 1);
                hold(app.UIAxesSpiketrain, 'on')
                plot(app.UIAxesSpiketrain, app.MUedition.edition.time, app.MUedition.signal.target/max(app.MUedition.signal.target), '--', 'LineWidth', 1, 'Color', [0.9412 0.9412 0.9412]);
                plot(app.UIAxesSpiketrain, app.MUedition.edition.time(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}), app.MUedition.edition.Pulsetrain{str2double(C{2})}(str2double(C{4}),app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}), 'o', 'LineWidth', 1, 'MarkerSize', 10, 'Color', [0.85 0.33 0.10]);
                hold(app.UIAxesSpiketrain, 'off')
    
                distime1 = zeros(1,length(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})})-1);
                for i = 1:length(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})})-1
                    distime1(i) = (round((app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i+1) - app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i)) / 2) + app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i)) / app.MUedition.signal.fsamp;
                end
                DR1 = 1./((diff(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}))/app.MUedition.signal.fsamp);
    
                plot(app.UIAxesDR, distime1, DR1, 'o', 'LineWidth', 1.5, 'MarkerSize', 10, 'Color', [0.9412 0.9412 0.9412]);
    
                app.UIAxesSpiketrain.XLim = [app.graphstart app.graphend];
                app.UIAxesSpiketrain.YLim = [-0.05 1.5];
                app.UIAxesDR.XLim = [app.graphstart app.graphend];
                app.UIAxesDR.YLim = [0 max(DR1)*1.5];
            end
        end

        % Button pushed function: DeleteDRButton
        function DeleteDRButtonPushed(app, event)
            C = strsplit(app.MUdisplayedDropDown.Value,'_');
            distime = zeros(1,length(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})})-1);
            for i = 1:length(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})})-1
                distime(i) = (round((app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i+1) - app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i)) / 2) + app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i)) / app.MUedition.signal.fsamp;
            end
            DR = 1./((diff(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}))/app.MUedition.signal.fsamp);
            
            app.roi = drawrectangle(app.UIAxesDR);
            y = [app.roi.Position(2) app.roi.Position(2) + app.roi.Position(4)];
            x = [app.roi.Position(1) app.roi.Position(1) + app.roi.Position(3)];

            idx = find(x(1)<distime & distime<x(2));
            idx2 = find(DR > y(1));
            idx3 = intersect(idx,idx2);
            delete(app.roi)

            idxdel = zeros(1,length(idx3));
            for i = 1:length(idx3)
                if app.MUedition.edition.Pulsetrain{str2double(C{2})}(str2double(C{4}),app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(idx3(i))) < app.MUedition.edition.Pulsetrain{str2double(C{2})}(str2double(C{4}), app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(idx3(i)+1))
                    idxdel(i) = idx3(i);
                else
                    idxdel(i) = idx3(i)+1;
                end
            end
            if ~isempty(idx3)
                app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(idxdel) = [];
                
                % Update graph
                plot(app.UIAxesSpiketrain, app.MUedition.edition.time, app.MUedition.edition.Pulsetrain{str2double(C{2})}(str2double(C{4}),:), 'Color', [0.9412 0.9412 0.9412], 'LineWidth', 1);
                hold(app.UIAxesSpiketrain, 'on')
                plot(app.UIAxesSpiketrain, app.MUedition.edition.time, app.MUedition.signal.target/max(app.MUedition.signal.target), '--', 'LineWidth', 1, 'Color', [0.9412 0.9412 0.9412]);
                plot(app.UIAxesSpiketrain, app.MUedition.edition.time(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}), app.MUedition.edition.Pulsetrain{str2double(C{2})}(str2double(C{4}),app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}), 'o', 'LineWidth', 1, 'MarkerSize', 10, 'Color', [0.85 0.33 0.10]);
                hold(app.UIAxesSpiketrain, 'off')
    
                distime1 = zeros(1,length(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})})-1);
                for i = 1:length(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})})-1
                    distime1(i) = (round((app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i+1) - app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i)) / 2) + app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i)) / app.MUedition.signal.fsamp;
                end
                DR1 = 1./((diff(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}))/app.MUedition.signal.fsamp);
    
                plot(app.UIAxesDR, distime1, DR1, 'o', 'LineWidth', 1.5, 'MarkerSize', 10, 'Color', [0.9412 0.9412 0.9412]);
    
                app.UIAxesSpiketrain.XLim = [app.graphstart app.graphend];
                app.UIAxesDR.XLim = [app.graphstart app.graphend];
                app.UIAxesSpiketrain.YLim = [-0.05 1.5];
                app.UIAxesDR.YLim = [0 max(DR1)*1.5];
            end
        end

        % Button pushed function: FlagMUfordeletionButton
        function FlagMUfordeletionButtonPushed(app, event)
            C = strsplit(app.MUdisplayedDropDown.Value,'_');
            app.MUedition.edition.Pulsetrain{str2double(C{2})}(str2double(C{4}), :) = 0;
            app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})} = [1 app.MUedition.signal.fsamp];

            plot(app.UIAxesSpiketrain, app.MUedition.edition.time, app.MUedition.edition.Pulsetrain{str2double(C{2})}(str2double(C{4}),:), 'Color', [0.9412 0.9412 0.9412], 'LineWidth', 1);
            hold(app.UIAxesSpiketrain, 'on')
            plot(app.UIAxesSpiketrain, app.MUedition.edition.time, app.MUedition.signal.target/max(app.MUedition.signal.target), '--', 'LineWidth', 1, 'Color', [0.9412 0.9412 0.9412]);
            plot(app.UIAxesSpiketrain, app.MUedition.edition.time(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}), app.MUedition.edition.Pulsetrain{str2double(C{2})}(str2double(C{4}),app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}), 'o', 'LineWidth', 1, 'MarkerSize', 10, 'Color', [0.85 0.33 0.10]);
            hold(app.UIAxesSpiketrain, 'off')

            distime1 = zeros(1,length(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})})-1);
            for i = 1:length(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})})-1
                distime1(i) = (round((app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i+1) - app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i)) / 2) + app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i)) / app.MUedition.signal.fsamp;
            end
            DR1 = 1./((diff(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}))/app.MUedition.signal.fsamp);

            plot(app.UIAxesDR, distime1, DR1, 'o', 'LineWidth', 1.5, 'MarkerSize', 10, 'Color', [0.9412 0.9412 0.9412]);

            app.UIAxesSpiketrain.XLim = [app.graphstart app.graphend];
            app.UIAxesDR.XLim = [app.graphstart app.graphend];
            app.UIAxesSpiketrain.YLim = [-0.05 1.5];
            app.UIAxesDR.YLim = [0 max(DR1)*1.5];
        end

        % Button pushed function: RemoveoutliersButton
        function RemoveoutliersButtonPushed(app, event)
            C = strsplit(app.MUdisplayedDropDown.Value,'_');
            distime = zeros(1,length(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})})-1);
            for i = 1:length(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})})-1
                distime(i) = (round((app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i+1) - app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i)) / 2) + app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i)) / app.MUedition.signal.fsamp;
            end
            DR = 1./((diff(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}))/app.MUedition.signal.fsamp);
            thres = mean(DR) + 3*std(DR);
            idx = find(DR > thres);

            idxdel = zeros(1,length(idx));
            for i = 1:length(idx)
                if app.MUedition.edition.Pulsetrain{str2double(C{2})}(str2double(C{4}),app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(idx(i))) < app.MUedition.edition.Pulsetrain{str2double(C{2})}(str2double(C{4}), app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(idx(i)+1))
                    idxdel(i) = idx(i);
                else
                    idxdel(i) = idx(i)+1;
                end
            end
            if ~isempty(idx)
                app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(idxdel) = [];
                
                % Update graph
                plot(app.UIAxesSpiketrain, app.MUedition.edition.time, app.MUedition.edition.Pulsetrain{str2double(C{2})}(str2double(C{4}),:), 'Color', [0.9412 0.9412 0.9412], 'LineWidth', 1);
                hold(app.UIAxesSpiketrain, 'on')
                plot(app.UIAxesSpiketrain, app.MUedition.edition.time, app.MUedition.signal.target/max(app.MUedition.signal.target), '--', 'LineWidth', 1, 'Color', [0.9412 0.9412 0.9412]);
                plot(app.UIAxesSpiketrain, app.MUedition.edition.time(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}), app.MUedition.edition.Pulsetrain{str2double(C{2})}(str2double(C{4}),app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}), 'o', 'LineWidth', 1, 'MarkerSize', 10, 'Color', [0.85 0.33 0.10]);
                hold(app.UIAxesSpiketrain, 'off')
    
                distime1 = zeros(1,length(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})})-1);
                for i = 1:length(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})})-1
                    distime1(i) = (round((app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i+1) - app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i)) / 2) + app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i)) / app.MUedition.signal.fsamp;
                end
                DR1 = 1./((diff(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}))/app.MUedition.signal.fsamp);
    
                plot(app.UIAxesDR, distime1, DR1, 'o', 'LineWidth', 1.5, 'MarkerSize', 10, 'Color', [0.9412 0.9412 0.9412]);
    
                app.UIAxesSpiketrain.XLim = [app.graphstart app.graphend];
                app.UIAxesDR.XLim = [app.graphstart app.graphend];
                app.UIAxesSpiketrain.YLim = [-0.05 1.5];
                app.UIAxesDR.YLim = [0 max(DR1)*1.5];
            end
        end

        % Button pushed function: ReevaluatewindowButton
        function ReevaluatewindowButtonPushed(app, event)
            C = strsplit(app.MUdisplayedDropDown.Value,'_');
            
            % Update MU filter
            nbextchan = 1500;
            idx = find(app.MUedition.edition.time > app.graphstart & app.MUedition.edition.time < app.graphend);
            EMG = app.MUedition.signal.data((str2double(C{2})-1)*app.MUedition.parameters.nbelectrodes+1:(str2double(C{2})-1)*app.MUedition.parameters.nbelectrodes+length(app.MUedition.signal.EMGmask{str2double(C{2})}),:);
            EMG = EMG(app.MUedition.signal.EMGmask{str2double(C{2})}==0,idx);
            spikes1 = intersect(idx(round(0.1*app.MUedition.signal.fsamp):end-round(0.1*app.MUedition.signal.fsamp)),app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})});
            spikes2 = (spikes1 - idx(1));
            exFactor1 = round(nbextchan/size(EMG,1));
            eSIG = extend(EMG,exFactor1);
            ReSIG = eSIG*eSIG'/length(eSIG);
            iReSIGt = pinv(ReSIG);

            k = 1;
            MUFilters = sum(eSIG(:,spikes2),2);

            Pt = (MUFilters'*iReSIGt)*eSIG; % Update the pulse train
            Pt= Pt(1:size(EMG,2));
            Pt([1:round(0.1*app.MUedition.signal.fsamp) end-round(0.1*app.MUedition.signal.fsamp):end]) = 0; % Remove the edges
            Pt = Pt .* abs(Pt); % Normalized and update the pulse train
            [~,spikes] = findpeaks(Pt,'MinPeakDistance', round(app.MUedition.signal.fsamp*0.005)); % Peak detection
            Pt = Pt/mean(maxk(Pt(spikes),10));

            [L,C2] = kmeans(Pt(spikes)',2); % Kmean classification
            [~, idx2] = max(C2); % Find the class with the highest centroid
            spikes2 = spikes(L==idx2);
            ISI = diff(spikes2)/app.MUedition.signal.fsamp; % Interspike interval
            CoV = std(ISI)/mean(ISI); % Coefficient of variation
            CoVlast = CoV + 0.1;

            spikes2(Pt(spikes2)>mean(Pt(spikes2))+3*std(Pt(spikes2))) = []; % remove the outliers of the pulse train for the calculation of the filter

            % Minimization of the CoV of discharge times (end when CoV is
            % minimized)
            MUFilters = sum(eSIG(:,spikes2),2); % update W by summing the spikes    
    
            while CoV < CoVlast
                CoVlast = CoV; % save the last CoV
                spikest = spikes2; % save the last spikes
                MUFilterst = MUFilters; % save the last MU filter

                Pt = (MUFilters' * iReSIGt) * eSIG; % Update the pulse train
                Pt= Pt(1:size(EMG,2)); 
                Pt([1:round(0.1*app.MUedition.signal.fsamp) end-round(0.1*app.MUedition.signal.fsamp):end]) = 0; % Remove the edges
                Pt = Pt .* abs(Pt); % Normalized and update the pulse train
                [~,spikes] = findpeaks(Pt,'MinPeakDistance', round(app.MUedition.signal.fsamp*0.005)); % Peak detection
                Pt = Pt/mean(maxk(Pt(spikes),10));
                
                [L,C2] = kmeans(Pt(spikes)',2); % Kmean classification
                [~, idx2] = max(C2); % Find the class with the highest centroid
                spikes2 = spikes(L==idx2);
                ISI = diff(spikes2)/app.MUedition.signal.fsamp; % Interspike interval
                CoV = std(ISI)/mean(ISI); % Update CoV
                k = k + 1;
               
                spikesf = spikes2; 
                spikesf(Pt(spikesf)>mean(Pt(spikesf))+3*std(Pt(spikesf))) = []; % remove the outliers of the pulse train for the calculation of the filter
                MUFilters = sum(eSIG(:,spikesf),2);
            end
             
             % update detection of spikes
            Pt = (MUFilterst' * iReSIGt) * eSIG;
            Pt= Pt(1:size(EMG,2));
            Pt([1:round(0.1*app.MUedition.signal.fsamp) end-round(0.1*app.MUedition.signal.fsamp):end]) = 0; % Remove the edges
            Pt = Pt .* abs(Pt); % Normalized and update the pulse train
            Pt = Pt/mean(maxk(Pt(spikest),10));

            app.MUedition.edition.Pulsetrain{str2double(C{2})}(str2double(C{4}),idx(1)+round(0.1*app.MUedition.signal.fsamp)-1:idx(end)-round(0.1*app.MUedition.signal.fsamp)) = Pt(round(0.1*app.MUedition.signal.fsamp):end-round(0.1*app.MUedition.signal.fsamp));
            app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})} = setdiff(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})},spikes1);
            app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})} = [app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}, spikest + idx(1) - 1];
            app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})} = sort(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})});

            app.MUedition.edition.silval{str2double(C{2}),str2double(C{4})} = getsil(app.MUedition.edition.Pulsetrain{str2double(C{2})}(str2double(C{4}),:), app.MUedition.signal.fsamp);
            app.EditField_5.Value = ['SIL = ' num2str(app.MUedition.edition.silval{str2double(C{2}),str2double(C{4})})];

            plot(app.UIAxesSpiketrain, app.MUedition.edition.time, app.MUedition.edition.Pulsetrain{str2double(C{2})}(str2double(C{4}),:), 'Color', [0.9412 0.9412 0.9412], 'LineWidth', 1);
            hold(app.UIAxesSpiketrain, 'on')
            plot(app.UIAxesSpiketrain, app.MUedition.edition.time, app.MUedition.signal.target/max(app.MUedition.signal.target), '--', 'LineWidth', 1, 'Color', [0.9412 0.9412 0.9412]);
            plot(app.UIAxesSpiketrain, app.MUedition.edition.time(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}), app.MUedition.edition.Pulsetrain{str2double(C{2})}(str2double(C{4}),app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}), 'o', 'LineWidth', 1, 'MarkerSize', 10, 'Color', [0.85 0.33 0.10]);
            hold(app.UIAxesSpiketrain, 'off')

            distime1 = zeros(1, length(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})})-1);
            for i = 1:length(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})})-1
                distime1(i) = (round((app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i+1) - app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i)) / 2) + app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}(i)) / app.MUedition.signal.fsamp;
            end
            DR1 = 1./((diff(app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})}))/app.MUedition.signal.fsamp);

            plot(app.UIAxesDR, distime1, DR1, 'o', 'LineWidth', 1.5, 'MarkerSize', 10, 'Color', [0.9412 0.9412 0.9412]);

            app.UIAxesSpiketrain.XLim = [app.graphstart app.graphend];
            app.UIAxesSpiketrain.YLim = [-0.05 1.5];
            app.UIAxesDR.XLim = [app.graphstart app.graphend];
            app.UIAxesDR.YLim = [0 max(DR1)*1.5];
        end

        % Button pushed function: RemoveflaggedMUandduplicatesButton
        function RemoveflaggedMUandduplicatesButtonPushed(app, event)
            % Remove the flagged motor units
            fwb = waitbar(0, 'Checking flagged units and duplicates');
            ite = 0;
            itetot = 0;
            for f = 1:app.MUedition.signal.ngrid
                itetot = itetot + size(app.MUedition.edition.Pulsetrain{f},1);
            end

            for i = 1:app.MUedition.signal.ngrid
                app.MUedition.edition.Pulsetrainclean{i} = app.MUedition.edition.Pulsetrain{i};
                app.MUedition.edition.Distimeclean{i} = {};
                if size(app.MUedition.edition.Pulsetrain{i},1)>0
                    for j = 1:size(app.MUedition.edition.Pulsetrain{i},1)
                        app.MUedition.edition.Distimeclean{i}{j} = app.MUedition.edition.Dischargetimes{i,j};
                    end
                    for j = 1:size(app.MUedition.edition.Pulsetrain{i},1)
                        idx = size(app.MUedition.edition.Pulsetrain{i},1)+1-j;
                        if length(app.MUedition.edition.Dischargetimes{i,idx}) == 2 && mean(app.MUedition.edition.Pulsetrain{i}(idx,:)) == 0
                            app.MUedition.edition.Distimeclean{i}{idx} = [];
                            app.MUedition.edition.Pulsetrainclean{i}(idx,:) = [];
                        end
                        ite = ite + 1;
                        waitbar(ite/itetot, fwb,['Checking flagged units and duplicates for Grid#' num2str(i) ' _MU#' num2str(j)])
                    end
                    app.MUedition.edition.Distimeclean{i} = app.MUedition.edition.Distimeclean{i}(~cellfun('isempty',app.MUedition.edition.Distimeclean{i}));
                    % Remove the duplicates
                    [app.MUedition.edition.Pulsetrainclean{i}, app.MUedition.edition.Distimeclean{i}] = remduplicates(app.MUedition.edition.Pulsetrainclean{i}, app.MUedition.edition.Distimeclean{i}, app.MUedition.edition.Distimeclean{i}, round(app.MUedition.signal.fsamp/40), 0.00025, 0.3, app.MUedition.signal.fsamp);
                end
            end

            app.MUedition.edition.Dischargetimes = {};
            for i = 1:app.MUedition.signal.ngrid
                app.MUedition.edition.Pulsetrain{i} = app.MUedition.edition.Pulsetrainclean{i};
                for j = 1:size(app.MUedition.edition.Pulsetrain{i},1)
                    app.MUedition.edition.Dischargetimes{i,j} = app.MUedition.edition.Distimeclean{i}{j};
                end
            end

            app.MUdisplayedDropDown.Items = {};

            for i = 1:app.MUedition.signal.ngrid
                % Update the list and load the edited files
                for j = 1:size(app.MUedition.edition.Pulsetrain{i},1)
                    app.MUdisplayedDropDown.Items = horzcat(app.MUdisplayedDropDown.Items, {['Grid_', num2str(i), '_MU_' , num2str(j)]});
                end
            end

            % Update the graph
            plot(app.UIAxesSpiketrain, app.MUedition.edition.time, app.MUedition.edition.Pulsetrain{1}(1,:), 'Color', [0.9412 0.9412 0.9412], 'LineWidth', 1);
            hold(app.UIAxesSpiketrain, 'on')
            plot(app.UIAxesSpiketrain, app.MUedition.edition.time, app.MUedition.signal.target/max(app.MUedition.signal.target), '--', 'LineWidth', 1, 'Color', [0.9412 0.9412 0.9412]);
            plot(app.UIAxesSpiketrain, app.MUedition.edition.time(app.MUedition.edition.Dischargetimes{1,1}), app.MUedition.edition.Pulsetrain{1}(1,app.MUedition.edition.Dischargetimes{1,1}), 'o', 'LineWidth', 1, 'MarkerSize', 10, 'Color', [0.85 0.33 0.10]);
            hold(app.UIAxesSpiketrain, 'off')

            distime1 = zeros(1, length(app.MUedition.edition.Dischargetimes{1,1})-1);
            for i = 1:length(app.MUedition.edition.Dischargetimes{1,1})-1
                distime1(i) = (round((app.MUedition.edition.Dischargetimes{1,1}(i+1) - app.MUedition.edition.Dischargetimes{1,1}(i)) / 2) + app.MUedition.edition.Dischargetimes{1,1}(i)) / app.MUedition.signal.fsamp;
            end
            DR1 = 1./((diff(app.MUedition.edition.Dischargetimes{1,1}))/app.MUedition.signal.fsamp);

            app.UIAxesSpiketrain.YLim = [-0.05 1.5];
            app.UIAxesSpiketrain.XLim = [app.graphstart app.graphend];
            app.UIAxesDR.XLim = [app.graphstart app.graphend];
            app.UIAxesDR.YLim = [0 max(DR1)*1.5];

            delete(fwb)
            app.RemoveflaggedMUandduplicatesButton.BackgroundColor = [0.5 0.5 0.5];
        end

        % Button pushed function: PlotMUspiketrainsButton
        function PlotMUspiketrainsButtonPushed(app, event)
            for i = 1:app.MUedition.signal.ngrid
                firings = nan(size(app.MUedition.edition.Pulsetrain{i}));
                for j = 1:size(app.MUedition.edition.Pulsetrain{i},1)
                    firings(j,app.MUedition.edition.Dischargetimes{i,j}) = j;
                end
                subplot(1,app.MUedition.signal.ngrid,i)
                plot(app.MUedition.edition.time,firings,'|','MarkerSize', 10, 'Color', [0.9412 0.9412 0.9412])
                hold on
                plot(app.MUedition.edition.time,app.MUedition.signal.target/max(app.MUedition.signal.target)*j,'--','LineWidth',1,'Color',[0.85 0.33 0.10]);
                title(['Grid#' num2str(i) ' with ' num2str(j) ' MUs'], 'Color', [0.9412 0.9412 0.9412], 'FontName', 'Avenir Next')
                xlabel('Time (s)', 'FontName', 'Avenir Next')
                ylabel('MU#', 'FontName', 'Avenir Next')
                ylim([0 j+1])
                set(gcf,'Color', [0.15 0.15 0.15]);
                set(gcf,'units','normalized','outerposition',[0 0 1 1])
                set(gca,'Color', [0.15 0.15 0.15], 'XColor', [0.9412 0.9412 0.9412], 'YColor', [0.9412 0.9412 0.9412]);
            end
            sgtitle(['Raster plots for ' num2str(i) ' grids'], 'FontName', 'Avenir Next', 'FontSize', 25, 'Color', [0.9412 0.9412 0.9412])
        end

        % Button pushed function: PlotMUfiringratesButton
        function PlotMUfiringratesButtonPushed(app, event)
            C = strsplit(app.MUdisplayedDropDown.Value,'_');
            win = hann(app.MUedition.signal.fsamp);
            for i = 1:app.MUedition.signal.ngrid
                firings = zeros(size(app.MUedition.edition.Pulsetrain{i}));
                smoothdr = zeros(size(app.MUedition.edition.Pulsetrain{i}));
                subplot(1,app.MUedition.signal.ngrid,i)
                for j = 1:size(app.MUedition.edition.Pulsetrain{i},1)
                    firings(j,app.MUedition.edition.Dischargetimes{i,j}) = 1;
                    smoothdr(j,:) = conv(firings(j,:),win,'same');
                    if i == str2double(C{2}) && j == str2double(C{4})
                        plot(app.MUedition.edition.time,smoothdr(j,:), 'Color', [0.85 0.33 0.10], 'LineWidth', 3)
                        hold on
                    else
                        plot(app.MUedition.edition.time,smoothdr(j,:), 'Color', [0.9412 0.9412 0.9412], 'LineWidth', 1)
                        hold on
                    end
                end
                clearvars firings smoothdr

                title(['Grid#' num2str(i) ' with ' num2str(j) ' MUs'], 'Color', [0.9412 0.9412 0.9412], 'FontName', 'Avenir Next')
                xlabel('Time (s)', 'FontName', 'Avenir Next')
                ylabel('Smoothed discharge rates', 'FontName', 'Avenir Next')
                set(gcf,'Color', [0.15 0.15 0.15]);
                set(gcf,'units','normalized','outerposition',[0 0 1 1])
                set(gca,'Color', [0.15 0.15 0.15], 'XColor', [0.9412 0.9412 0.9412], 'YColor', [0.9412 0.9412 0.9412]);
            end
            sgtitle(['Smoothed discharge rates for ' num2str(i) ' grids'], 'FontName', 'Avenir Next', 'FontSize', 25, 'Color', [0.9412 0.9412 0.9412])
        end

        % Button pushed function: SaveButton
        function SaveButtonPushed(app, event)
            if contains(app.filename2,'edited')
                savename = [app.pathname2 app.filename2];
            else
                savename = [app.pathname2 app.filename2 '_edited.mat'];
            end
            signal = app.MUedition.signal;
            parameters = app.MUedition.parameters;
            edition = app.MUedition.edition;
            save(savename, 'signal', 'parameters', 'edition', '-v7.3');
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Color = [0.149 0.149 0.149];
            app.UIFigure.Position = [100 100 1141 690];
            app.UIFigure.Name = 'MATLAB App';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Position = [1 646 224 43];

            % Create RecordingTab
            app.RecordingTab = uitab(app.TabGroup);
            app.RecordingTab.Title = 'Recording';
            app.RecordingTab.BackgroundColor = [0.149 0.149 0.149];
            app.RecordingTab.ForegroundColor = [0.502 0.502 0.502];
            app.RecordingTab.ButtonDownFcn = createCallbackFcn(app, @RecordingTabButtonDown, true);

            % Create TrainingTab
            app.TrainingTab = uitab(app.TabGroup);
            app.TrainingTab.Title = 'Training';
            app.TrainingTab.BackgroundColor = [0.149 0.149 0.149];
            app.TrainingTab.ForegroundColor = [0.502 0.502 0.502];
            app.TrainingTab.ButtonDownFcn = createCallbackFcn(app, @TrainingTabButtonDown, true);

            % Create EditionTab
            app.EditionTab = uitab(app.TabGroup);
            app.EditionTab.Title = 'Edition';
            app.EditionTab.BackgroundColor = [0.149 0.149 0.149];
            app.EditionTab.ForegroundColor = [0.502 0.502 0.502];
            app.EditionTab.ButtonDownFcn = createCallbackFcn(app, @EditionTabButtonDown, true);

            % Create BiofeedbackTab
            app.BiofeedbackTab = uitab(app.TabGroup);
            app.BiofeedbackTab.Title = 'Biofeedback';
            app.BiofeedbackTab.BackgroundColor = [0.149 0.149 0.149];
            app.BiofeedbackTab.ForegroundColor = [0.502 0.502 0.502];
            app.BiofeedbackTab.ButtonDownFcn = createCallbackFcn(app, @BiofeedbackTabButtonDown, true);

            % Create VisualizationBiofeedback
            app.VisualizationBiofeedback = uipanel(app.UIFigure);
            app.VisualizationBiofeedback.ForegroundColor = [0.9412 0.9412 0.9412];
            app.VisualizationBiofeedback.Title = 'Biofeedback based on MUs';
            app.VisualizationBiofeedback.BackgroundColor = [0.149 0.149 0.149];
            app.VisualizationBiofeedback.FontName = 'Avenir Next';
            app.VisualizationBiofeedback.FontWeight = 'bold';
            app.VisualizationBiofeedback.FontSize = 14;
            app.VisualizationBiofeedback.Position = [224 1 919 691];

            % Create UIAxes4
            app.UIAxes4 = uiaxes(app.VisualizationBiofeedback);
            xlabel(app.UIAxes4, 'Discharge rate (pps)')
            ylabel(app.UIAxes4, 'Discharge rate (pps)')
            zlabel(app.UIAxes4, 'Z')
            app.UIAxes4.Toolbar.Visible = 'off';
            app.UIAxes4.FontName = 'Avenir Next';
            app.UIAxes4.Color = 'none';
            app.UIAxes4.FontSize = 14;
            app.UIAxes4.GridColor = [0.9412 0.9412 0.9412];
            app.UIAxes4.MinorGridColor = [0 0 0];
            app.UIAxes4.Interruptible = 'off';
            app.UIAxes4.HitTest = 'off';
            app.UIAxes4.PickableParts = 'none';
            app.UIAxes4.Position = [1 6 725 623];

            % Create UIAxes5
            app.UIAxes5 = uiaxes(app.VisualizationBiofeedback);
            ylabel(app.UIAxes5, 'Force (%MVC)')
            app.UIAxes5.AmbientLightColor = 'none';
            app.UIAxes5.FontName = 'Avenir Next';
            app.UIAxes5.Color = 'none';
            app.UIAxes5.FontSize = 14;
            app.UIAxes5.GridColor = 'none';
            app.UIAxes5.MinorGridColor = 'none';
            app.UIAxes5.Position = [729 6 186 623];

            % Create XaxisdisplayedDropDown
            app.XaxisdisplayedDropDown = uidropdown(app.VisualizationBiofeedback);
            app.XaxisdisplayedDropDown.Items = {'No MUs'};
            app.XaxisdisplayedDropDown.Enable = 'off';
            app.XaxisdisplayedDropDown.FontName = 'Avenir Next';
            app.XaxisdisplayedDropDown.FontSize = 14;
            app.XaxisdisplayedDropDown.FontColor = [0.9412 0.9412 0.9412];
            app.XaxisdisplayedDropDown.BackgroundColor = [0.149 0.149 0.149];
            app.XaxisdisplayedDropDown.Position = [127 644 137 22];
            app.XaxisdisplayedDropDown.Value = 'No MUs';

            % Create XaxisdisplayedDropDownLabel
            app.XaxisdisplayedDropDownLabel = uilabel(app.VisualizationBiofeedback);
            app.XaxisdisplayedDropDownLabel.HorizontalAlignment = 'center';
            app.XaxisdisplayedDropDownLabel.FontName = 'Avenir Next';
            app.XaxisdisplayedDropDownLabel.FontSize = 14;
            app.XaxisdisplayedDropDownLabel.FontColor = [0.9412 0.9412 0.9412];
            app.XaxisdisplayedDropDownLabel.Position = [5 644 107 22];
            app.XaxisdisplayedDropDownLabel.Text = 'X axis displayed';

            % Create DisconnectQuattrocentoButton_2
            app.DisconnectQuattrocentoButton_2 = uibutton(app.VisualizationBiofeedback, 'push');
            app.DisconnectQuattrocentoButton_2.ButtonPushedFcn = createCallbackFcn(app, @DisconnectQuattrocentoButton_2Pushed, true);
            app.DisconnectQuattrocentoButton_2.BackgroundColor = [0.149 0.149 0.149];
            app.DisconnectQuattrocentoButton_2.FontName = 'Avenir Next';
            app.DisconnectQuattrocentoButton_2.FontSize = 14;
            app.DisconnectQuattrocentoButton_2.FontColor = [1 0 0];
            app.DisconnectQuattrocentoButton_2.Enable = 'off';
            app.DisconnectQuattrocentoButton_2.Position = [733 640 179 26];
            app.DisconnectQuattrocentoButton_2.Text = 'Disconnect Quattrocento';

            % Create YaxisdisplayedDropDown
            app.YaxisdisplayedDropDown = uidropdown(app.VisualizationBiofeedback);
            app.YaxisdisplayedDropDown.Items = {'No MUs'};
            app.YaxisdisplayedDropDown.Enable = 'off';
            app.YaxisdisplayedDropDown.FontName = 'Avenir Next';
            app.YaxisdisplayedDropDown.FontSize = 14;
            app.YaxisdisplayedDropDown.FontColor = [0.9412 0.9412 0.9412];
            app.YaxisdisplayedDropDown.BackgroundColor = [0.149 0.149 0.149];
            app.YaxisdisplayedDropDown.Position = [396 644 137 22];
            app.YaxisdisplayedDropDown.Value = 'No MUs';

            % Create YaxisdisplayedDropDownLabel
            app.YaxisdisplayedDropDownLabel = uilabel(app.VisualizationBiofeedback);
            app.YaxisdisplayedDropDownLabel.HorizontalAlignment = 'center';
            app.YaxisdisplayedDropDownLabel.FontName = 'Avenir Next';
            app.YaxisdisplayedDropDownLabel.FontSize = 14;
            app.YaxisdisplayedDropDownLabel.FontColor = [0.9412 0.9412 0.9412];
            app.YaxisdisplayedDropDownLabel.Position = [274 644 107 22];
            app.YaxisdisplayedDropDownLabel.Text = 'Y axis displayed';

            % Create InitializeQuattrocentoButton_2
            app.InitializeQuattrocentoButton_2 = uibutton(app.VisualizationBiofeedback, 'push');
            app.InitializeQuattrocentoButton_2.ButtonPushedFcn = createCallbackFcn(app, @InitializeQuattrocentoButton_2Pushed, true);
            app.InitializeQuattrocentoButton_2.BackgroundColor = [0.149 0.149 0.149];
            app.InitializeQuattrocentoButton_2.FontName = 'Avenir Next';
            app.InitializeQuattrocentoButton_2.FontSize = 14;
            app.InitializeQuattrocentoButton_2.FontColor = [0.3922 0.8314 0.0745];
            app.InitializeQuattrocentoButton_2.Position = [545 640 182 26];
            app.InitializeQuattrocentoButton_2.Text = 'Initialize Quattrocento';

            % Create ManualeditionPanel
            app.ManualeditionPanel = uipanel(app.UIFigure);
            app.ManualeditionPanel.ForegroundColor = [0.9412 0.9412 0.9412];
            app.ManualeditionPanel.Title = 'Manual edition';
            app.ManualeditionPanel.BackgroundColor = [0.149 0.149 0.149];
            app.ManualeditionPanel.FontName = 'Avenir Next';
            app.ManualeditionPanel.FontWeight = 'bold';
            app.ManualeditionPanel.FontSize = 14;
            app.ManualeditionPanel.Position = [224 1 919 691];

            % Create UIAxesSpiketrain
            app.UIAxesSpiketrain = uiaxes(app.ManualeditionPanel);
            xlabel(app.UIAxesSpiketrain, 'Time (s)')
            ylabel(app.UIAxesSpiketrain, 'Pulse train')
            zlabel(app.UIAxesSpiketrain, 'Z')
            app.UIAxesSpiketrain.Toolbar.Visible = 'off';
            app.UIAxesSpiketrain.FontName = 'Avenir Next';
            app.UIAxesSpiketrain.Color = 'none';
            app.UIAxesSpiketrain.FontSize = 14;
            app.UIAxesSpiketrain.Interruptible = 'off';
            app.UIAxesSpiketrain.HitTest = 'off';
            app.UIAxesSpiketrain.PickableParts = 'none';
            app.UIAxesSpiketrain.Position = [9 48 905 301];

            % Create UIAxesDR
            app.UIAxesDR = uiaxes(app.ManualeditionPanel);
            xlabel(app.UIAxesDR, 'Time (s)')
            ylabel(app.UIAxesDR, 'Discharge rate')
            zlabel(app.UIAxesDR, 'Z')
            app.UIAxesDR.Toolbar.Visible = 'off';
            app.UIAxesDR.FontName = 'Avenir Next';
            app.UIAxesDR.Color = 'none';
            app.UIAxesDR.FontSize = 14;
            app.UIAxesDR.GridColor = [0.15 0.15 0.15];
            app.UIAxesDR.MinorGridColor = [0.9412 0.9412 0.9412];
            app.UIAxesDR.Interruptible = 'off';
            app.UIAxesDR.HitTest = 'off';
            app.UIAxesDR.PickableParts = 'none';
            app.UIAxesDR.Position = [9 406 905 218];

            % Create MUdisplayedDropDown
            app.MUdisplayedDropDown = uidropdown(app.ManualeditionPanel);
            app.MUdisplayedDropDown.Items = {'No MUs'};
            app.MUdisplayedDropDown.ValueChangedFcn = createCallbackFcn(app, @MUdisplayedDropDownValueChanged, true);
            app.MUdisplayedDropDown.Enable = 'off';
            app.MUdisplayedDropDown.FontName = 'Avenir Next';
            app.MUdisplayedDropDown.FontSize = 14;
            app.MUdisplayedDropDown.FontColor = [0.9412 0.9412 0.9412];
            app.MUdisplayedDropDown.BackgroundColor = [0.149 0.149 0.149];
            app.MUdisplayedDropDown.Position = [132 633 238 34];
            app.MUdisplayedDropDown.Value = 'No MUs';

            % Create MUdisplayedDropDownLabel
            app.MUdisplayedDropDownLabel = uilabel(app.ManualeditionPanel);
            app.MUdisplayedDropDownLabel.HorizontalAlignment = 'center';
            app.MUdisplayedDropDownLabel.FontName = 'Avenir Next';
            app.MUdisplayedDropDownLabel.FontSize = 14;
            app.MUdisplayedDropDownLabel.FontColor = [0.9412 0.9412 0.9412];
            app.MUdisplayedDropDownLabel.Position = [6 633 118 34];
            app.MUdisplayedDropDownLabel.Text = 'MU displayed #';

            % Create RemoveoutliersButton
            app.RemoveoutliersButton = uibutton(app.ManualeditionPanel, 'push');
            app.RemoveoutliersButton.ButtonPushedFcn = createCallbackFcn(app, @RemoveoutliersButtonPushed, true);
            app.RemoveoutliersButton.BackgroundColor = [0.149 0.149 0.149];
            app.RemoveoutliersButton.FontName = 'Avenir Next';
            app.RemoveoutliersButton.FontSize = 14;
            app.RemoveoutliersButton.FontWeight = 'bold';
            app.RemoveoutliersButton.FontColor = [0.9412 0.9412 0.9412];
            app.RemoveoutliersButton.Position = [599 631 200 34];
            app.RemoveoutliersButton.Text = 'Remove outliers';

            % Create FlagMUfordeletionButton
            app.FlagMUfordeletionButton = uibutton(app.ManualeditionPanel, 'push');
            app.FlagMUfordeletionButton.ButtonPushedFcn = createCallbackFcn(app, @FlagMUfordeletionButtonPushed, true);
            app.FlagMUfordeletionButton.BackgroundColor = [0.149 0.149 0.149];
            app.FlagMUfordeletionButton.FontName = 'Avenir Next';
            app.FlagMUfordeletionButton.FontSize = 14;
            app.FlagMUfordeletionButton.FontWeight = 'bold';
            app.FlagMUfordeletionButton.FontColor = [1 0 0];
            app.FlagMUfordeletionButton.Position = [389 631 200 34];
            app.FlagMUfordeletionButton.Text = 'Flag MU for deletion';

            % Create AddspikesButton
            app.AddspikesButton = uibutton(app.ManualeditionPanel, 'push');
            app.AddspikesButton.ButtonPushedFcn = createCallbackFcn(app, @AddspikesButtonPushed, true);
            app.AddspikesButton.BackgroundColor = [0.149 0.149 0.149];
            app.AddspikesButton.FontName = 'Avenir Next';
            app.AddspikesButton.FontSize = 14;
            app.AddspikesButton.FontWeight = 'bold';
            app.AddspikesButton.FontColor = [0.9412 0.9412 0.9412];
            app.AddspikesButton.Position = [8 362 214 34];
            app.AddspikesButton.Text = 'Add spikes';

            % Create DeletespikesButton
            app.DeletespikesButton = uibutton(app.ManualeditionPanel, 'push');
            app.DeletespikesButton.ButtonPushedFcn = createCallbackFcn(app, @DeletespikesButtonPushed, true);
            app.DeletespikesButton.BackgroundColor = [0.149 0.149 0.149];
            app.DeletespikesButton.FontName = 'Avenir Next';
            app.DeletespikesButton.FontSize = 14;
            app.DeletespikesButton.FontWeight = 'bold';
            app.DeletespikesButton.FontColor = [0.9412 0.9412 0.9412];
            app.DeletespikesButton.Position = [237 362 216 34];
            app.DeletespikesButton.Text = 'Delete spikes';

            % Create DeleteDRButton
            app.DeleteDRButton = uibutton(app.ManualeditionPanel, 'push');
            app.DeleteDRButton.ButtonPushedFcn = createCallbackFcn(app, @DeleteDRButtonPushed, true);
            app.DeleteDRButton.BackgroundColor = [0.149 0.149 0.149];
            app.DeleteDRButton.FontName = 'Avenir Next';
            app.DeleteDRButton.FontSize = 14;
            app.DeleteDRButton.FontWeight = 'bold';
            app.DeleteDRButton.FontColor = [0.9412 0.9412 0.9412];
            app.DeleteDRButton.Position = [467 362 216 34];
            app.DeleteDRButton.Text = 'Delete DR';

            % Create ScrollleftButton
            app.ScrollleftButton = uibutton(app.ManualeditionPanel, 'push');
            app.ScrollleftButton.ButtonPushedFcn = createCallbackFcn(app, @ScrollleftButtonPushed, true);
            app.ScrollleftButton.BackgroundColor = [0.149 0.149 0.149];
            app.ScrollleftButton.FontName = 'Avenir Next';
            app.ScrollleftButton.FontSize = 14;
            app.ScrollleftButton.FontWeight = 'bold';
            app.ScrollleftButton.FontColor = [0.9412 0.9412 0.9412];
            app.ScrollleftButton.Position = [6 11 215 34];
            app.ScrollleftButton.Text = '< Scroll left';

            % Create ZoominButton
            app.ZoominButton = uibutton(app.ManualeditionPanel, 'push');
            app.ZoominButton.ButtonPushedFcn = createCallbackFcn(app, @ZoominButtonPushed, true);
            app.ZoominButton.BackgroundColor = [0.149 0.149 0.149];
            app.ZoominButton.FontName = 'Avenir Next';
            app.ZoominButton.FontSize = 14;
            app.ZoominButton.FontWeight = 'bold';
            app.ZoominButton.FontColor = [0.9412 0.9412 0.9412];
            app.ZoominButton.Position = [237 11 215 34];
            app.ZoominButton.Text = 'Zoom in';

            % Create ZoomoutButton
            app.ZoomoutButton = uibutton(app.ManualeditionPanel, 'push');
            app.ZoomoutButton.ButtonPushedFcn = createCallbackFcn(app, @ZoomoutButtonPushed, true);
            app.ZoomoutButton.BackgroundColor = [0.149 0.149 0.149];
            app.ZoomoutButton.FontName = 'Avenir Next';
            app.ZoomoutButton.FontSize = 14;
            app.ZoomoutButton.FontWeight = 'bold';
            app.ZoomoutButton.FontColor = [0.9412 0.9412 0.9412];
            app.ZoomoutButton.Position = [467 11 215 34];
            app.ZoomoutButton.Text = 'Zoom out';

            % Create ScrollrightButton
            app.ScrollrightButton = uibutton(app.ManualeditionPanel, 'push');
            app.ScrollrightButton.ButtonPushedFcn = createCallbackFcn(app, @ScrollrightButtonPushed, true);
            app.ScrollrightButton.BackgroundColor = [0.149 0.149 0.149];
            app.ScrollrightButton.FontName = 'Avenir Next';
            app.ScrollrightButton.FontSize = 14;
            app.ScrollrightButton.FontWeight = 'bold';
            app.ScrollrightButton.FontColor = [0.9412 0.9412 0.9412];
            app.ScrollrightButton.Position = [697 11 215 34];
            app.ScrollrightButton.Text = 'Scroll right >';

            % Create ReevaluatewindowButton
            app.ReevaluatewindowButton = uibutton(app.ManualeditionPanel, 'push');
            app.ReevaluatewindowButton.ButtonPushedFcn = createCallbackFcn(app, @ReevaluatewindowButtonPushed, true);
            app.ReevaluatewindowButton.BackgroundColor = [0.149 0.149 0.149];
            app.ReevaluatewindowButton.FontName = 'Avenir Next';
            app.ReevaluatewindowButton.FontSize = 14;
            app.ReevaluatewindowButton.FontWeight = 'bold';
            app.ReevaluatewindowButton.FontColor = [0.9412 0.9412 0.9412];
            app.ReevaluatewindowButton.Position = [697 362 216 34];
            app.ReevaluatewindowButton.Text = 'Reevaluate window';

            % Create EditField_5
            app.EditField_5 = uieditfield(app.ManualeditionPanel, 'text');
            app.EditField_5.FontName = 'Avenir Next';
            app.EditField_5.FontSize = 14;
            app.EditField_5.FontColor = [1 1 1];
            app.EditField_5.BackgroundColor = [0.149 0.149 0.149];
            app.EditField_5.Position = [810 632 99 33];

            % Create VisualizationPanel
            app.VisualizationPanel = uipanel(app.UIFigure);
            app.VisualizationPanel.ForegroundColor = [0.9412 0.9412 0.9412];
            app.VisualizationPanel.Title = 'Visualization';
            app.VisualizationPanel.BackgroundColor = [0.149 0.149 0.149];
            app.VisualizationPanel.FontName = 'Avenir Next';
            app.VisualizationPanel.FontWeight = 'bold';
            app.VisualizationPanel.FontSize = 14;
            app.VisualizationPanel.Position = [224 1 919 691];

            % Create UIAxes3
            app.UIAxes3 = uiaxes(app.VisualizationPanel);
            xlabel(app.UIAxes3, 'Time (s)')
            ylabel(app.UIAxes3, 'Channels')
            zlabel(app.UIAxes3, 'Z')
            app.UIAxes3.Toolbar.Visible = 'off';
            app.UIAxes3.FontName = 'Avenir Next';
            app.UIAxes3.Color = 'none';
            app.UIAxes3.FontSize = 14;
            app.UIAxes3.GridColor = [0 0 0];
            app.UIAxes3.MinorGridColor = [0 0 0];
            app.UIAxes3.Interruptible = 'off';
            app.UIAxes3.HitTest = 'off';
            app.UIAxes3.PickableParts = 'none';
            app.UIAxes3.Position = [1 6 914 626];

            % Create GriddisplayedDropDown
            app.GriddisplayedDropDown = uidropdown(app.VisualizationPanel);
            app.GriddisplayedDropDown.Items = {'No Muscles'};
            app.GriddisplayedDropDown.Enable = 'off';
            app.GriddisplayedDropDown.FontName = 'Avenir Next';
            app.GriddisplayedDropDown.FontSize = 14;
            app.GriddisplayedDropDown.FontColor = [0.9412 0.9412 0.9412];
            app.GriddisplayedDropDown.BackgroundColor = [0.149 0.149 0.149];
            app.GriddisplayedDropDown.Position = [138 644 137 22];
            app.GriddisplayedDropDown.Value = 'No Muscles';

            % Create GriddisplayedDropDownLabel
            app.GriddisplayedDropDownLabel = uilabel(app.VisualizationPanel);
            app.GriddisplayedDropDownLabel.HorizontalAlignment = 'center';
            app.GriddisplayedDropDownLabel.FontName = 'Avenir Next';
            app.GriddisplayedDropDownLabel.FontSize = 14;
            app.GriddisplayedDropDownLabel.FontColor = [0.9412 0.9412 0.9412];
            app.GriddisplayedDropDownLabel.Position = [14 644 111 22];
            app.GriddisplayedDropDownLabel.Text = 'Grid displayed #';

            % Create DisconnectQuattrocentoButton
            app.DisconnectQuattrocentoButton = uibutton(app.VisualizationPanel, 'push');
            app.DisconnectQuattrocentoButton.ButtonPushedFcn = createCallbackFcn(app, @DisconnectQuattrocentoButtonPushed, true);
            app.DisconnectQuattrocentoButton.BackgroundColor = [0.149 0.149 0.149];
            app.DisconnectQuattrocentoButton.FontName = 'Avenir Next';
            app.DisconnectQuattrocentoButton.FontSize = 14;
            app.DisconnectQuattrocentoButton.FontColor = [1 0 0];
            app.DisconnectQuattrocentoButton.Enable = 'off';
            app.DisconnectQuattrocentoButton.Position = [730 641 176 26];
            app.DisconnectQuattrocentoButton.Text = 'Disconnect Quattrocento';

            % Create InitializeQuattrocentoButton
            app.InitializeQuattrocentoButton = uibutton(app.VisualizationPanel, 'push');
            app.InitializeQuattrocentoButton.ButtonPushedFcn = createCallbackFcn(app, @InitializeQuattrocentoButtonPushed, true);
            app.InitializeQuattrocentoButton.BackgroundColor = [0.149 0.149 0.149];
            app.InitializeQuattrocentoButton.FontName = 'Avenir Next';
            app.InitializeQuattrocentoButton.FontSize = 14;
            app.InitializeQuattrocentoButton.FontColor = [0.3922 0.8314 0.0745];
            app.InitializeQuattrocentoButton.Position = [503 640 211 26];
            app.InitializeQuattrocentoButton.Text = 'Initialize Quattrocento';

            % Create BiofeedbackSettingsPanel
            app.BiofeedbackSettingsPanel = uipanel(app.UIFigure);
            app.BiofeedbackSettingsPanel.ForegroundColor = [0.9412 0.9412 0.9412];
            app.BiofeedbackSettingsPanel.Title = 'Biofeedback Settings';
            app.BiofeedbackSettingsPanel.BackgroundColor = [0.149 0.149 0.149];
            app.BiofeedbackSettingsPanel.FontName = 'Avenir Next';
            app.BiofeedbackSettingsPanel.FontWeight = 'bold';
            app.BiofeedbackSettingsPanel.FontSize = 14;
            app.BiofeedbackSettingsPanel.Position = [2 1 225 665];

            % Create UIAxes2
            app.UIAxes2 = uiaxes(app.BiofeedbackSettingsPanel);
            xlabel(app.UIAxes2, 'Time')
            ylabel(app.UIAxes2, 'Force')
            zlabel(app.UIAxes2, 'Z')
            app.UIAxes2.Toolbar.Visible = 'off';
            app.UIAxes2.FontName = 'Avenir Next';
            app.UIAxes2.Color = 'none';
            app.UIAxes2.FontSize = 14;
            app.UIAxes2.GridColor = [0.9412 0.9412 0.9412];
            app.UIAxes2.MinorGridColor = [0.9412 0.9412 0.9412];
            app.UIAxes2.Interruptible = 'off';
            app.UIAxes2.HitTest = 'off';
            app.UIAxes2.PickableParts = 'none';
            app.UIAxes2.Position = [7 311 210 118];

            % Create MVCtargetEditFieldLabel
            app.MVCtargetEditFieldLabel = uilabel(app.BiofeedbackSettingsPanel);
            app.MVCtargetEditFieldLabel.HorizontalAlignment = 'right';
            app.MVCtargetEditFieldLabel.FontName = 'Avenir Next';
            app.MVCtargetEditFieldLabel.FontSize = 14;
            app.MVCtargetEditFieldLabel.FontColor = [0.9412 0.9412 0.9412];
            app.MVCtargetEditFieldLabel.Position = [7 544 103 22];
            app.MVCtargetEditFieldLabel.Text = 'MVC target';

            % Create MVCtargetEditField
            app.MVCtargetEditField = uieditfield(app.BiofeedbackSettingsPanel, 'numeric');
            app.MVCtargetEditField.ValueChangedFcn = createCallbackFcn(app, @MVCtargetEditFieldValueChanged, true);
            app.MVCtargetEditField.FontName = 'Avenir Next';
            app.MVCtargetEditField.FontSize = 14;
            app.MVCtargetEditField.FontColor = [0.8118 0.502 1];
            app.MVCtargetEditField.BackgroundColor = [0.149 0.149 0.149];
            app.MVCtargetEditField.Position = [118 544 99 22];

            % Create DurationrampEditFieldLabel
            app.DurationrampEditFieldLabel = uilabel(app.BiofeedbackSettingsPanel);
            app.DurationrampEditFieldLabel.HorizontalAlignment = 'right';
            app.DurationrampEditFieldLabel.FontName = 'Avenir Next';
            app.DurationrampEditFieldLabel.FontSize = 14;
            app.DurationrampEditFieldLabel.FontColor = [0.9412 0.9412 0.9412];
            app.DurationrampEditFieldLabel.Position = [12 516 98 22];
            app.DurationrampEditFieldLabel.Text = 'Duration ramp';

            % Create DurationrampEditField
            app.DurationrampEditField = uieditfield(app.BiofeedbackSettingsPanel, 'numeric');
            app.DurationrampEditField.ValueChangedFcn = createCallbackFcn(app, @DurationrampEditFieldValueChanged, true);
            app.DurationrampEditField.FontName = 'Avenir Next';
            app.DurationrampEditField.FontSize = 14;
            app.DurationrampEditField.FontColor = [0.8118 0.502 1];
            app.DurationrampEditField.BackgroundColor = [0.149 0.149 0.149];
            app.DurationrampEditField.Position = [118 516 99 22];

            % Create DurationplateauEditFieldLabel
            app.DurationplateauEditFieldLabel = uilabel(app.BiofeedbackSettingsPanel);
            app.DurationplateauEditFieldLabel.HorizontalAlignment = 'right';
            app.DurationplateauEditFieldLabel.FontName = 'Avenir Next';
            app.DurationplateauEditFieldLabel.FontSize = 14;
            app.DurationplateauEditFieldLabel.FontColor = [0.9412 0.9412 0.9412];
            app.DurationplateauEditFieldLabel.Position = [-2 488 112 22];
            app.DurationplateauEditFieldLabel.Text = 'Duration plateau';

            % Create DurationplateauEditField
            app.DurationplateauEditField = uieditfield(app.BiofeedbackSettingsPanel, 'numeric');
            app.DurationplateauEditField.ValueChangedFcn = createCallbackFcn(app, @DurationplateauEditFieldValueChanged, true);
            app.DurationplateauEditField.FontName = 'Avenir Next';
            app.DurationplateauEditField.FontSize = 14;
            app.DurationplateauEditField.FontColor = [0.8118 0.502 1];
            app.DurationplateauEditField.BackgroundColor = [0.149 0.149 0.149];
            app.DurationplateauEditField.Position = [118 488 99 22];

            % Create DurationrestEditFieldLabel
            app.DurationrestEditFieldLabel = uilabel(app.BiofeedbackSettingsPanel);
            app.DurationrestEditFieldLabel.HorizontalAlignment = 'right';
            app.DurationrestEditFieldLabel.FontName = 'Avenir Next';
            app.DurationrestEditFieldLabel.FontSize = 14;
            app.DurationrestEditFieldLabel.FontColor = [0.9412 0.9412 0.9412];
            app.DurationrestEditFieldLabel.Position = [22 461 88 22];
            app.DurationrestEditFieldLabel.Text = 'Duration rest';

            % Create DurationrestEditField
            app.DurationrestEditField = uieditfield(app.BiofeedbackSettingsPanel, 'numeric');
            app.DurationrestEditField.ValueChangedFcn = createCallbackFcn(app, @DurationrestEditFieldValueChanged, true);
            app.DurationrestEditField.FontName = 'Avenir Next';
            app.DurationrestEditField.FontSize = 14;
            app.DurationrestEditField.FontColor = [0.8118 0.502 1];
            app.DurationrestEditField.BackgroundColor = [0.149 0.149 0.149];
            app.DurationrestEditField.Position = [118 461 99 22];

            % Create NbiterationsEditFieldLabel
            app.NbiterationsEditFieldLabel = uilabel(app.BiofeedbackSettingsPanel);
            app.NbiterationsEditFieldLabel.HorizontalAlignment = 'right';
            app.NbiterationsEditFieldLabel.FontName = 'Avenir Next';
            app.NbiterationsEditFieldLabel.FontSize = 14;
            app.NbiterationsEditFieldLabel.FontColor = [0.9412 0.9412 0.9412];
            app.NbiterationsEditFieldLabel.Position = [23 434 87 22];
            app.NbiterationsEditFieldLabel.Text = 'Nb iterations';

            % Create NbiterationsEditField
            app.NbiterationsEditField = uieditfield(app.BiofeedbackSettingsPanel, 'numeric');
            app.NbiterationsEditField.ValueChangedFcn = createCallbackFcn(app, @NbiterationsEditFieldValueChanged, true);
            app.NbiterationsEditField.FontName = 'Avenir Next';
            app.NbiterationsEditField.FontSize = 14;
            app.NbiterationsEditField.FontColor = [0.8118 0.502 1];
            app.NbiterationsEditField.BackgroundColor = [0.149 0.149 0.149];
            app.NbiterationsEditField.Position = [118 434 99 22];
            app.NbiterationsEditField.Value = 1;

            % Create StartQuadrantwithCSTsButton
            app.StartQuadrantwithCSTsButton = uibutton(app.BiofeedbackSettingsPanel, 'push');
            app.StartQuadrantwithCSTsButton.ButtonPushedFcn = createCallbackFcn(app, @StartQuadrantwithCSTsButtonPushed, true);
            app.StartQuadrantwithCSTsButton.BackgroundColor = [0.149 0.149 0.149];
            app.StartQuadrantwithCSTsButton.FontName = 'Avenir Next';
            app.StartQuadrantwithCSTsButton.FontSize = 14;
            app.StartQuadrantwithCSTsButton.FontColor = [0.5608 0.6196 0.851];
            app.StartQuadrantwithCSTsButton.Enable = 'off';
            app.StartQuadrantwithCSTsButton.Position = [7 203 210 34];
            app.StartQuadrantwithCSTsButton.Text = 'Start Quadrant with CSTs';

            % Create StartQuadrantwithMUsButton
            app.StartQuadrantwithMUsButton = uibutton(app.BiofeedbackSettingsPanel, 'push');
            app.StartQuadrantwithMUsButton.ButtonPushedFcn = createCallbackFcn(app, @StartQuadrantwithMUsButtonPushed, true);
            app.StartQuadrantwithMUsButton.BackgroundColor = [0.149 0.149 0.149];
            app.StartQuadrantwithMUsButton.FontName = 'Avenir Next';
            app.StartQuadrantwithMUsButton.FontSize = 14;
            app.StartQuadrantwithMUsButton.FontColor = [0.5608 0.6196 0.851];
            app.StartQuadrantwithMUsButton.Enable = 'off';
            app.StartQuadrantwithMUsButton.Position = [7 162 210 34];
            app.StartQuadrantwithMUsButton.Text = 'Start Quadrant with MUs';

            % Create StartDRofalltheMUsButton
            app.StartDRofalltheMUsButton = uibutton(app.BiofeedbackSettingsPanel, 'push');
            app.StartDRofalltheMUsButton.ButtonPushedFcn = createCallbackFcn(app, @StartDRofalltheMUsButtonPushed, true);
            app.StartDRofalltheMUsButton.BackgroundColor = [0.149 0.149 0.149];
            app.StartDRofalltheMUsButton.FontName = 'Avenir Next';
            app.StartDRofalltheMUsButton.FontSize = 14;
            app.StartDRofalltheMUsButton.FontColor = [0.5608 0.6196 0.851];
            app.StartDRofalltheMUsButton.Enable = 'off';
            app.StartDRofalltheMUsButton.Position = [7 121 210 34];
            app.StartDRofalltheMUsButton.Text = 'Start DR of all the MUs';

            % Create ForceparametersLabel
            app.ForceparametersLabel = uilabel(app.BiofeedbackSettingsPanel);
            app.ForceparametersLabel.HorizontalAlignment = 'center';
            app.ForceparametersLabel.FontName = 'Avenir Next';
            app.ForceparametersLabel.FontSize = 14;
            app.ForceparametersLabel.FontWeight = 'bold';
            app.ForceparametersLabel.FontColor = [0.9412 0.9412 0.9412];
            app.ForceparametersLabel.Position = [52 573 123 22];
            app.ForceparametersLabel.Text = 'Force parameters';

            % Create TypeofbiofeedbacksLabel
            app.TypeofbiofeedbacksLabel = uilabel(app.BiofeedbackSettingsPanel);
            app.TypeofbiofeedbacksLabel.HorizontalAlignment = 'center';
            app.TypeofbiofeedbacksLabel.FontName = 'Avenir Next';
            app.TypeofbiofeedbacksLabel.FontSize = 14;
            app.TypeofbiofeedbacksLabel.FontWeight = 'bold';
            app.TypeofbiofeedbacksLabel.FontColor = [0.9412 0.9412 0.9412];
            app.TypeofbiofeedbacksLabel.Position = [37 281 151 22];
            app.TypeofbiofeedbacksLabel.Text = 'Type of biofeedbacks';

            % Create StartRasterPlotwithMUsButton
            app.StartRasterPlotwithMUsButton = uibutton(app.BiofeedbackSettingsPanel, 'push');
            app.StartRasterPlotwithMUsButton.ButtonPushedFcn = createCallbackFcn(app, @StartRasterPlotwithMUsButtonPushed, true);
            app.StartRasterPlotwithMUsButton.BackgroundColor = [0.149 0.149 0.149];
            app.StartRasterPlotwithMUsButton.FontName = 'Avenir Next';
            app.StartRasterPlotwithMUsButton.FontSize = 14;
            app.StartRasterPlotwithMUsButton.FontColor = [0.5608 0.6196 0.851];
            app.StartRasterPlotwithMUsButton.Enable = 'off';
            app.StartRasterPlotwithMUsButton.Position = [7 244 210 34];
            app.StartRasterPlotwithMUsButton.Text = 'Start Raster Plot with MUs';

            % Create DisplaythePulsetrainsButton
            app.DisplaythePulsetrainsButton = uibutton(app.BiofeedbackSettingsPanel, 'push');
            app.DisplaythePulsetrainsButton.ButtonPushedFcn = createCallbackFcn(app, @DisplaythePulsetrainsButtonPushed, true);
            app.DisplaythePulsetrainsButton.BackgroundColor = [0.149 0.149 0.149];
            app.DisplaythePulsetrainsButton.FontName = 'Avenir Next';
            app.DisplaythePulsetrainsButton.FontSize = 14;
            app.DisplaythePulsetrainsButton.FontColor = [0.3804 0.7804 0.749];
            app.DisplaythePulsetrainsButton.Enable = 'off';
            app.DisplaythePulsetrainsButton.Position = [8 9 210 34];
            app.DisplaythePulsetrainsButton.Text = 'Display the Pulse trains';

            % Create QualityofthedecompositionLabel
            app.QualityofthedecompositionLabel = uilabel(app.BiofeedbackSettingsPanel);
            app.QualityofthedecompositionLabel.HorizontalAlignment = 'center';
            app.QualityofthedecompositionLabel.FontName = 'Avenir Next';
            app.QualityofthedecompositionLabel.FontSize = 14;
            app.QualityofthedecompositionLabel.FontWeight = 'bold';
            app.QualityofthedecompositionLabel.FontColor = [0.9412 0.9412 0.9412];
            app.QualityofthedecompositionLabel.Position = [11 47 205 22];
            app.QualityofthedecompositionLabel.Text = 'Quality of the decomposition';

            % Create ImportMUfiltersButton
            app.ImportMUfiltersButton = uibutton(app.BiofeedbackSettingsPanel, 'push');
            app.ImportMUfiltersButton.ButtonPushedFcn = createCallbackFcn(app, @ImportMUfiltersButtonPushed, true);
            app.ImportMUfiltersButton.BackgroundColor = [0.149 0.149 0.149];
            app.ImportMUfiltersButton.FontName = 'Avenir Next';
            app.ImportMUfiltersButton.FontSize = 14;
            app.ImportMUfiltersButton.FontColor = [0.8118 0.502 1];
            app.ImportMUfiltersButton.Position = [9 598 210 34];
            app.ImportMUfiltersButton.Text = 'Import MU filters';

            % Create SmoothingEditFieldLabel
            app.SmoothingEditFieldLabel = uilabel(app.BiofeedbackSettingsPanel);
            app.SmoothingEditFieldLabel.HorizontalAlignment = 'right';
            app.SmoothingEditFieldLabel.FontName = 'Avenir Next';
            app.SmoothingEditFieldLabel.FontSize = 14;
            app.SmoothingEditFieldLabel.FontColor = [0.9412 0.9412 0.9412];
            app.SmoothingEditFieldLabel.Position = [27 85 76 22];
            app.SmoothingEditFieldLabel.Text = 'Smoothing';

            % Create SmoothingEditField
            app.SmoothingEditField = uieditfield(app.BiofeedbackSettingsPanel, 'numeric');
            app.SmoothingEditField.FontName = 'Avenir Next';
            app.SmoothingEditField.FontSize = 14;
            app.SmoothingEditField.FontColor = [0.5608 0.6196 0.851];
            app.SmoothingEditField.BackgroundColor = [0.149 0.149 0.149];
            app.SmoothingEditField.Position = [111 85 99 22];
            app.SmoothingEditField.Value = 4;

            % Create EditionPanel
            app.EditionPanel = uipanel(app.UIFigure);
            app.EditionPanel.ForegroundColor = [0.9412 0.9412 0.9412];
            app.EditionPanel.Title = 'Edition';
            app.EditionPanel.BackgroundColor = [0.149 0.149 0.149];
            app.EditionPanel.FontName = 'Avenir Next';
            app.EditionPanel.FontWeight = 'bold';
            app.EditionPanel.FontSize = 14;
            app.EditionPanel.Position = [2 1 225 665];

            % Create EditField_saving_2
            app.EditField_saving_2 = uieditfield(app.EditionPanel, 'text');
            app.EditField_saving_2.Editable = 'off';
            app.EditField_saving_2.FontName = 'Avenir Next';
            app.EditField_saving_2.FontSize = 14;
            app.EditField_saving_2.FontColor = [0.8118 0.502 1];
            app.EditField_saving_2.BackgroundColor = [0.149 0.149 0.149];
            app.EditField_saving_2.Position = [7 598 94 34];
            app.EditField_saving_2.Value = 'File name';

            % Create SelectfileButton
            app.SelectfileButton = uibutton(app.EditionPanel, 'push');
            app.SelectfileButton.ButtonPushedFcn = createCallbackFcn(app, @SelectfileButtonPushed, true);
            app.SelectfileButton.BackgroundColor = [0.149 0.149 0.149];
            app.SelectfileButton.FontName = 'Avenir Next';
            app.SelectfileButton.FontSize = 14;
            app.SelectfileButton.FontWeight = 'bold';
            app.SelectfileButton.FontColor = [0.8118 0.502 1];
            app.SelectfileButton.Position = [114 598 101 34];
            app.SelectfileButton.Text = 'Select file';

            % Create ImportdataButton
            app.ImportdataButton = uibutton(app.EditionPanel, 'push');
            app.ImportdataButton.ButtonPushedFcn = createCallbackFcn(app, @ImportdataButtonPushed, true);
            app.ImportdataButton.BackgroundColor = [0.149 0.149 0.149];
            app.ImportdataButton.FontName = 'Avenir Next';
            app.ImportdataButton.FontSize = 14;
            app.ImportdataButton.FontWeight = 'bold';
            app.ImportdataButton.FontColor = [0.8118 0.502 1];
            app.ImportdataButton.Position = [8 556 207 34];
            app.ImportdataButton.Text = 'Import data';

            % Create RemoveflaggedMUandduplicatesButton
            app.RemoveflaggedMUandduplicatesButton = uibutton(app.EditionPanel, 'push');
            app.RemoveflaggedMUandduplicatesButton.ButtonPushedFcn = createCallbackFcn(app, @RemoveflaggedMUandduplicatesButtonPushed, true);
            app.RemoveflaggedMUandduplicatesButton.WordWrap = 'on';
            app.RemoveflaggedMUandduplicatesButton.BackgroundColor = [0.149 0.149 0.149];
            app.RemoveflaggedMUandduplicatesButton.FontName = 'Avenir Next';
            app.RemoveflaggedMUandduplicatesButton.FontSize = 14;
            app.RemoveflaggedMUandduplicatesButton.FontWeight = 'bold';
            app.RemoveflaggedMUandduplicatesButton.FontColor = [0.5608 0.6196 0.851];
            app.RemoveflaggedMUandduplicatesButton.Position = [8 462 207 43];
            app.RemoveflaggedMUandduplicatesButton.Text = 'Remove flagged MU and duplicates';

            % Create PlotMUspiketrainsButton
            app.PlotMUspiketrainsButton = uibutton(app.EditionPanel, 'push');
            app.PlotMUspiketrainsButton.ButtonPushedFcn = createCallbackFcn(app, @PlotMUspiketrainsButtonPushed, true);
            app.PlotMUspiketrainsButton.BackgroundColor = [0.149 0.149 0.149];
            app.PlotMUspiketrainsButton.FontName = 'Avenir Next';
            app.PlotMUspiketrainsButton.FontSize = 14;
            app.PlotMUspiketrainsButton.FontWeight = 'bold';
            app.PlotMUspiketrainsButton.FontColor = [0.3804 0.7804 0.749];
            app.PlotMUspiketrainsButton.Position = [8 356 207 34];
            app.PlotMUspiketrainsButton.Text = 'Plot MU spike trains';

            % Create SaveButton
            app.SaveButton = uibutton(app.EditionPanel, 'push');
            app.SaveButton.ButtonPushedFcn = createCallbackFcn(app, @SaveButtonPushed, true);
            app.SaveButton.BackgroundColor = [0.149 0.149 0.149];
            app.SaveButton.FontName = 'Avenir Next';
            app.SaveButton.FontSize = 14;
            app.SaveButton.FontWeight = 'bold';
            app.SaveButton.FontColor = [0.3804 0.7804 0.749];
            app.SaveButton.Position = [8 203 207 34];
            app.SaveButton.Text = 'Save';

            % Create VisualisationLabel
            app.VisualisationLabel = uilabel(app.EditionPanel);
            app.VisualisationLabel.HorizontalAlignment = 'center';
            app.VisualisationLabel.FontName = 'Avenir Next';
            app.VisualisationLabel.FontSize = 14;
            app.VisualisationLabel.FontColor = [0.9412 0.9412 0.9412];
            app.VisualisationLabel.Position = [70 395 84 22];
            app.VisualisationLabel.Text = 'Visualisation';

            % Create SavetheeditionLabel
            app.SavetheeditionLabel = uilabel(app.EditionPanel);
            app.SavetheeditionLabel.HorizontalAlignment = 'center';
            app.SavetheeditionLabel.WordWrap = 'on';
            app.SavetheeditionLabel.FontName = 'Avenir Next';
            app.SavetheeditionLabel.FontSize = 14;
            app.SavetheeditionLabel.FontColor = [0.9412 0.9412 0.9412];
            app.SavetheeditionLabel.Position = [12 243 199 22];
            app.SavetheeditionLabel.Text = 'Save the edition';

            % Create PlotMUfiringratesButton
            app.PlotMUfiringratesButton = uibutton(app.EditionPanel, 'push');
            app.PlotMUfiringratesButton.ButtonPushedFcn = createCallbackFcn(app, @PlotMUfiringratesButtonPushed, true);
            app.PlotMUfiringratesButton.BackgroundColor = [0.149 0.149 0.149];
            app.PlotMUfiringratesButton.FontName = 'Avenir Next';
            app.PlotMUfiringratesButton.FontSize = 14;
            app.PlotMUfiringratesButton.FontWeight = 'bold';
            app.PlotMUfiringratesButton.FontColor = [0.3804 0.7804 0.749];
            app.PlotMUfiringratesButton.Position = [8 311 207 34];
            app.PlotMUfiringratesButton.Text = 'Plot MU firing rates';

            % Create CleaningLabel
            app.CleaningLabel = uilabel(app.EditionPanel);
            app.CleaningLabel.HorizontalAlignment = 'center';
            app.CleaningLabel.FontName = 'Avenir Next';
            app.CleaningLabel.FontSize = 14;
            app.CleaningLabel.FontColor = [0.9412 0.9412 0.9412];
            app.CleaningLabel.Position = [81 506 63 22];
            app.CleaningLabel.Text = 'Cleaning';

            % Create TrainingSettingsPanel
            app.TrainingSettingsPanel = uipanel(app.UIFigure);
            app.TrainingSettingsPanel.ForegroundColor = [0.9412 0.9412 0.9412];
            app.TrainingSettingsPanel.Title = 'Training Settings';
            app.TrainingSettingsPanel.BackgroundColor = [0.149 0.149 0.149];
            app.TrainingSettingsPanel.FontName = 'Avenir Next';
            app.TrainingSettingsPanel.FontWeight = 'bold';
            app.TrainingSettingsPanel.FontSize = 14;
            app.TrainingSettingsPanel.Position = [2 1 225 665];

            % Create UIAxes
            app.UIAxes = uiaxes(app.TrainingSettingsPanel);
            xlabel(app.UIAxes, 'Time')
            ylabel(app.UIAxes, 'Force')
            zlabel(app.UIAxes, 'Z')
            app.UIAxes.Toolbar.Visible = 'off';
            app.UIAxes.FontName = 'Avenir Next';
            app.UIAxes.Color = 'none';
            app.UIAxes.FontSize = 14;
            app.UIAxes.GridColor = [0.9412 0.9412 0.9412];
            app.UIAxes.MinorGridColor = [0.9412 0.9412 0.9412];
            app.UIAxes.HitTest = 'off';
            app.UIAxes.PickableParts = 'none';
            app.UIAxes.Position = [9 124 208 111];

            % Create MVCparametersLabel
            app.MVCparametersLabel = uilabel(app.TrainingSettingsPanel);
            app.MVCparametersLabel.HorizontalAlignment = 'center';
            app.MVCparametersLabel.FontName = 'Avenir Next';
            app.MVCparametersLabel.FontSize = 14;
            app.MVCparametersLabel.FontWeight = 'bold';
            app.MVCparametersLabel.FontColor = [0.9412 0.9412 0.9412];
            app.MVCparametersLabel.Position = [55 616 119 22];
            app.MVCparametersLabel.Text = 'MVC parameters';

            % Create DurationEditFieldLabel
            app.DurationEditFieldLabel = uilabel(app.TrainingSettingsPanel);
            app.DurationEditFieldLabel.HorizontalAlignment = 'right';
            app.DurationEditFieldLabel.FontName = 'Avenir Next';
            app.DurationEditFieldLabel.FontSize = 14;
            app.DurationEditFieldLabel.FontColor = [0.8118 0.502 1];
            app.DurationEditFieldLabel.Position = [42 589 61 22];
            app.DurationEditFieldLabel.Text = 'Duration';

            % Create DurationEditField
            app.DurationEditField = uieditfield(app.TrainingSettingsPanel, 'numeric');
            app.DurationEditField.FontName = 'Avenir Next';
            app.DurationEditField.FontSize = 14;
            app.DurationEditField.FontColor = [0.8118 0.502 1];
            app.DurationEditField.BackgroundColor = [0.149 0.149 0.149];
            app.DurationEditField.Position = [118 589 100 22];

            % Create RestEditFieldLabel
            app.RestEditFieldLabel = uilabel(app.TrainingSettingsPanel);
            app.RestEditFieldLabel.HorizontalAlignment = 'right';
            app.RestEditFieldLabel.FontName = 'Avenir Next';
            app.RestEditFieldLabel.FontSize = 14;
            app.RestEditFieldLabel.FontColor = [0.8118 0.502 1];
            app.RestEditFieldLabel.Position = [71 555 32 22];
            app.RestEditFieldLabel.Text = 'Rest';

            % Create RestEditField
            app.RestEditField = uieditfield(app.TrainingSettingsPanel, 'numeric');
            app.RestEditField.FontName = 'Avenir Next';
            app.RestEditField.FontSize = 14;
            app.RestEditField.FontColor = [0.8118 0.502 1];
            app.RestEditField.BackgroundColor = [0.149 0.149 0.149];
            app.RestEditField.Position = [118 555 100 22];

            % Create OffsetCheckBox
            app.OffsetCheckBox = uicheckbox(app.TrainingSettingsPanel);
            app.OffsetCheckBox.ValueChangedFcn = createCallbackFcn(app, @OffsetCheckBoxValueChanged, true);
            app.OffsetCheckBox.Enable = 'off';
            app.OffsetCheckBox.Text = 'Offset';
            app.OffsetCheckBox.FontName = 'Avenir Next';
            app.OffsetCheckBox.FontSize = 14;
            app.OffsetCheckBox.FontColor = [0.8118 0.502 1];
            app.OffsetCheckBox.Position = [48 521 61 22];

            % Create EditField_offset
            app.EditField_offset = uieditfield(app.TrainingSettingsPanel, 'numeric');
            app.EditField_offset.FontName = 'Avenir Next';
            app.EditField_offset.FontSize = 14;
            app.EditField_offset.FontColor = [0.8118 0.502 1];
            app.EditField_offset.BackgroundColor = [0.149 0.149 0.149];
            app.EditField_offset.Position = [118 521 100 22];

            % Create StartMVCButton
            app.StartMVCButton = uibutton(app.TrainingSettingsPanel, 'push');
            app.StartMVCButton.ButtonPushedFcn = createCallbackFcn(app, @StartMVCButtonPushed, true);
            app.StartMVCButton.BackgroundColor = [0.149 0.149 0.149];
            app.StartMVCButton.FontName = 'Avenir Next';
            app.StartMVCButton.FontSize = 14;
            app.StartMVCButton.FontColor = [0.8118 0.502 1];
            app.StartMVCButton.Enable = 'off';
            app.StartMVCButton.Position = [9 353 103 27];
            app.StartMVCButton.Text = 'Start MVC';

            % Create Gauge
            app.Gauge = uigauge(app.TrainingSettingsPanel, 'semicircular');
            app.Gauge.BackgroundColor = [0.149 0.149 0.149];
            app.Gauge.FontName = 'Avenir Next';
            app.Gauge.FontSize = 14;
            app.Gauge.FontColor = [0.9412 0.9412 0.9412];
            app.Gauge.Position = [10 396 207 112];

            % Create MVCTargetEditFieldLabel
            app.MVCTargetEditFieldLabel = uilabel(app.TrainingSettingsPanel);
            app.MVCTargetEditFieldLabel.HorizontalAlignment = 'right';
            app.MVCTargetEditFieldLabel.FontName = 'Avenir Next';
            app.MVCTargetEditFieldLabel.FontSize = 14;
            app.MVCTargetEditFieldLabel.FontColor = [0.5608 0.6196 0.851];
            app.MVCTargetEditFieldLabel.Position = [32 272 80 22];
            app.MVCTargetEditFieldLabel.Text = 'MVC Target';

            % Create MVCTargetEditField
            app.MVCTargetEditField = uieditfield(app.TrainingSettingsPanel, 'numeric');
            app.MVCTargetEditField.ValueChangedFcn = createCallbackFcn(app, @MVCTargetEditFieldValueChanged, true);
            app.MVCTargetEditField.FontName = 'Avenir Next';
            app.MVCTargetEditField.FontSize = 14;
            app.MVCTargetEditField.FontColor = [0.5608 0.6196 0.851];
            app.MVCTargetEditField.BackgroundColor = [0.149 0.149 0.149];
            app.MVCTargetEditField.Position = [117 272 102 22];

            % Create DurationtrainingEditFieldLabel
            app.DurationtrainingEditFieldLabel = uilabel(app.TrainingSettingsPanel);
            app.DurationtrainingEditFieldLabel.HorizontalAlignment = 'right';
            app.DurationtrainingEditFieldLabel.FontName = 'Avenir Next';
            app.DurationtrainingEditFieldLabel.FontSize = 14;
            app.DurationtrainingEditFieldLabel.FontColor = [0.5608 0.6196 0.851];
            app.DurationtrainingEditFieldLabel.Position = [1 247 113 22];
            app.DurationtrainingEditFieldLabel.Text = 'Duration training';

            % Create DurationtrainingEditField
            app.DurationtrainingEditField = uieditfield(app.TrainingSettingsPanel, 'numeric');
            app.DurationtrainingEditField.ValueChangedFcn = createCallbackFcn(app, @DurationtrainingEditFieldValueChanged, true);
            app.DurationtrainingEditField.FontName = 'Avenir Next';
            app.DurationtrainingEditField.FontSize = 14;
            app.DurationtrainingEditField.FontColor = [0.5608 0.6196 0.851];
            app.DurationtrainingEditField.BackgroundColor = [0.149 0.149 0.149];
            app.DurationtrainingEditField.Position = [117 246 102 22];

            % Create TrainingparametersLabel
            app.TrainingparametersLabel = uilabel(app.TrainingSettingsPanel);
            app.TrainingparametersLabel.HorizontalAlignment = 'center';
            app.TrainingparametersLabel.FontName = 'Avenir Next';
            app.TrainingparametersLabel.FontSize = 14;
            app.TrainingparametersLabel.FontWeight = 'bold';
            app.TrainingparametersLabel.FontColor = [0.9412 0.9412 0.9412];
            app.TrainingparametersLabel.Position = [48 306 141 22];
            app.TrainingparametersLabel.Text = 'Training parameters';

            % Create NbIterationsEditFieldLabel
            app.NbIterationsEditFieldLabel = uilabel(app.TrainingSettingsPanel);
            app.NbIterationsEditFieldLabel.HorizontalAlignment = 'right';
            app.NbIterationsEditFieldLabel.FontName = 'Avenir Next';
            app.NbIterationsEditFieldLabel.FontSize = 14;
            app.NbIterationsEditFieldLabel.FontColor = [0.3804 0.7804 0.749];
            app.NbIterationsEditFieldLabel.Position = [10 43 88 22];
            app.NbIterationsEditFieldLabel.Text = 'Nb Iterations';

            % Create NbIterationsEditField
            app.NbIterationsEditField = uieditfield(app.TrainingSettingsPanel, 'numeric');
            app.NbIterationsEditField.FontName = 'Avenir Next';
            app.NbIterationsEditField.FontSize = 14;
            app.NbIterationsEditField.FontColor = [0.3804 0.7804 0.749];
            app.NbIterationsEditField.BackgroundColor = [0.149 0.149 0.149];
            app.NbIterationsEditField.Position = [117 42 100 22];
            app.NbIterationsEditField.Value = 50;

            % Create StartButton
            app.StartButton = uibutton(app.TrainingSettingsPanel, 'push');
            app.StartButton.ButtonPushedFcn = createCallbackFcn(app, @StartButtonPushed, true);
            app.StartButton.BackgroundColor = [0.149 0.149 0.149];
            app.StartButton.FontName = 'Avenir Next';
            app.StartButton.FontSize = 14;
            app.StartButton.FontColor = [0.3804 0.7804 0.749];
            app.StartButton.Enable = 'off';
            app.StartButton.Position = [8 9 210 27];
            app.StartButton.Text = 'Start';

            % Create EditField_MVC
            app.EditField_MVC = uieditfield(app.TrainingSettingsPanel, 'text');
            app.EditField_MVC.FontName = 'Avenir Next';
            app.EditField_MVC.FontSize = 14;
            app.EditField_MVC.FontColor = [0.8118 0.502 1];
            app.EditField_MVC.BackgroundColor = [0.149 0.149 0.149];
            app.EditField_MVC.Position = [117 352 100 28];

            % Create SILthresholdEditFieldLabel
            app.SILthresholdEditFieldLabel = uilabel(app.TrainingSettingsPanel);
            app.SILthresholdEditFieldLabel.HorizontalAlignment = 'right';
            app.SILthresholdEditFieldLabel.FontName = 'Avenir Next';
            app.SILthresholdEditFieldLabel.FontSize = 14;
            app.SILthresholdEditFieldLabel.FontColor = [0.3804 0.7804 0.749];
            app.SILthresholdEditFieldLabel.Position = [10 103 88 22];
            app.SILthresholdEditFieldLabel.Text = 'SIL threshold';

            % Create SILthresholdEditField
            app.SILthresholdEditField = uieditfield(app.TrainingSettingsPanel, 'numeric');
            app.SILthresholdEditField.FontName = 'Avenir Next';
            app.SILthresholdEditField.FontSize = 14;
            app.SILthresholdEditField.FontColor = [0.3804 0.7804 0.749];
            app.SILthresholdEditField.BackgroundColor = [0.149 0.149 0.149];
            app.SILthresholdEditField.Position = [117 102 100 22];
            app.SILthresholdEditField.Value = 0.9;

            % Create COVthresholdEditFieldLabel
            app.COVthresholdEditFieldLabel = uilabel(app.TrainingSettingsPanel);
            app.COVthresholdEditFieldLabel.HorizontalAlignment = 'right';
            app.COVthresholdEditFieldLabel.FontName = 'Avenir Next';
            app.COVthresholdEditFieldLabel.FontSize = 14;
            app.COVthresholdEditFieldLabel.FontColor = [0.3804 0.7804 0.749];
            app.COVthresholdEditFieldLabel.Position = [-2 74 100 22];
            app.COVthresholdEditFieldLabel.Text = 'COV threshold';

            % Create COVthresholdEditField
            app.COVthresholdEditField = uieditfield(app.TrainingSettingsPanel, 'numeric');
            app.COVthresholdEditField.FontName = 'Avenir Next';
            app.COVthresholdEditField.FontSize = 14;
            app.COVthresholdEditField.FontColor = [0.3804 0.7804 0.749];
            app.COVthresholdEditField.BackgroundColor = [0.149 0.149 0.149];
            app.COVthresholdEditField.Position = [117 73 100 22];
            app.COVthresholdEditField.Value = 0.5;

            % Create RecordingSettingsPanel
            app.RecordingSettingsPanel = uipanel(app.UIFigure);
            app.RecordingSettingsPanel.ForegroundColor = [0.9412 0.9412 0.9412];
            app.RecordingSettingsPanel.Title = 'Recording Settings';
            app.RecordingSettingsPanel.BackgroundColor = [0.149 0.149 0.149];
            app.RecordingSettingsPanel.FontName = 'Avenir Next';
            app.RecordingSettingsPanel.FontWeight = 'bold';
            app.RecordingSettingsPanel.FontSize = 14;
            app.RecordingSettingsPanel.Position = [2 1 225 665];

            % Create Grid1CheckBox
            app.Grid1CheckBox = uicheckbox(app.RecordingSettingsPanel);
            app.Grid1CheckBox.ValueChangedFcn = createCallbackFcn(app, @Grid1CheckBoxValueChanged, true);
            app.Grid1CheckBox.Text = 'Grid #1';
            app.Grid1CheckBox.FontName = 'Avenir Next';
            app.Grid1CheckBox.FontSize = 14;
            app.Grid1CheckBox.FontColor = [0.8118 0.502 1];
            app.Grid1CheckBox.Position = [11 576 90 22];

            % Create Grid2CheckBox
            app.Grid2CheckBox = uicheckbox(app.RecordingSettingsPanel);
            app.Grid2CheckBox.ValueChangedFcn = createCallbackFcn(app, @Grid2CheckBoxValueChanged, true);
            app.Grid2CheckBox.Enable = 'off';
            app.Grid2CheckBox.Text = 'Grid #2';
            app.Grid2CheckBox.FontName = 'Avenir Next';
            app.Grid2CheckBox.FontSize = 14;
            app.Grid2CheckBox.FontColor = [0.8118 0.502 1];
            app.Grid2CheckBox.Position = [11 550 89 22];

            % Create Grid3CheckBox
            app.Grid3CheckBox = uicheckbox(app.RecordingSettingsPanel);
            app.Grid3CheckBox.ValueChangedFcn = createCallbackFcn(app, @Grid3CheckBoxValueChanged, true);
            app.Grid3CheckBox.Enable = 'off';
            app.Grid3CheckBox.Text = 'Grid #3';
            app.Grid3CheckBox.FontName = 'Avenir Next';
            app.Grid3CheckBox.FontSize = 14;
            app.Grid3CheckBox.FontColor = [0.8118 0.502 1];
            app.Grid3CheckBox.Position = [11 525 89 22];

            % Create Grid4CheckBox
            app.Grid4CheckBox = uicheckbox(app.RecordingSettingsPanel);
            app.Grid4CheckBox.ValueChangedFcn = createCallbackFcn(app, @Grid4CheckBoxValueChanged, true);
            app.Grid4CheckBox.Enable = 'off';
            app.Grid4CheckBox.Text = 'Grid #4';
            app.Grid4CheckBox.FontName = 'Avenir Next';
            app.Grid4CheckBox.FontSize = 14;
            app.Grid4CheckBox.FontColor = [0.8118 0.502 1];
            app.Grid4CheckBox.Position = [11 500 88 22];

            % Create EditField_1
            app.EditField_1 = uieditfield(app.RecordingSettingsPanel, 'text');
            app.EditField_1.ValueChangedFcn = createCallbackFcn(app, @EditField_1ValueChanged, true);
            app.EditField_1.Editable = 'off';
            app.EditField_1.FontName = 'Avenir Next';
            app.EditField_1.FontSize = 14;
            app.EditField_1.FontColor = [0.8118 0.502 1];
            app.EditField_1.BackgroundColor = [0.149 0.149 0.149];
            app.EditField_1.Position = [95 576 116 22];

            % Create EditField_2
            app.EditField_2 = uieditfield(app.RecordingSettingsPanel, 'text');
            app.EditField_2.ValueChangedFcn = createCallbackFcn(app, @EditField_2ValueChanged, true);
            app.EditField_2.Editable = 'off';
            app.EditField_2.FontName = 'Avenir Next';
            app.EditField_2.FontSize = 14;
            app.EditField_2.FontColor = [0.8118 0.502 1];
            app.EditField_2.BackgroundColor = [0.149 0.149 0.149];
            app.EditField_2.Position = [95 550 116 22];

            % Create EditField_3
            app.EditField_3 = uieditfield(app.RecordingSettingsPanel, 'text');
            app.EditField_3.ValueChangedFcn = createCallbackFcn(app, @EditField_3ValueChanged, true);
            app.EditField_3.Editable = 'off';
            app.EditField_3.FontName = 'Avenir Next';
            app.EditField_3.FontSize = 14;
            app.EditField_3.FontColor = [0.8118 0.502 1];
            app.EditField_3.BackgroundColor = [0.149 0.149 0.149];
            app.EditField_3.Position = [95 525 116 22];

            % Create EditField_4
            app.EditField_4 = uieditfield(app.RecordingSettingsPanel, 'text');
            app.EditField_4.ValueChangedFcn = createCallbackFcn(app, @EditField_4ValueChanged, true);
            app.EditField_4.Editable = 'off';
            app.EditField_4.FontName = 'Avenir Next';
            app.EditField_4.FontSize = 14;
            app.EditField_4.FontColor = [0.8118 0.502 1];
            app.EditField_4.BackgroundColor = [0.149 0.149 0.149];
            app.EditField_4.Position = [95 500 116 22];

            % Create ChannelsLabel
            app.ChannelsLabel = uilabel(app.RecordingSettingsPanel);
            app.ChannelsLabel.HorizontalAlignment = 'center';
            app.ChannelsLabel.FontName = 'Avenir Next';
            app.ChannelsLabel.FontSize = 14;
            app.ChannelsLabel.FontColor = [0.9412 0.9412 0.9412];
            app.ChannelsLabel.Position = [14 607 65 22];
            app.ChannelsLabel.Text = 'Channels';

            % Create MusclenamesLabel
            app.MusclenamesLabel = uilabel(app.RecordingSettingsPanel);
            app.MusclenamesLabel.HorizontalAlignment = 'center';
            app.MusclenamesLabel.FontName = 'Avenir Next';
            app.MusclenamesLabel.FontSize = 14;
            app.MusclenamesLabel.FontColor = [0.9412 0.9412 0.9412];
            app.MusclenamesLabel.Position = [107 607 96 22];
            app.MusclenamesLabel.Text = 'Muscle names';

            % Create FrequencyDropDownLabel
            app.FrequencyDropDownLabel = uilabel(app.RecordingSettingsPanel);
            app.FrequencyDropDownLabel.HorizontalAlignment = 'right';
            app.FrequencyDropDownLabel.FontName = 'Avenir Next';
            app.FrequencyDropDownLabel.FontSize = 14;
            app.FrequencyDropDownLabel.FontColor = [0.8118 0.502 1];
            app.FrequencyDropDownLabel.Position = [7 460 72 22];
            app.FrequencyDropDownLabel.Text = 'Frequency';

            % Create FrequencyDropDown
            app.FrequencyDropDown = uidropdown(app.RecordingSettingsPanel);
            app.FrequencyDropDown.Items = {'512', '2048', '5120', '10240'};
            app.FrequencyDropDown.FontName = 'Avenir Next';
            app.FrequencyDropDown.FontSize = 14;
            app.FrequencyDropDown.FontColor = [0.8118 0.502 1];
            app.FrequencyDropDown.BackgroundColor = [0.149 0.149 0.149];
            app.FrequencyDropDown.Position = [94 458 116 25];
            app.FrequencyDropDown.Value = '10240';

            % Create StartVisualizationCheckEMGButton
            app.StartVisualizationCheckEMGButton = uibutton(app.RecordingSettingsPanel, 'push');
            app.StartVisualizationCheckEMGButton.ButtonPushedFcn = createCallbackFcn(app, @StartVisualizationCheckEMGButtonPushed, true);
            app.StartVisualizationCheckEMGButton.WordWrap = 'on';
            app.StartVisualizationCheckEMGButton.BackgroundColor = [0.149 0.149 0.149];
            app.StartVisualizationCheckEMGButton.FontName = 'Avenir Next';
            app.StartVisualizationCheckEMGButton.FontSize = 14;
            app.StartVisualizationCheckEMGButton.FontColor = [0.3804 0.7804 0.749];
            app.StartVisualizationCheckEMGButton.Enable = 'off';
            app.StartVisualizationCheckEMGButton.Position = [7 70 210 55];
            app.StartVisualizationCheckEMGButton.Text = 'Start Visualization -  Check EMG';

            % Create SavingsettingsLabel
            app.SavingsettingsLabel = uilabel(app.RecordingSettingsPanel);
            app.SavingsettingsLabel.BackgroundColor = [0.149 0.149 0.149];
            app.SavingsettingsLabel.HorizontalAlignment = 'center';
            app.SavingsettingsLabel.FontName = 'Avenir Next';
            app.SavingsettingsLabel.FontSize = 14;
            app.SavingsettingsLabel.FontWeight = 'bold';
            app.SavingsettingsLabel.FontColor = [0.9412 0.9412 0.9412];
            app.SavingsettingsLabel.Position = [59 273 108 22];
            app.SavingsettingsLabel.Text = 'Saving settings';

            % Create EditField_saving
            app.EditField_saving = uieditfield(app.RecordingSettingsPanel, 'text');
            app.EditField_saving.Editable = 'off';
            app.EditField_saving.FontName = 'Avenir Next';
            app.EditField_saving.FontSize = 14;
            app.EditField_saving.FontColor = [0.8118 0.502 1];
            app.EditField_saving.BackgroundColor = [0.149 0.149 0.149];
            app.EditField_saving.Position = [6 238 92 22];
            app.EditField_saving.Value = 'Folder name';

            % Create SelectfolderButton
            app.SelectfolderButton = uibutton(app.RecordingSettingsPanel, 'push');
            app.SelectfolderButton.ButtonPushedFcn = createCallbackFcn(app, @SelectfolderButtonPushed, true);
            app.SelectfolderButton.BackgroundColor = [0.149 0.149 0.149];
            app.SelectfolderButton.FontName = 'Avenir Next';
            app.SelectfolderButton.FontSize = 14;
            app.SelectfolderButton.FontColor = [0.8118 0.502 1];
            app.SelectfolderButton.Position = [104 236 113 26];
            app.SelectfolderButton.Text = 'Select folder';

            % Create StartVisualizationChecknoiseButton
            app.StartVisualizationChecknoiseButton = uibutton(app.RecordingSettingsPanel, 'push');
            app.StartVisualizationChecknoiseButton.ButtonPushedFcn = createCallbackFcn(app, @StartVisualizationChecknoiseButtonPushed, true);
            app.StartVisualizationChecknoiseButton.WordWrap = 'on';
            app.StartVisualizationChecknoiseButton.BackgroundColor = [0.149 0.149 0.149];
            app.StartVisualizationChecknoiseButton.FontName = 'Avenir Next';
            app.StartVisualizationChecknoiseButton.FontSize = 14;
            app.StartVisualizationChecknoiseButton.FontColor = [0.5608 0.6196 0.851];
            app.StartVisualizationChecknoiseButton.Enable = 'off';
            app.StartVisualizationChecknoiseButton.Position = [7 139 210 55];
            app.StartVisualizationChecknoiseButton.Text = 'Start Visualization -  Check noise';

            % Create HPfilterDropDownLabel
            app.HPfilterDropDownLabel = uilabel(app.RecordingSettingsPanel);
            app.HPfilterDropDownLabel.HorizontalAlignment = 'right';
            app.HPfilterDropDownLabel.FontName = 'Avenir Next';
            app.HPfilterDropDownLabel.FontSize = 14;
            app.HPfilterDropDownLabel.FontColor = [0.8118 0.502 1];
            app.HPfilterDropDownLabel.Position = [24 421 56 22];
            app.HPfilterDropDownLabel.Text = 'HP filter';

            % Create HPfilterDropDown
            app.HPfilterDropDown = uidropdown(app.RecordingSettingsPanel);
            app.HPfilterDropDown.Items = {'200', '100', '10', '0.3'};
            app.HPfilterDropDown.FontName = 'Avenir Next';
            app.HPfilterDropDown.FontSize = 14;
            app.HPfilterDropDown.FontColor = [0.8118 0.502 1];
            app.HPfilterDropDown.BackgroundColor = [0.149 0.149 0.149];
            app.HPfilterDropDown.Position = [95 419 116 25];
            app.HPfilterDropDown.Value = '10';

            % Create LPfilterDropDownLabel
            app.LPfilterDropDownLabel = uilabel(app.RecordingSettingsPanel);
            app.LPfilterDropDownLabel.HorizontalAlignment = 'right';
            app.LPfilterDropDownLabel.FontName = 'Avenir Next';
            app.LPfilterDropDownLabel.FontSize = 14;
            app.LPfilterDropDownLabel.FontColor = [0.8118 0.502 1];
            app.LPfilterDropDownLabel.Position = [27 383 53 22];
            app.LPfilterDropDownLabel.Text = 'LP filter';

            % Create LPfilterDropDown
            app.LPfilterDropDown = uidropdown(app.RecordingSettingsPanel);
            app.LPfilterDropDown.Items = {'4400', '900', '500', '130'};
            app.LPfilterDropDown.FontName = 'Avenir Next';
            app.LPfilterDropDown.FontSize = 14;
            app.LPfilterDropDown.FontColor = [0.8118 0.502 1];
            app.LPfilterDropDown.BackgroundColor = [0.149 0.149 0.149];
            app.LPfilterDropDown.Position = [95 381 116 25];
            app.LPfilterDropDown.Value = '500';

            % Create RefreshrateDropDownLabel
            app.RefreshrateDropDownLabel = uilabel(app.RecordingSettingsPanel);
            app.RefreshrateDropDownLabel.HorizontalAlignment = 'right';
            app.RefreshrateDropDownLabel.FontName = 'Avenir Next';
            app.RefreshrateDropDownLabel.FontSize = 14;
            app.RefreshrateDropDownLabel.FontColor = [0.8118 0.502 1];
            app.RefreshrateDropDownLabel.Position = [1 345 81 22];
            app.RefreshrateDropDownLabel.Text = 'Refresh rate';

            % Create RefreshrateDropDown
            app.RefreshrateDropDown = uidropdown(app.RecordingSettingsPanel);
            app.RefreshrateDropDown.Items = {'1', '2', '4', '8'};
            app.RefreshrateDropDown.FontName = 'Avenir Next';
            app.RefreshrateDropDown.FontSize = 14;
            app.RefreshrateDropDown.FontColor = [0.8118 0.502 1];
            app.RefreshrateDropDown.BackgroundColor = [0.149 0.149 0.149];
            app.RefreshrateDropDown.Position = [97 343 116 25];
            app.RefreshrateDropDown.Value = '8';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = ISpin_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end