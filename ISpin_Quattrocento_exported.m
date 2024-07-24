classdef ISpin_Quattrocento_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        tabs                            matlab.ui.control.DropDown
        RecordingSettingsPanel          matlab.ui.container.Panel
        SetconfigurationButton          matlab.ui.control.Button
        AcquisitionBoardDropDown        matlab.ui.control.DropDown
        AcquisitionBoardDropDownLabel   matlab.ui.control.Label
        RefreshrateDropDown             matlab.ui.control.DropDown
        RefreshrateDropDownLabel        matlab.ui.control.Label
        LPfilterDropDown                matlab.ui.control.DropDown
        LPfilterDropDownLabel           matlab.ui.control.Label
        HPfilterDropDown                matlab.ui.control.DropDown
        HPfilterDropDownLabel           matlab.ui.control.Label
        StartVisualisationChecknoiseButton  matlab.ui.control.Button
        SelectfolderButton              matlab.ui.control.Button
        EditField_saving                matlab.ui.control.EditField
        StartVisualisationCheckEMGButton  matlab.ui.control.Button
        FrequencyDropDown               matlab.ui.control.DropDown
        FrequencyDropDownLabel          matlab.ui.control.Label
        TrainingSettingsPanel           matlab.ui.container.Panel
        SinewaveampEditField            matlab.ui.control.NumericEditField
        SinewavefreqEditFieldLabel_2    matlab.ui.control.Label
        SinewavefreqEditField           matlab.ui.control.NumericEditField
        SinewavefreqEditFieldLabel      matlab.ui.control.Label
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
        SinewaveampEditField_2          matlab.ui.control.NumericEditField
        SinewaveampEditField_2Label     matlab.ui.control.Label
        SinewavefreqEditField_2         matlab.ui.control.NumericEditField
        SinewavefreqEditField_2Label    matlab.ui.control.Label
        SmoothingEditField              matlab.ui.control.NumericEditField
        SmoothingEditFieldLabel         matlab.ui.control.Label
        ImportMUfiltersButton           matlab.ui.control.Button
        QualityofthedecompositionLabel  matlab.ui.control.Label
        DisplaythePulsetrainsButton     matlab.ui.control.Button
        StartRasterPlotButton           matlab.ui.control.Button
        TypeofbiofeedbacksLabel         matlab.ui.control.Label
        ForceparametersLabel            matlab.ui.control.Label
        StartDRtrackingButton           matlab.ui.control.Button
        StartQuadrantButton             matlab.ui.control.Button
        NbiterationsEditField           matlab.ui.control.NumericEditField
        DurationrestEditField           matlab.ui.control.NumericEditField
        DurationrestEditFieldLabel      matlab.ui.control.Label
        NbiterationsEditFieldLabel      matlab.ui.control.Label
        DurationplateauEditField        matlab.ui.control.NumericEditField
        DurationplateauEditFieldLabel   matlab.ui.control.Label
        DurationrampEditField           matlab.ui.control.NumericEditField
        DurationrampEditFieldLabel      matlab.ui.control.Label
        MVCtargetEditField              matlab.ui.control.NumericEditField
        MVCtargetEditFieldLabel         matlab.ui.control.Label
        UIAxes2                         matlab.ui.control.UIAxes
        VisualisationPanel              matlab.ui.container.Panel
        EditField_title                 matlab.ui.control.EditField
        InitialisetheAcquisitionButton  matlab.ui.control.Button
        StoptheAcquisitionButton        matlab.ui.control.Button
        ARRAYDISPLAYEDDropDownLabel     matlab.ui.control.Label
        ARRAYDISPLAYEDDropDown          matlab.ui.control.DropDown
        UIAxes3                         matlab.ui.control.UIAxes
        ManualeditionPanel              matlab.ui.container.Panel
        EditField_5                     matlab.ui.control.EditField
        UpdateMUfilterButton            matlab.ui.control.Button
        ScrollrightButton               matlab.ui.control.Button
        ZoomoutButton                   matlab.ui.control.Button
        ZoominButton                    matlab.ui.control.Button
        ScrollleftButton                matlab.ui.control.Button
        DeleteDRButton                  matlab.ui.control.Button
        DeletespikesButton              matlab.ui.control.Button
        AddspikesButton                 matlab.ui.control.Button
        FlagMUfordeletionButton         matlab.ui.control.Button
        RemoveoutliersButton            matlab.ui.control.Button
        MUDISPLAYEDDropDownLabel        matlab.ui.control.Label
        MUDISPLAYEDDropDown             matlab.ui.control.DropDown
        UIAxesDR                        matlab.ui.control.UIAxes
        UIAxesSpiketrain                matlab.ui.control.UIAxes
        VisualisationBiofeedback        matlab.ui.container.Panel
        InitialisetheaquisitionButton   matlab.ui.control.Button
        YaxisdisplayedDropDownLabel     matlab.ui.control.Label
        YaxisdisplayedDropDown          matlab.ui.control.DropDown
        StoptheacquisitionButton        matlab.ui.control.Button
        XaxisdisplayedDropDownLabel     matlab.ui.control.Label
        XaxisdisplayedDropDown          matlab.ui.control.DropDown
        UIAxes5                         matlab.ui.control.UIAxes
        UIAxes4                         matlab.ui.control.UIAxes
    end

    
    properties (Access = private)
        Pathname            % Folder where files will be saved      
        ComParameters       % Structure to save the parameters to interface with the quattrocento
        RecordParameters    % Structure to save the recording parameters (masks, muscles, MVC, offset)
        DecompParameters    % Structure to save the parameters of the decomposition (MU filters, extension matrix, centroids)
        OnlineParameters    % Structure to save the parameters of the online feedback

        file                % Structure with temp data

        filename2           % File to edit
        pathname2           % Folder where edited data will be saved
        MUedition           % Structure to save the data for MU edition accross contractions and intensities
        graphstart          % first time point of the graph for edition
        graphend            % last time point of the graph for edition
        roi                 % Region of interest for edition
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Value changed function: tabs
        function tabsValueChanged(app, event)
            if isequal(app.tabs.Value, 'RECORDING')
                app.BiofeedbackSettingsPanel.Visible = 'off';
                app.EditionPanel.Visible = 'off';
                app.ManualeditionPanel.Visible = 'off';
                app.TrainingSettingsPanel.Visible = 'off';
                app.RecordingSettingsPanel.Visible = 'on';
                app.VisualisationPanel.Visible = 'on';
                app.VisualisationBiofeedback.Visible = 'off';
            elseif isequal(app.tabs.Value, 'TRAINING')
                app.BiofeedbackSettingsPanel.Visible = 'off';
                app.EditionPanel.Visible = 'off';
                app.ManualeditionPanel.Visible = 'off';
                app.TrainingSettingsPanel.Visible = 'on';
                app.RecordingSettingsPanel.Visible = 'off';
                app.VisualisationPanel.Visible = 'on';
                app.VisualisationBiofeedback.Visible = 'off';
            elseif isequal(app.tabs.Value, 'MANUAL EDITING')
                app.BiofeedbackSettingsPanel.Visible = 'off';
                app.EditionPanel.Visible = 'on';
                app.ManualeditionPanel.Visible = 'on';
                app.TrainingSettingsPanel.Visible = 'off';
                app.RecordingSettingsPanel.Visible = 'off';
                app.VisualisationPanel.Visible = 'off';
                app.VisualisationBiofeedback.Visible = 'off';
            else
                app.BiofeedbackSettingsPanel.Visible = 'on';
                app.EditionPanel.Visible = 'off';
                app.ManualeditionPanel.Visible = 'off';
                app.TrainingSettingsPanel.Visible = 'off';
                app.RecordingSettingsPanel.Visible = 'off';
                app.VisualisationPanel.Visible = 'off';
                app.VisualisationBiofeedback.Visible = 'on';
            end    
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

        % Value changed function: AcquisitionBoardDropDown
        function AcquisitionBoardDropDownValueChanged(app, event)
            app.ComParameters.config = Quattrodlg;
            movegui(app.ComParameters.config.UIFigure, 'center')
            app.ComParameters.config.pathname.Value = [app.EditField_saving.Value 'config.mat'];
            app.FrequencyDropDown.Items = {'2048'; '5120'; '10240'};
            app.LPfilterDropDown.Enable = 'on';
            app.LPfilterDropDown.Items = {'500'; '900'; '4400'};
            app.HPfilterDropDown.Enable = 'on';
            app.HPfilterDropDown.Items = {'10'; '100'; '200'};
            signal.fsamp = str2double(app.FrequencyDropDown.Value);
            save(app.ComParameters.config.pathname.Value, 'signal');
            app.ComParameters.config.UIFigure.Visible = 'off';
        end

        % Button pushed function: SetconfigurationButton
        function SetconfigurationButtonPushed(app, event)
                app.ComParameters.config.UIFigure.Visible = 'on';
                app.StartVisualisationChecknoiseButton.Enable = 'on';
                app.StartVisualisationCheckEMGButton.Enable = 'on';
                app.InitialisetheAcquisitionButton.Enable = 'on';
        end

        % Button pushed function: InitialisetheAcquisitionButton
        function InitialisetheAcquisitionButtonPushed(app, event)
            app.file = load([app.EditField_saving.Value 'config.mat']);
            
            app.ComParameters.fsamp = str2double(app.FrequencyDropDown.Value);
            app.ComParameters.nsamp = floor(app.ComParameters.fsamp/str2double(app.RefreshrateDropDown.Value));
            app.ComParameters.highpass = str2double(app.HPfilterDropDown.Value);
            app.ComParameters.lowpass = str2double(app.LPfilterDropDown.Value);
            [app.ComParameters.nchannel, app.ComParameters.gridchannels] = getgridconfigQuattro(app.file.signal.ports, app.file.signal.adapter);
            app.ComParameters.ConfString = bitseqquattro(app.ComParameters.fsamp, app.ComParameters.nchannel, app.ComParameters.highpass, app.ComParameters.lowpass);
            app.ComParameters.tcpSocket = tcpclient('169.254.1.10', 23456);
            app.ComParameters.tcpSocket.InputBufferSize = 2 * app.ComParameters.nchannel * app.ComParameters.fsamp;

            grids = unique(app.ComParameters.gridchannels);
            grids = setdiff(grids, [0 7]);
            app.RecordParameters.ngrid = length(grids);
            app.RecordParameters.Muscles = app.file.signal.muscle;
            app.ARRAYDISPLAYEDDropDown.Items = {};
            for i = 1:app.RecordParameters.ngrid
                app.ARRAYDISPLAYEDDropDown.Items = horzcat(app.ARRAYDISPLAYEDDropDown.Items, {num2str(grids(i))});
            end

            app.ARRAYDISPLAYEDDropDown.Enable = 'on';
            app.InitialisetheAcquisitionButton.Enable = 'off';
            app.StoptheAcquisitionButton.Enable = 'on';
            app.StartVisualisationCheckEMGButton.Enable = 'on';
            app.StartVisualisationChecknoiseButton.Enable = 'on';
            app.StartButton.Enable = 'on';
            app.StartMVCButton.Enable = 'on';
            app.OffsetCheckBox.Enable = 'on';
        end

        % Button pushed function: StoptheacquisitionButton
        function StoptheacquisitionButtonPushed(app, event)
            app.ComParameters.ConfString(1) = bin2dec('10000000'); % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);            
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8');
            fclose(app.ComParameters.tcpSocket); % Close the communication
            flush(app.ComParameters.tcpSocket)
            app.InitialisetheaquisitionButton.Enable = 'on';
            app.StoptheacquisitionButton.Enable = 'off';
            app.StartQuadrantButton.Enable = 'off';
            app.StartRasterPlotButton.Enable = 'off';
            app.StartDRtrackingButton.Enable = 'off';        
        end

        % Button pushed function: StartVisualisationChecknoiseButton
        function StartVisualisationChecknoiseButtonPushed(app, event)
            
            % Set the properties of the axes for data viz
            app.UIAxes3.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes3.YColor = [0.9412 0.9412 0.9412];
            xlabel(app.UIAxes3,'Time (s)');
            ylabel(app.UIAxes3,'Channels');
            app.UIAxes3.XLim = [0 5];
            app.UIAxes3.YLim = [0 66];
            app.UIAxes3.LineWidth = 1;
            app.UIAxes3.ColorOrder = cool(64);

            % record 15 seconds of data to assess the baseline noise
            nwin = floor((15*str2double(app.FrequencyDropDown.Value))/app.ComParameters.nsamp);
            nwinbuffmax = floor(str2double(app.FrequencyDropDown.Value)*5/app.ComParameters.nsamp);
            i = 1;
            nwinbuff = 1;

            % Pre allocate empty matrices
            time = linspace(0,5,5*str2double(app.FrequencyDropDown.Value));
            buffer = zeros(str2double(app.FrequencyDropDown.Value)*5,64);
            EMG = zeros(sum(app.ComParameters.gridchannels(:) < 7 & app.ComParameters.gridchannels(:) > 0),nwin*app.ComParameters.nsamp);     
            offset = ones(64,app.ComParameters.nsamp).* (1:1:64)';
            plot(app.UIAxes3, time, buffer, 'Color', [0.9412 0.9412 0.9412]);
            line(app.UIAxes3, [time(nwinbuff*app.ComParameters.nsamp) time(nwinbuff*app.ComParameters.nsamp)], [0 64], 'LineWidth', 1, 'Color', [0.81 0.50 1.00]);

            % Set the connection with the Quattrocento
            app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) + 1; % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);

            fopen(app.ComParameters.tcpSocket);
            set(app.ComParameters.tcpSocket, 'ByteOrder', 'little-endian');
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8'); % Send the configuration to quattrocento
            
            while i <= nwin
                data = fread(app.ComParameters.tcpSocket, [app.ComParameters.nchannel, app.ComParameters.nsamp], 'int16');
                EMG(:,(i-1)*app.ComParameters.nsamp+1:i*app.ComParameters.nsamp) = data(app.ComParameters.gridchannels < 7 & app.ComParameters.gridchannels > 0, :);
                buffer((nwinbuff-1)*app.ComParameters.nsamp+1:nwinbuff*app.ComParameters.nsamp,1:sum(app.ComParameters.gridchannels(:)==str2double(app.ARRAYDISPLAYEDDropDown.Value))) = (data(app.ComParameters.gridchannels==str2double(app.ARRAYDISPLAYEDDropDown.Value),:) * 0.0005 + offset)';
               
                plot(app.UIAxes3, time, buffer);
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
            Noisecheck = zeros(size(EMG,1),1);
            for j = 1:size(EMG,1)
                Noisecheck(j) = rms(EMG(j,str2double(app.FrequencyDropDown.Value):end-str2double(app.FrequencyDropDown.Value))/1000);
            end
            bar(app.UIAxes3, Noisecheck)
            app.UIAxes3.XLim = [0 size(EMG,1)];
            app.UIAxes3.YLim = [0 max(Noisecheck)];
            xlabel(app.UIAxes3,'Channels');
            ylabel(app.UIAxes3,'RMS amplitude');
            drawnow
            
            % Update the UI for the next acquisition
            app.InitialisetheAcquisitionButton.Enable = 'on';
            app.StoptheAcquisitionButton.Enable = 'off';
            app.StartVisualisationCheckEMGButton.Enable = 'off';
            app.StartVisualisationChecknoiseButton.Enable = 'off';
            app.StartButton.Enable = 'off';
            app.StartMVCButton.Enable = 'off';
            app.OffsetCheckBox.Enable = 'off';

        end

        % Button pushed function: StartVisualisationCheckEMGButton
        function StartVisualisationCheckEMGButtonPushed(app, event)
            
            % Set the properties of the axes for data viz
            app.UIAxes3.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes3.YColor = [0.9412 0.9412 0.9412];
            xlabel(app.UIAxes3,'Time (s)');
            ylabel(app.UIAxes3,'Channels');
            app.UIAxes3.XLim = [0 5];
            app.UIAxes3.YLim = [0 66];
            app.UIAxes3.LineWidth = 1;
            app.UIAxes3.ColorOrder = cool(64);

            % record 30 seconds of data to assess the quality of the EMG
            % signals and remove noisy channels
            nwin = floor((30*str2double(app.FrequencyDropDown.Value))/app.ComParameters.nsamp);
            nwinbuffmax = floor(str2double(app.FrequencyDropDown.Value)*5/app.ComParameters.nsamp);   
            i = 1;
            nwinbuff = 1;

            % Pre allocate empty matrices
            time = linspace(0,5,5*str2double(app.FrequencyDropDown.Value));
            buffer = zeros(str2double(app.FrequencyDropDown.Value)*5,64);
            EMG = zeros(sum(app.ComParameters.gridchannels(:) < 7 & app.ComParameters.gridchannels(:) > 0),nwin*app.ComParameters.nsamp);     
            offset = ones(64,app.ComParameters.nsamp).* (1:1:64)';
            plot(app.UIAxes3, time, buffer);
            line(app.UIAxes3, [time(nwinbuff*app.ComParameters.nsamp) time(nwinbuff*app.ComParameters.nsamp)], [0 64], 'LineWidth', 1, 'Color', [0.81 0.50 1.00]);

            % Set the connection with the Quattrocento
            app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) + 1; % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);
            fopen(app.ComParameters.tcpSocket);
            set(app.ComParameters.tcpSocket, 'ByteOrder', 'little-endian');
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8'); % Send the configuration to quattrocento
            
            while i <= nwin
                data = fread(app.ComParameters.tcpSocket, [app.ComParameters.nchannel, app.ComParameters.nsamp], 'int16');
                EMG(:,(i-1)*app.ComParameters.nsamp+1:i*app.ComParameters.nsamp) = data(app.ComParameters.gridchannels < 7 & app.ComParameters.gridchannels > 0, :);
                buffer((nwinbuff-1)*app.ComParameters.nsamp+1:nwinbuff*app.ComParameters.nsamp,1:sum(app.ComParameters.gridchannels(:)==str2double(app.ARRAYDISPLAYEDDropDown.Value))) = (data(app.ComParameters.gridchannels==str2double(app.ARRAYDISPLAYEDDropDown.Value),:) * 0.0005 + offset)';
                                 
                plot(app.UIAxes3, time, buffer);
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
            [app.RecordParameters.coordinates, app.RecordParameters.IED, app.RecordParameters.DiscardChannels, app.RecordParameters.emgtype] = formatsignalHDEMG(EMG, app.file.signal.gridname, str2double(app.FrequencyDropDown.Value), 1);
            
            % Save the file and update the UI for the next acquisition
            DisChannels = app.RecordParameters.DiscardChannels;
            Musclename = app.RecordParameters.Muscles;
            save([app.EditField_saving.Value 'EMGChecking ' replace(datestr(datetime('now')),':','_') '.mat'],'EMG', 'DisChannels', 'Musclename');
           
            % Update the UI for the next acquisition
            app.InitialisetheAcquisitionButton.Enable = 'on';
            app.StoptheAcquisitionButton.Enable = 'off';
            app.StartVisualisationCheckEMGButton.Enable = 'off';
            app.StartVisualisationChecknoiseButton.Enable = 'off';
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
                forceidx = find(app.ComParameters.gridchannels == 7, 1, 'First');    
                % Set the connection with the Quattrocento
                app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) + 1; % Update the first byte that start the data transer
                app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);
                fopen(app.ComParameters.tcpSocket);
                set(app.ComParameters.tcpSocket, 'ByteOrder', 'little-endian');
                fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8'); % Send the configuration to quattrocento
                while i <= nwin
                    data = fread(app.ComParameters.tcpSocket, [app.ComParameters.nchannel, app.ComParameters.nsamp], 'int16');
                    force((i-1)*app.ComParameters.nsamp+1:i*app.ComParameters.nsamp) = data(forceidx, :);                    
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
            app.InitialisetheAcquisitionButton.Enable = 'on';
            app.StoptheAcquisitionButton.Enable = 'off';
            app.StartVisualisationCheckEMGButton.Enable = 'off';
            app.StartVisualisationChecknoiseButton.Enable = 'off';
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
            EMG = zeros(sum(app.ComParameters.gridchannels(:) < 7 & app.ComParameters.gridchannels(:) > 0),trialength);
            Force = zeros(1,trialength);
            forceidx = find(app.ComParameters.gridchannels == 7, 1, 'First');    

            % Set the connection with the Quattrocento
            app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) + 1; % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);
            fopen(app.ComParameters.tcpSocket);
            set(app.ComParameters.tcpSocket, 'ByteOrder', 'little-endian');
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8');
            while i <= nwin
                data = fread(app.ComParameters.tcpSocket, [app.ComParameters.nchannel, app.ComParameters.nsamp], 'int16');
                EMG(:,(i-1)*app.ComParameters.nsamp+1:i*app.ComParameters.nsamp) = data(app.ComParameters.gridchannels < 7 & app.ComParameters.gridchannels > 0, :);
                Force((i-1)*app.ComParameters.nsamp+1:i*app.ComParameters.nsamp) = (data(forceidx,:) - app.RecordParameters.offsetforce);
                                
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
            app.InitialisetheAcquisitionButton.Enable = 'on';
            app.StoptheAcquisitionButton.Enable = 'off';
            app.StartVisualisationCheckEMGButton.Enable = 'off';
            app.StartVisualisationChecknoiseButton.Enable = 'off';
            app.StartButton.Enable = 'off';
            app.StartMVCButton.Enable = 'off';
            app.OffsetCheckBox.Enable = 'off';
        end

        % Value changed function: DurationtrainingEditField
        function DurationtrainingEditFieldValueChanged(app, event)
            app.DecompParameters.durationtraining = app.DurationtrainingEditField.Value * str2double(app.FrequencyDropDown.Value) + 2*10*str2double(app.FrequencyDropDown.Value) + 2*6*str2double(app.FrequencyDropDown.Value);
            time = linspace(0,app.DecompParameters.durationtraining/str2double(app.FrequencyDropDown.Value),app.DecompParameters.durationtraining);
            rest = zeros(1,6*str2double(app.FrequencyDropDown.Value));
            rampup = linspace(0,app.MVCTargetEditField.Value,10*str2double(app.FrequencyDropDown.Value));
            rampdown = linspace(app.MVCTargetEditField.Value,0,10*str2double(app.FrequencyDropDown.Value));
            plateau = sin(2*pi*app.SinewavefreqEditField.Value*time(1:app.DurationtrainingEditField.Value * str2double(app.FrequencyDropDown.Value))) * app.SinewaveampEditField.Value + app.MVCTargetEditField.Value;
            app.DecompParameters.target = [rest rampup plateau rampdown rest];
            plot(app.UIAxes,time,app.DecompParameters.target,'Linewidth', 2, 'Color', [0.56 0.62 0.85]);
            app.UIAxes.XLim = [0 app.DecompParameters.durationtraining/str2double(app.FrequencyDropDown.Value)];
            app.UIAxes.YLim = [0 max(app.DecompParameters.target) + 1];
            app.UIAxes.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes.YColor = [0.9412 0.9412 0.9412];
            xlabel(app.UIAxes,'Time (s)');
            ylabel(app.UIAxes,'Force (%max)');            
        end

        % Value changed function: MVCTargetEditField
        function MVCTargetEditFieldValueChanged(app, event)
            app.DecompParameters.durationtraining = app.DurationtrainingEditField.Value * str2double(app.FrequencyDropDown.Value) + 2*10*str2double(app.FrequencyDropDown.Value) + 2*6*str2double(app.FrequencyDropDown.Value);
            time = linspace(0,app.DecompParameters.durationtraining/str2double(app.FrequencyDropDown.Value),app.DecompParameters.durationtraining);
            rest = zeros(1,6*str2double(app.FrequencyDropDown.Value));
            rampup = linspace(0,app.MVCTargetEditField.Value,10*str2double(app.FrequencyDropDown.Value));
            rampdown = linspace(app.MVCTargetEditField.Value,0,10*str2double(app.FrequencyDropDown.Value));
            plateau = sin(2*pi*app.SinewavefreqEditField.Value*time(1:app.DurationtrainingEditField.Value * str2double(app.FrequencyDropDown.Value))) * app.SinewaveampEditField.Value + app.MVCTargetEditField.Value;
            app.DecompParameters.target = [rest rampup plateau rampdown rest];
            plot(app.UIAxes,time,app.DecompParameters.target,'Linewidth', 2, 'Color', [0.56 0.62 0.85]);
            app.UIAxes.XLim = [0 app.DecompParameters.durationtraining/str2double(app.FrequencyDropDown.Value)];
            app.UIAxes.YLim = [0 max(app.DecompParameters.target) + 1];
            app.UIAxes.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes.YColor = [0.9412 0.9412 0.9412];
            xlabel(app.UIAxes,'Time (s)');
            ylabel(app.UIAxes,'Force (%max)');            
        end

        % Value changed function: SinewavefreqEditField
        function SinewavefreqEditFieldValueChanged(app, event)
            app.DecompParameters.durationtraining = app.DurationtrainingEditField.Value * str2double(app.FrequencyDropDown.Value) + 2*10*str2double(app.FrequencyDropDown.Value) + 2*6*str2double(app.FrequencyDropDown.Value);
            time = linspace(0,app.DecompParameters.durationtraining/str2double(app.FrequencyDropDown.Value),app.DecompParameters.durationtraining);
            rest = zeros(1,6*str2double(app.FrequencyDropDown.Value));
            rampup = linspace(0,app.MVCTargetEditField.Value,10*str2double(app.FrequencyDropDown.Value));
            rampdown = linspace(app.MVCTargetEditField.Value,0,10*str2double(app.FrequencyDropDown.Value));
            plateau = sin(2*pi*app.SinewavefreqEditField.Value*time(1:app.DurationtrainingEditField.Value * str2double(app.FrequencyDropDown.Value))) * app.SinewaveampEditField.Value + app.MVCTargetEditField.Value;
            app.DecompParameters.target = [rest rampup plateau rampdown rest];
            plot(app.UIAxes,time,app.DecompParameters.target,'Linewidth', 2, 'Color', [0.56 0.62 0.85]);
            app.UIAxes.XLim = [0 app.DecompParameters.durationtraining/str2double(app.FrequencyDropDown.Value)];
            app.UIAxes.YLim = [0 max(app.DecompParameters.target) + 1];
            app.UIAxes.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes.YColor = [0.9412 0.9412 0.9412];
            xlabel(app.UIAxes,'Time (s)');
            ylabel(app.UIAxes,'Force (%max)');            
        end

        % Value changed function: SinewaveampEditField
        function SinewaveampEditFieldValueChanged(app, event)
            app.DecompParameters.durationtraining = app.DurationtrainingEditField.Value * str2double(app.FrequencyDropDown.Value) + 2*10*str2double(app.FrequencyDropDown.Value) + 2*6*str2double(app.FrequencyDropDown.Value);
            time = linspace(0,app.DecompParameters.durationtraining/str2double(app.FrequencyDropDown.Value),app.DecompParameters.durationtraining);
            rest = zeros(1,6*str2double(app.FrequencyDropDown.Value));
            rampup = linspace(0,app.MVCTargetEditField.Value,10*str2double(app.FrequencyDropDown.Value));
            rampdown = linspace(app.MVCTargetEditField.Value,0,10*str2double(app.FrequencyDropDown.Value));
            plateau = sin(2*pi*app.SinewavefreqEditField.Value*time(1:app.DurationtrainingEditField.Value * str2double(app.FrequencyDropDown.Value))) * app.SinewaveampEditField.Value + app.MVCTargetEditField.Value;
            app.DecompParameters.target = [rest rampup plateau rampdown rest];
            plot(app.UIAxes,time,app.DecompParameters.target,'Linewidth', 2, 'Color', [0.56 0.62 0.85]);
            app.UIAxes.XLim = [0 app.DecompParameters.durationtraining/str2double(app.FrequencyDropDown.Value)];
            app.UIAxes.YLim = [0 max(app.DecompParameters.target) + 1];
            app.UIAxes.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes.YColor = [0.9412 0.9412 0.9412];
            xlabel(app.UIAxes,'Time (s)');
            ylabel(app.UIAxes,'Force (%max)');            
        end

        % Button pushed function: StartButton
        function StartButtonPushed(app, event)
            % Set the properties of the axes for data viz
            app.UIAxes3.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes3.YColor = [0.9412 0.9412 0.9412];
            xlabel(app.UIAxes3,'Time (s)');
            ylabel(app.UIAxes3,'Force (%max)');
            app.UIAxes3.YLim = [0 max(app.DecompParameters.target) + 3];
            app.UIAxes3.XLim = [0 app.DecompParameters.durationtraining/str2double(app.FrequencyDropDown.Value)];
            app.UIAxes3.ColorOrder = cool(3);
            app.UIAxes.ColorOrder = cool(2);
            nwin = floor(app.DecompParameters.durationtraining/app.ComParameters.nsamp);
            i = 1;
            hold(app.UIAxes3, 'off')

            % Pre allocate empty matrices
            timetot = linspace(0,app.DecompParameters.durationtraining/str2double(app.FrequencyDropDown.Value),app.DecompParameters.durationtraining);
            EMG = zeros(sum(app.ComParameters.gridchannels(:) < 7 & app.ComParameters.gridchannels(:) > 0),app.DecompParameters.durationtraining);
            AUX = zeros(sum(app.ComParameters.gridchannels == 7),app.DecompParameters.durationtraining);
            Force = NaN(1,app.DecompParameters.durationtraining);
            forceidx = find(app.ComParameters.gridchannels == 7, 1, 'First');    

            plot(app.UIAxes3, timetot, app.DecompParameters.target, timetot, abs(Force)/app.RecordParameters.MVC *100, ...
            timetot(i*app.ComParameters.nsamp), abs(Force(i*app.ComParameters.nsamp))/app.RecordParameters.MVC * 100, 'o', 'MarkerSize', 20, 'LineWidth', 3);
            plot(app.UIAxes, timetot, app.DecompParameters.target, timetot(i*app.ComParameters.nsamp), app.DecompParameters.target(i*app.ComParameters.nsamp), 'o', 'MarkerSize', 20, 'LineWidth', 2);

            % Get the data
            app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) + 1; % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);
            fopen(app.ComParameters.tcpSocket);
            set(app.ComParameters.tcpSocket, 'ByteOrder', 'little-endian');
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8'); % Send the configuration to quattrocento
            
            while i <= nwin
                data = fread(app.ComParameters.tcpSocket, [app.ComParameters.nchannel, app.ComParameters.nsamp], 'int16');
                EMG(:,(i-1)*app.ComParameters.nsamp+1:i*app.ComParameters.nsamp) = data(app.ComParameters.gridchannels < 7 & app.ComParameters.gridchannels > 0, :);
                AUX(:,(i-1)*app.ComParameters.nsamp+1:i*app.ComParameters.nsamp) = data(app.ComParameters.gridchannels == 7, :);
                Force(:,(i-1)*app.ComParameters.nsamp+1:i*app.ComParameters.nsamp) = data(forceidx,:) - app.RecordParameters.offsetforce;         
                Force(:,(i-1)*app.ComParameters.nsamp+1:i*app.ComParameters.nsamp) = movmean(Force(:,(i-1)*app.ComParameters.nsamp+1:i*app.ComParameters.nsamp),round(app.ComParameters.nsamp*0.25));
                
                plot(app.UIAxes3, timetot, app.DecompParameters.target, timetot, abs(Force)/app.RecordParameters.MVC *100, ...
                timetot(i*app.ComParameters.nsamp), abs(Force(i*app.ComParameters.nsamp))/app.RecordParameters.MVC * 100, 'o', 'MarkerSize', 20, 'LineWidth', 3);
                plot(app.UIAxes, timetot, app.DecompParameters.target, timetot(i*app.ComParameters.nsamp), app.DecompParameters.target(i*app.ComParameters.nsamp), 'o', 'MarkerSize', 20, 'LineWidth', 2);
                drawnow limitrate
                
                i = i + 1;
            end                   

            app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) - 1; % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);            
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8');
            fclose(app.ComParameters.tcpSocket); % Close the communication
            flush(app.ComParameters.tcpSocket)

            % Update the UI for the next acquisition
            app.InitialisetheAcquisitionButton.Enable = 'on';
            app.StoptheAcquisitionButton.Enable = 'off';
            app.StartVisualisationCheckEMGButton.Enable = 'off';
            app.StartVisualisationChecknoiseButton.Enable = 'off';
            app.StartButton.Enable = 'off';
            app.StartMVCButton.Enable = 'off';
            app.OffsetCheckBox.Enable = 'off';

            % Decomposition for training
            app.EditField_title.Value = ['Decomposition of array #' num2str(i)];
            drawnow
            nbextchan = 1000;
            
            offsetMU = 0;
            idxgrids = app.ComParameters.gridchannels(app.ComParameters.gridchannels < 7 & app.ComParameters.gridchannels > 0);
            for i = 1:app.RecordParameters.ngrid
                SIG = EMG(idxgrids==i,25*str2double(app.FrequencyDropDown.Value):25*str2double(app.FrequencyDropDown.Value)+app.DurationtrainingEditField.Value*str2double(app.FrequencyDropDown.Value));
                SIG = SIG(app.RecordParameters.DiscardChannels{i}==0,:);

                % Signal Extension
                exFactor = round(nbextchan/size(SIG,1));
                eSIG = extend(SIG,exFactor);
                eSIG = demean(eSIG);

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
                for j = 1:app.NbIterationsEditField.Value
                    if j == 1
                        X = wSIG; % Initialize X (whitened signal), then X: residual
                        w = randn(size(X,1),1); % Initialize w
                    else
                        w = randn(size(X,1),1); % Initialize w
                    end
                    
                    w = w - B * B' * w; % Orthogonalization
                    w = w / norm(w); % Normalization
                    
                    %       3a: Fixed point algorithm (end when sparsness is maximized)
                    maxiter = 500; % max number of iterations for the fixed point algorithm
                    w = fixedpointalg(w, X, B , maxiter, 'skew');
                    
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
                    app.EditField_title.Value = ['Ite : ' num2str(j) ' - SIL : ' num2str(round(SIL(j),2)) ' - COV : ' num2str(round(COV(j),2))];
                    drawnow
                end

                app.EditField_title.Value = ['Batch processing of array #' num2str(i)];
                drawnow
                % Filter out MUfilters below the SIL threshold
                MUFilters(:,SIL < app.SILthresholdEditField.Value) = [];
                COV(SIL < app.SILthresholdEditField.Value) = [];
                SIL(SIL < app.SILthresholdEditField.Value) = [];
                MUFilters(:,COV > app.COVthresholdEditField.Value) = [];
                MUFilters = dewhiteningMatrix * MUFilters;

                % Get the pulse train for the entire signal
                [PulseT, Distime, ~] = getPulseT(EMG(idxgrids==i,:), app.RecordParameters.DiscardChannels{i}, MUFilters, str2double(app.FrequencyDropDown.Value));

                % Remove duplicates
                [~, Distime] = remduplicates(PulseT, Distime, Distime, round(str2double(app.FrequencyDropDown.Value)/40), 0.00025, 0.3, str2double(app.FrequencyDropDown.Value));

                % Get the decomposition parameters for the biofeedback
                app.DecompParameters.MUFilters{i} = getMUfilters(EMG(idxgrids==i,:), app.RecordParameters.DiscardChannels{i}, Distime);
                [PulseT, Distime, ~] = getPulseT(EMG(idxgrids==i,:), app.RecordParameters.DiscardChannels{i}, app.DecompParameters.MUFilters{i}, str2double(app.FrequencyDropDown.Value));
                [app.DecompParameters.extensionfactor(i), app.DecompParameters.iReSIG{i}, app.DecompParameters.norm{i}, app.DecompParameters.centroid{i}] = getonlineparameters(EMG(idxgrids==i,:), app.RecordParameters.DiscardChannels{i}, app.DecompParameters.MUFilters{i}, str2double(app.FrequencyDropDown.Value));

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
                signal.gridname{i} = app.file.signal.gridname{i};
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
            signal.auxiliary = AUX;
            for i = 1:size(AUX,1)
                signal.auxiliaryname{i} = ['Auxiliary #' num2str(i)];
            end
            signal.target = app.DecompParameters.target;
            signal.path = abs(Force)/app.RecordParameters.MVC * 100;
            signal.fsamp = str2double(app.FrequencyDropDown.Value);
            signal.muscle = app.RecordParameters.Muscles;
            signal.nChan = size(EMG,1);
            signal.ngrid = app.RecordParameters.ngrid; 
            signal.coordinates = app.RecordParameters.coordinates;
            signal.emgtype = app.RecordParameters.emgtype;
            signal.IED = app.RecordParameters.IED;
            save([app.EditField_saving.Value 'Training_' num2str(app.MVCTargetEditField.Value) '.mat'], 'signal');

            app.XaxisdisplayedDropDown.Items = {};
            app.YaxisdisplayedDropDown.Items = {};
            for i = 1:app.RecordParameters.ngrid
                % Update the list of the MUs for the biofeedback
                for j = 1:size(signal.Pulsetrain{i},1)
                    app.XaxisdisplayedDropDown.Items = horzcat(app.XaxisdisplayedDropDown.Items, {['Grid_', num2str(i), '_MU_' , num2str(j)]});
                    app.YaxisdisplayedDropDown.Items = horzcat(app.YaxisdisplayedDropDown.Items, {['Grid_', num2str(i), '_MU_' , num2str(j)]});
                end
            end
            app.XaxisdisplayedDropDown.Enable = 'on';
            app.YaxisdisplayedDropDown.Enable = 'on';

            % Update the UI for the next acquisition
            app.InitialisetheAcquisitionButton.Enable = 'on';
            app.StoptheAcquisitionButton.Enable = 'off';
            app.StartVisualisationCheckEMGButton.Enable = 'off';
            app.StartVisualisationChecknoiseButton.Enable = 'off';
            app.StartButton.Enable = 'off';
            app.StartMVCButton.Enable = 'off';
            app.OffsetCheckBox.Enable = 'off';
        end

        % Button pushed function: ImportMUfiltersButton
        function ImportMUfiltersButtonPushed(app, event)
            % app.UIFigure.Visible = 'off'; 
            [filename, pathname] = uigetfile;
            app.file = load([pathname filename], 'signal', 'edition');
            
            % for each grid, import the EMG signal and the discharge times
            % to generate the filters
            app.XaxisdisplayedDropDown.Items = {};
            app.YaxisdisplayedDropDown.Items = {};

            idxgrids = app.ComParameters.gridchannels(app.ComParameters.gridchannels < 7 & app.ComParameters.gridchannels > 0);
            for i = 1:app.file.signal.ngrid
                app.DecompParameters.EMGmask{i} = app.file.signal.EMGmask{i};
                for j = 1:size(app.file.edition.Pulsetrain{i},1)
                    Distime{j} = app.file.edition.Dischargetimes{i,j}; % Import the edited discharge times
                    app.DecompParameters.DR{i}(j) = mean(1./(diff(Distime{j})/str2double(app.FrequencyDropDown.Value)));
                    app.XaxisdisplayedDropDown.Items = horzcat(app.XaxisdisplayedDropDown.Items, {['Grid_', num2str(i), '_MU_' , num2str(j)]});
                    app.YaxisdisplayedDropDown.Items = horzcat(app.YaxisdisplayedDropDown.Items, {['Grid_', num2str(i), '_MU_' , num2str(j)]});
                end
                app.XaxisdisplayedDropDown.Enable = 'on';
                app.YaxisdisplayedDropDown.Enable = 'on';

                % Get the filters and the parameters for online
                % decomposition

                app.DecompParameters.MUFilters{i} = getMUfilters(app.file.signal.data(idxgrids==i,:), app.DecompParameters.EMGmask{i}, Distime);
                [app.DecompParameters.extensionfactor(i), app.DecompParameters.iReSIG{i}, app.DecompParameters.norm{i}, app.DecompParameters.centroid{i}] = getonlineparameters(app.file.signal.data(idxgrids==i,:), app.DecompParameters.EMGmask{i}, app.DecompParameters.MUFilters{i}, str2double(app.FrequencyDropDown.Value));
                clearvars Distime
            end
        end

        % Button pushed function: InitialisetheaquisitionButton
        function InitialisetheaquisitionButtonPushed(app, event)
            app.file = load([app.EditField_saving.Value 'config.mat']);
            
            app.ComParameters.fsamp = str2double(app.FrequencyDropDown.Value);
            app.ComParameters.nsamp = floor(app.ComParameters.fsamp/str2double(app.RefreshrateDropDown.Value));
            app.ComParameters.highpass = str2double(app.HPfilterDropDown.Value);
            app.ComParameters.lowpass = str2double(app.LPfilterDropDown.Value);
            [app.ComParameters.nchannel, app.ComParameters.gridchannels] = getgridconfigQuattro(app.file.signal.ports, app.file.signal.adapter);
            app.ComParameters.ConfString = bitseqquattro(app.ComParameters.fsamp, app.ComParameters.nchannel, app.ComParameters.highpass, app.ComParameters.lowpass);
            app.ComParameters.tcpSocket = tcpclient('169.254.1.10', 23456);
            app.ComParameters.tcpSocket.InputBufferSize = 2 * app.ComParameters.nchannel * app.ComParameters.fsamp;

            grids = unique(app.ComParameters.gridchannels);
            grids = setdiff(grids, [0 7]);
            app.RecordParameters.ngrid = length(grids);
            app.RecordParameters.Muscles = app.file.signal.muscle;
            app.ARRAYDISPLAYEDDropDown.Items = {};
            for i = 1:app.RecordParameters.ngrid
                app.ARRAYDISPLAYEDDropDown.Items = horzcat(app.ARRAYDISPLAYEDDropDown.Items, {num2str(grids(i))});
            end

            app.ARRAYDISPLAYEDDropDown.Enable = 'on';
            app.XaxisdisplayedDropDown.Enable = 'on';
            app.YaxisdisplayedDropDown.Enable = 'on';
            app.InitialisetheaquisitionButton.Enable = 'off';
            app.StoptheacquisitionButton.Enable = 'on';
            app.StartQuadrantButton.Enable = 'on';
            app.StartRasterPlotButton.Enable = 'on';
            app.StartDRtrackingButton.Enable = 'on';
        end

        % Button pushed function: StoptheAcquisitionButton
        function StoptheAcquisitionButtonPushed(app, event)
            app.ComParameters.ConfString(1) = bin2dec('10000000'); % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);            
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8');
            fclose(app.ComParameters.tcpSocket); % Close the communication
            flush(app.ComParameters.tcpSocket)
            app.InitialisetheAcquisitionButton.Enable = 'on';
            app.XaxisdisplayedDropDown.Enable = 'on';
            app.YaxisdisplayedDropDown.Enable = 'on';
            app.InitialisetheaquisitionButton.Enable = 'on';
            app.StoptheacquisitionButton.Enable = 'off';
            app.StartQuadrantButton.Enable = 'off';
            app.StartRasterPlotButton.Enable = 'off';
            app.StartDRtrackingButton.Enable = 'off';
        end

        % Value changed function: NbiterationsEditField
        function NbiterationsEditFieldValueChanged(app, event)
            app.OnlineParameters.durationonline = (app.DurationplateauEditField.Value * str2double(app.FrequencyDropDown.Value) + 2*app.DurationrampEditField.Value*str2double(app.FrequencyDropDown.Value) + 2*app.DurationrestEditField.Value*str2double(app.FrequencyDropDown.Value)) * app.NbiterationsEditField.Value;
            time = linspace(0,app.OnlineParameters.durationonline/str2double(app.FrequencyDropDown.Value),app.OnlineParameters.durationonline);
            rest = zeros(1,app.DurationrestEditField.Value*str2double(app.FrequencyDropDown.Value));
            rampup = linspace(0,app.MVCtargetEditField.Value,app.DurationrampEditField.Value*str2double(app.FrequencyDropDown.Value));
            rampdown = linspace(app.MVCtargetEditField.Value,0,app.DurationrampEditField.Value*str2double(app.FrequencyDropDown.Value));
            plateau = sin(2*pi*app.SinewavefreqEditField_2.Value*time(1:app.DurationplateauEditField.Value * str2double(app.FrequencyDropDown.Value))) * app.SinewaveampEditField_2.Value + app.MVCtargetEditField.Value;
            app.OnlineParameters.targetonline = [];
            for i = 1:app.NbiterationsEditField.Value
                app.OnlineParameters.targetonline = [app.OnlineParameters.targetonline rest rampup plateau rampdown rest];
            end
            if length(time)>2
                plot(app.UIAxes2,time,app.OnlineParameters.targetonline,'Linewidth', 2, 'Color', [0.81 0.50 1.00]);
                app.UIAxes2.XLim = [0 app.OnlineParameters.durationonline/str2double(app.FrequencyDropDown.Value) + 1];
                app.UIAxes2.YLim = [0 max(app.OnlineParameters.targetonline) + 1];
                app.UIAxes2.XColor = [0.9412 0.9412 0.9412];
                app.UIAxes2.YColor = [0.9412 0.9412 0.9412];
                xlabel(app.UIAxes2,'Time (s)');
                ylabel(app.UIAxes2,'Force (%max)');
            end
        end

        % Value changed function: DurationrestEditField
        function DurationrestEditFieldValueChanged(app, event)
            app.OnlineParameters.durationonline = (app.DurationplateauEditField.Value * str2double(app.FrequencyDropDown.Value) + 2*app.DurationrampEditField.Value*str2double(app.FrequencyDropDown.Value) + 2*app.DurationrestEditField.Value*str2double(app.FrequencyDropDown.Value)) * app.NbiterationsEditField.Value;
            time = linspace(0,app.OnlineParameters.durationonline/str2double(app.FrequencyDropDown.Value),app.OnlineParameters.durationonline);
            rest = zeros(1,app.DurationrestEditField.Value*str2double(app.FrequencyDropDown.Value));
            rampup = linspace(0,app.MVCtargetEditField.Value,app.DurationrampEditField.Value*str2double(app.FrequencyDropDown.Value));
            rampdown = linspace(app.MVCtargetEditField.Value,0,app.DurationrampEditField.Value*str2double(app.FrequencyDropDown.Value));
            plateau = sin(2*pi*app.SinewavefreqEditField_2.Value*time(1:app.DurationplateauEditField.Value * str2double(app.FrequencyDropDown.Value))) * app.SinewaveampEditField_2.Value + app.MVCtargetEditField.Value;
            app.OnlineParameters.targetonline = [];
            for i = 1:app.NbiterationsEditField.Value
                app.OnlineParameters.targetonline = [app.OnlineParameters.targetonline rest rampup plateau rampdown rest];
            end
            if length(time)>2
                plot(app.UIAxes2,time,app.OnlineParameters.targetonline,'Linewidth', 2, 'Color', [0.81 0.50 1.00]);
                app.UIAxes2.XLim = [0 app.OnlineParameters.durationonline/str2double(app.FrequencyDropDown.Value) + 1];
                app.UIAxes2.YLim = [0 max(app.OnlineParameters.targetonline) + 1];
                app.UIAxes2.XColor = [0.9412 0.9412 0.9412];
                app.UIAxes2.YColor = [0.9412 0.9412 0.9412];
                xlabel(app.UIAxes2,'Time (s)');
                ylabel(app.UIAxes2,'Force (%max)');
            end
        end

        % Value changed function: DurationplateauEditField
        function DurationplateauEditFieldValueChanged(app, event)
            app.OnlineParameters.durationonline = (app.DurationplateauEditField.Value * str2double(app.FrequencyDropDown.Value) + 2*app.DurationrampEditField.Value*str2double(app.FrequencyDropDown.Value) + 2*app.DurationrestEditField.Value*str2double(app.FrequencyDropDown.Value)) * app.NbiterationsEditField.Value;
            time = linspace(0,app.OnlineParameters.durationonline/str2double(app.FrequencyDropDown.Value),app.OnlineParameters.durationonline);
            rest = zeros(1,app.DurationrestEditField.Value*str2double(app.FrequencyDropDown.Value));
            rampup = linspace(0,app.MVCtargetEditField.Value,app.DurationrampEditField.Value*str2double(app.FrequencyDropDown.Value));
            rampdown = linspace(app.MVCtargetEditField.Value,0,app.DurationrampEditField.Value*str2double(app.FrequencyDropDown.Value));
            plateau = sin(2*pi*app.SinewavefreqEditField_2.Value*time(1:app.DurationplateauEditField.Value * str2double(app.FrequencyDropDown.Value))) * app.SinewaveampEditField_2.Value + app.MVCtargetEditField.Value;
            app.OnlineParameters.targetonline = [];
            for i = 1:app.NbiterationsEditField.Value
                app.OnlineParameters.targetonline = [app.OnlineParameters.targetonline rest rampup plateau rampdown rest];
            end
            if length(time)>2
                plot(app.UIAxes2,time,app.OnlineParameters.targetonline,'Linewidth', 2, 'Color', [0.81 0.50 1.00]);
                app.UIAxes2.XLim = [0 app.OnlineParameters.durationonline/str2double(app.FrequencyDropDown.Value) + 1];
                app.UIAxes2.YLim = [0 max(app.OnlineParameters.targetonline) + 1];
                app.UIAxes2.XColor = [0.9412 0.9412 0.9412];
                app.UIAxes2.YColor = [0.9412 0.9412 0.9412];
                xlabel(app.UIAxes2,'Time (s)');
                ylabel(app.UIAxes2,'Force (%max)');
            end
        end

        % Value changed function: DurationrampEditField
        function DurationrampEditFieldValueChanged(app, event)
            app.OnlineParameters.durationonline = (app.DurationplateauEditField.Value * str2double(app.FrequencyDropDown.Value) + 2*app.DurationrampEditField.Value*str2double(app.FrequencyDropDown.Value) + 2*app.DurationrestEditField.Value*str2double(app.FrequencyDropDown.Value)) * app.NbiterationsEditField.Value;
            time = linspace(0,app.OnlineParameters.durationonline/str2double(app.FrequencyDropDown.Value),app.OnlineParameters.durationonline);
            rest = zeros(1,app.DurationrestEditField.Value*str2double(app.FrequencyDropDown.Value));
            rampup = linspace(0,app.MVCtargetEditField.Value,app.DurationrampEditField.Value*str2double(app.FrequencyDropDown.Value));
            rampdown = linspace(app.MVCtargetEditField.Value,0,app.DurationrampEditField.Value*str2double(app.FrequencyDropDown.Value));
            plateau = sin(2*pi*app.SinewavefreqEditField_2.Value*time(1:app.DurationplateauEditField.Value * str2double(app.FrequencyDropDown.Value))) * app.SinewaveampEditField_2.Value + app.MVCtargetEditField.Value;
            app.OnlineParameters.targetonline = [];
            for i = 1:app.NbiterationsEditField.Value
                app.OnlineParameters.targetonline = [app.OnlineParameters.targetonline rest rampup plateau rampdown rest];
            end
            if length(time)>2
                plot(app.UIAxes2,time,app.OnlineParameters.targetonline,'Linewidth', 2, 'Color', [0.81 0.50 1.00]);
                app.UIAxes2.XLim = [0 app.OnlineParameters.durationonline/str2double(app.FrequencyDropDown.Value) + 1];
                app.UIAxes2.YLim = [0 max(app.OnlineParameters.targetonline) + 1];
                app.UIAxes2.XColor = [0.9412 0.9412 0.9412];
                app.UIAxes2.YColor = [0.9412 0.9412 0.9412];
                xlabel(app.UIAxes2,'Time (s)');
                ylabel(app.UIAxes2,'Force (%max)');
            end
        end

        % Value changed function: MVCtargetEditField
        function MVCtargetEditFieldValueChanged(app, event)
            app.OnlineParameters.durationonline = (app.DurationplateauEditField.Value * str2double(app.FrequencyDropDown.Value) + 2*app.DurationrampEditField.Value*str2double(app.FrequencyDropDown.Value) + 2*app.DurationrestEditField.Value*str2double(app.FrequencyDropDown.Value)) * app.NbiterationsEditField.Value;
            time = linspace(0,app.OnlineParameters.durationonline/str2double(app.FrequencyDropDown.Value),app.OnlineParameters.durationonline);
            rest = zeros(1,app.DurationrestEditField.Value*str2double(app.FrequencyDropDown.Value));
            rampup = linspace(0,app.MVCtargetEditField.Value,app.DurationrampEditField.Value*str2double(app.FrequencyDropDown.Value));
            rampdown = linspace(app.MVCtargetEditField.Value,0,app.DurationrampEditField.Value*str2double(app.FrequencyDropDown.Value));
            plateau = sin(2*pi*app.SinewavefreqEditField_2.Value*time(1:app.DurationplateauEditField.Value * str2double(app.FrequencyDropDown.Value))) * app.SinewaveampEditField_2.Value + app.MVCtargetEditField.Value;
            app.OnlineParameters.targetonline = [];
            for i = 1:app.NbiterationsEditField.Value
                app.OnlineParameters.targetonline = [app.OnlineParameters.targetonline rest rampup plateau rampdown rest];
            end
            if length(time)>2
                plot(app.UIAxes2,time,app.OnlineParameters.targetonline,'Linewidth', 2, 'Color', [0.81 0.50 1.00]);
                app.UIAxes2.XLim = [0 app.OnlineParameters.durationonline/str2double(app.FrequencyDropDown.Value) + 1];
                app.UIAxes2.YLim = [0 max(app.OnlineParameters.targetonline) + 1];
                app.UIAxes2.XColor = [0.9412 0.9412 0.9412];
                app.UIAxes2.YColor = [0.9412 0.9412 0.9412];
                xlabel(app.UIAxes2,'Time (s)');
                ylabel(app.UIAxes2,'Force (%max)');
            end
        end

        % Value changed function: SinewavefreqEditField_2
        function SinewavefreqEditField_2ValueChanged(app, event)
            app.OnlineParameters.durationonline = (app.DurationplateauEditField.Value * str2double(app.FrequencyDropDown.Value) + 2*app.DurationrampEditField.Value*str2double(app.FrequencyDropDown.Value) + 2*app.DurationrestEditField.Value*str2double(app.FrequencyDropDown.Value)) * app.NbiterationsEditField.Value;
            time = linspace(0,app.OnlineParameters.durationonline/str2double(app.FrequencyDropDown.Value),app.OnlineParameters.durationonline);
            rest = zeros(1,app.DurationrestEditField.Value*str2double(app.FrequencyDropDown.Value));
            rampup = linspace(0,app.MVCtargetEditField.Value,app.DurationrampEditField.Value*str2double(app.FrequencyDropDown.Value));
            rampdown = linspace(app.MVCtargetEditField.Value,0,app.DurationrampEditField.Value*str2double(app.FrequencyDropDown.Value));
            plateau = sin(2*pi*app.SinewavefreqEditField_2.Value*time(1:app.DurationplateauEditField.Value * str2double(app.FrequencyDropDown.Value))) * app.SinewaveampEditField_2.Value + app.MVCtargetEditField.Value;
            app.OnlineParameters.targetonline = [];
            for i = 1:app.NbiterationsEditField.Value
                app.OnlineParameters.targetonline = [app.OnlineParameters.targetonline rest rampup plateau rampdown rest];
            end
            if length(time)>2
                plot(app.UIAxes2,time,app.OnlineParameters.targetonline,'Linewidth', 2, 'Color', [0.81 0.50 1.00]);
                app.UIAxes2.XLim = [0 app.OnlineParameters.durationonline/str2double(app.FrequencyDropDown.Value) + 1];
                app.UIAxes2.YLim = [0 max(app.OnlineParameters.targetonline) + 1];
                app.UIAxes2.XColor = [0.9412 0.9412 0.9412];
                app.UIAxes2.YColor = [0.9412 0.9412 0.9412];
                xlabel(app.UIAxes2,'Time (s)');
                ylabel(app.UIAxes2,'Force (%max)');
            end
        end

        % Value changed function: SinewaveampEditField_2
        function SinewaveampEditField_2ValueChanged(app, event)
            app.OnlineParameters.durationonline = (app.DurationplateauEditField.Value * str2double(app.FrequencyDropDown.Value) + 2*app.DurationrampEditField.Value*str2double(app.FrequencyDropDown.Value) + 2*app.DurationrestEditField.Value*str2double(app.FrequencyDropDown.Value)) * app.NbiterationsEditField.Value;
            time = linspace(0,app.OnlineParameters.durationonline/str2double(app.FrequencyDropDown.Value),app.OnlineParameters.durationonline);
            rest = zeros(1,app.DurationrestEditField.Value*str2double(app.FrequencyDropDown.Value));
            rampup = linspace(0,app.MVCtargetEditField.Value,app.DurationrampEditField.Value*str2double(app.FrequencyDropDown.Value));
            rampdown = linspace(app.MVCtargetEditField.Value,0,app.DurationrampEditField.Value*str2double(app.FrequencyDropDown.Value));
            plateau = sin(2*pi*app.SinewavefreqEditField_2.Value*time(1:app.DurationplateauEditField.Value * str2double(app.FrequencyDropDown.Value))) * app.SinewaveampEditField_2.Value + app.MVCtargetEditField.Value;
            app.OnlineParameters.targetonline = [];
            for i = 1:app.NbiterationsEditField.Value
                app.OnlineParameters.targetonline = [app.OnlineParameters.targetonline rest rampup plateau rampdown rest];
            end
            if length(time)>2
                plot(app.UIAxes2,time,app.OnlineParameters.targetonline,'Linewidth', 2, 'Color', [0.81 0.50 1.00]);
                app.UIAxes2.XLim = [0 app.OnlineParameters.durationonline/str2double(app.FrequencyDropDown.Value) + 1];
                app.UIAxes2.YLim = [0 max(app.OnlineParameters.targetonline) + 1];
                app.UIAxes2.XColor = [0.9412 0.9412 0.9412];
                app.UIAxes2.YColor = [0.9412 0.9412 0.9412];
                xlabel(app.UIAxes2,'Time (s)');
                ylabel(app.UIAxes2,'Force (%max)');
            end
        end

        % Button pushed function: StartRasterPlotButton
        function StartRasterPlotButtonPushed(app, event)
            C1 = strsplit(app.XaxisdisplayedDropDown.Value,'_');
            idxmuscle1 = str2double(C1{2});

            nwin = floor(app.OnlineParameters.durationonline/app.ComParameters.nsamp);
            nwinbuff = floor(str2double(app.FrequencyDropDown.Value)*5/app.ComParameters.nsamp);
            k = 1;
            
            % Pre allocate empty matrices
            Time = linspace(0,nwin*app.ComParameters.nsamp/str2double(app.FrequencyDropDown.Value),nwin*app.ComParameters.nsamp);
            EMG = zeros(sum(app.ComParameters.gridchannels(:) < 7 & app.ComParameters.gridchannels(:) > 0),app.OnlineParameters.durationonline);
            AUX = zeros(sum(app.ComParameters.gridchannels == 7),app.OnlineParameters.durationonline);
            Force = NaN(1,app.OnlineParameters.durationonline);
            forceidx = find(app.ComParameters.gridchannels == 7, 1, 'First');    
            idxgrids = app.ComParameters.gridchannels(app.ComParameters.gridchannels < 7 & app.ComParameters.gridchannels > 0);

            EMGtmp1 = zeros(sum(app.ComParameters.gridchannels(:) == idxmuscle1),app.ComParameters.nsamp);
            EMGtmp2 = zeros(sum(app.DecompParameters.EMGmask{idxmuscle1}(:)==0),app.ComParameters.nsamp);
            esample2 = zeros(sum(app.DecompParameters.EMGmask{idxmuscle1}(:)==0)*app.DecompParameters.extensionfactor(idxmuscle1),app.DecompParameters.extensionfactor(idxmuscle1)-1);
            Distime = zeros(nwin*app.ComParameters.nsamp, size(app.DecompParameters.MUFilters{idxmuscle1},2));
            signal.Pulsetrain{1} = zeros(size(app.DecompParameters.MUFilters{idxmuscle1},2), app.ComParameters.nsamp*nwin);
            noise_centroids = ones(app.ComParameters.nsamp,size(app.DecompParameters.MUFilters{idxmuscle1},2)) .* (app.DecompParameters.centroid{idxmuscle1}(:,1)');
            spike_centroids = ones(app.ComParameters.nsamp,size(app.DecompParameters.MUFilters{idxmuscle1},2)) .* (app.DecompParameters.centroid{idxmuscle1}(:,2)');
            MUfilt = app.DecompParameters.MUFilters{idxmuscle1}' * app.DecompParameters.iReSIG{idxmuscle1};
            MUoffset = 1:1:size(app.DecompParameters.MUFilters{idxmuscle1},2);
            forcefb = zeros(1,nwin);
            feedback = zeros(1,nwin);

            % Set the properties of the axes for data viz
            
            plot(app.UIAxes4, Time(1:str2double(app.FrequencyDropDown.Value)*5), Distime(1:str2double(app.FrequencyDropDown.Value)*5,:).*MUoffset, '|', 'LineWidth', 4, 'MarkerSize', 20)
            plot(app.UIAxes5, 1, forcefb(k),'o', 'LineWidth', 4, 'MarkerSize', 20)
            line(app.UIAxes5,[0 2], [feedback(k)*0.95 feedback(k)*0.95],'LineWidth', 4)
            line(app.UIAxes5,[0 2], [feedback(k)*1.05 feedback(k)*1.05],'LineWidth', 4)          
            plot(app.UIAxes2, Time, app.OnlineParameters.targetonline, Time(k*app.ComParameters.nsamp), app.OnlineParameters.targetonline(k*app.ComParameters.nsamp), 'o', 'MarkerSize', 20, 'LineWidth', 2);

            app.UIAxes4.XLim = [Time(1) Time(str2double(app.FrequencyDropDown.Value)*5)];
            app.UIAxes4.YLim = [0.5 size(app.DecompParameters.MUFilters{idxmuscle1},2)+0.5];
            app.UIAxes5.XLim = [0 2];
            app.UIAxes5.YLim = [0 max(app.OnlineParameters.targetonline)*1.25];
            app.UIAxes4.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes4.YColor = [0.9412 0.9412 0.9412];
            app.UIAxes5.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes5.YColor = [0.9412 0.9412 0.9412];
            xlabel(app.UIAxes4,'Time (s)');
            ylabel(app.UIAxes4,'MU Discharge times');
            app.UIAxes4.ColorOrder = cool(30);
            app.UIAxes5.ColorOrder = cool(3);
            app.UIAxes2.ColorOrder = cool(2);

            % Get the data
            app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) + 1; % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);
            fopen(app.ComParameters.tcpSocket);
            set(app.ComParameters.tcpSocket, 'ByteOrder', 'little-endian');
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8'); % Send the configuration to quattrocento
            
            while k <= nwin - floor(nwinbuff/2)
                data = fread(app.ComParameters.tcpSocket, [app.ComParameters.nchannel, app.ComParameters.nsamp], 'int16');
                EMG(:,(k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp) = data(app.ComParameters.gridchannels(:) < 7 & app.ComParameters.gridchannels(:) > 0, :);
                AUX(:,(k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp) = data(app.ComParameters.gridchannels == 7, :);
                Force(:,(k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp) = (data(forceidx,:) - app.RecordParameters.offsetforce);
                forcefb(k) = mean(abs(Force((k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp)));
                feedback(k) = mean(app.OnlineParameters.targetonline((k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp));
                
                EMGtmp1 = EMG(idxgrids==idxmuscle1, (k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp);
                EMGtmp2 = EMGtmp1(app.DecompParameters.EMGmask{idxmuscle1}(:)==0, :);

                [signal.Pulsetrain{1}(:,(k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp), Distime((k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp, :), esample2] = getspikesonline(EMGtmp2, app.DecompParameters.extensionfactor(idxmuscle1), esample2, MUfilt, app.DecompParameters.norm{idxmuscle1}, noise_centroids, spike_centroids, app.ComParameters.nsamp, str2double(app.FrequencyDropDown.Value));
                
                if k <= round(nwinbuff/2)
                    plot(app.UIAxes4, Time(1:str2double(app.FrequencyDropDown.Value)*5), Distime(1:str2double(app.FrequencyDropDown.Value)*5,:).*MUoffset, '|', 'LineWidth', 4, 'MarkerSize', 20)
                    app.UIAxes4.XLim = [Time(1) Time(str2double(app.FrequencyDropDown.Value)*5)];
                    plot(app.UIAxes5, 1, forcefb(k)/app.RecordParameters.MVC * 100,'o', 'LineWidth', 4, 'MarkerSize', 20)
                    line(app.UIAxes5,[0 2], [feedback(k)*0.95 feedback(k)*0.95],'LineWidth', 4)
                    line(app.UIAxes5,[0 2], [feedback(k)*1.05 feedback(k)*1.05],'LineWidth', 4)
                    plot(app.UIAxes2, Time, app.OnlineParameters.targetonline, Time(k*app.ComParameters.nsamp), app.OnlineParameters.targetonline(k*app.ComParameters.nsamp), 'o', 'MarkerSize', 20, 'LineWidth', 2);
                else
                    plot(app.UIAxes4, Time((k-1)*app.ComParameters.nsamp+1-str2double(app.FrequencyDropDown.Value)*2.5:str2double(app.FrequencyDropDown.Value)*2.5+(k-1)*app.ComParameters.nsamp), Distime((k-1)*app.ComParameters.nsamp+1-str2double(app.FrequencyDropDown.Value)*2.5:str2double(app.FrequencyDropDown.Value)*2.5+(k-1)*app.ComParameters.nsamp,:).*MUoffset, '|', 'LineWidth', 4, 'MarkerSize', 20)
                    app.UIAxes4.XLim = [Time((k-1)*app.ComParameters.nsamp+1-str2double(app.FrequencyDropDown.Value)*2.5) Time(str2double(app.FrequencyDropDown.Value)*2.5+(k-1)*app.ComParameters.nsamp)];
                    plot(app.UIAxes5, 1, forcefb(k)/app.RecordParameters.MVC * 100,'o', 'LineWidth', 4, 'MarkerSize', 20)
                    line(app.UIAxes5,[0 2], [feedback(k)*0.95 feedback(k)*0.95],'LineWidth', 4)
                    line(app.UIAxes5,[0 2], [feedback(k)*1.05 feedback(k)*1.05],'LineWidth', 4)
                    plot(app.UIAxes2, Time, app.OnlineParameters.targetonline, Time(k*app.ComParameters.nsamp), app.OnlineParameters.targetonline(k*app.ComParameters.nsamp), 'o', 'MarkerSize', 20, 'LineWidth', 2);
                end
                drawnow limitrate
                k = k+1;
            end
            app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) - 1; % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);            
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8');
            fclose(app.ComParameters.tcpSocket); % Close the communication
            flush(app.ComParameters.tcpSocket)

            % Save the data
            signal.data = EMG(idxgrids == idxmuscle1, :);
            signal.allEMG = EMG;
            signal.auxiliary = AUX;
            signal.target = app.OnlineParameters.targetonline;
            signal.path = Force;
            signal.fsamp = str2double(app.FrequencyDropDown.Value);
            signal.muscle{1} = app.RecordParameters.Muscles{idxmuscle1};
            signal.nChan = size(EMG,1);
            signal.ngrid = app.RecordParameters.ngrid;
            signal.EMGmask{1} = app.DecompParameters.EMGmask{idxmuscle1};
            signal.gridname{1} = app.file.signal.gridname{idxmuscle1};
            signal.coordinates = app.RecordParameters.coordinates;
            signal.emgtype = app.RecordParameters.emgtype;
            signal.IED = app.RecordParameters.IED;
            signal.feedback{1} = 'Raster plot';
            for k = 1:size(Distime,2)
                signal.Dischargetimes{k} = find(Distime(:,k) > 0)';
            end
            for k = 1:size(AUX,1)
                signal.auxiliaryname{k} = ['Auxiliary #' num2str(k)];
            end
            save([app.EditField_saving.Value 'Online ' replace(datestr(datetime('now')),':','_') '.mat'], 'signal');

            % Update the results of the last decomposition
            app.OnlineParameters.Timeplot = linspace(0,size(signal.Pulsetrain{1},2)/str2double(app.FrequencyDropDown.Value),size(signal.Pulsetrain{1},2));
            app.OnlineParameters.Dischargetimes = {};
            nMU = 1;
            app.OnlineParameters.Pulsetrain = signal.Pulsetrain{1};
            for j = 1:size(Distime,2)
                app.OnlineParameters.Dischargetimes{nMU} =  signal.Dischargetimes{1,j};
                nMU = nMU + 1;
            end
            clearvars Distime

            % Updates the parameters of the decomposition
            % EMG = EMG(:,str2double(app.FrequencyDropDown.Value):end);
            % [~, Distime, ~] = getPulseT(EMG, app.RecordParameters.DiscardChannels{idxmuscle1}, app.DecompParameters.MUFilters{idxmuscle1}, str2double(app.FrequencyDropDown.Value));
            % app.DecompParameters.MUFilters{idxmuscle1} = getMUfilters(EMG, app.RecordParameters.DiscardChannels{idxmuscle1}, Distime);

            % Update the UI for the next acquisition
            app.InitialisetheaquisitionButton.Enable = 'on';
            app.StoptheacquisitionButton.Enable = 'off';
            app.StartQuadrantButton.Enable = 'off';
            app.StartRasterPlotButton.Enable = 'off';
            app.StartDRtrackingButton.Enable = 'off';
            app.DisplaythePulsetrainsButton.Enable = 'on';
        end

        % Button pushed function: StartDRtrackingButton
        function StartDRtrackingButtonPushed(app, event)
            C1 = strsplit(app.XaxisdisplayedDropDown.Value,'_');
            idxmuscle1 = str2double(C1{2});
            idxmu1 = str2double(C1{4});
            app.OnlineParameters.targetonline = app.OnlineParameters.targetonline/app.MVCtargetEditField.Value*app.DecompParameters.DR{idxmuscle1}(idxmu1);
            nwin = floor(app.OnlineParameters.durationonline/app.ComParameters.nsamp);
            nwinbuff = floor(str2double(app.FrequencyDropDown.Value)*10/app.ComParameters.nsamp);

            k = 1;

            % Pre allocate empty matrices
            % Data
            EMG = zeros(sum(app.ComParameters.gridchannels(:) < 7 & app.ComParameters.gridchannels(:) > 0),app.OnlineParameters.durationonline);
            AUX = zeros(sum(app.ComParameters.gridchannels == 7),app.OnlineParameters.durationonline);
            Force = NaN(1,app.OnlineParameters.durationonline);
            forceidx = find(app.ComParameters.gridchannels == 7, 1, 'First');    
            idxgrids = app.ComParameters.gridchannels(app.ComParameters.gridchannels < 7 & app.ComParameters.gridchannels > 0);

            % Time stamps 
            Time = linspace(0,size(EMG,2)/str2double(app.FrequencyDropDown.Value), nwin);
            Time2 = linspace(0,nwin*app.ComParameters.nsamp/str2double(app.FrequencyDropDown.Value),nwin*app.ComParameters.nsamp);

            EMGtmp1 = zeros(sum(app.ComParameters.gridchannels(:) == idxmuscle1),app.ComParameters.nsamp);
            EMGtmp2 = zeros(sum(app.DecompParameters.EMGmask{idxmuscle1}(:)==0),app.ComParameters.nsamp);
            esample2 = zeros(sum(app.DecompParameters.EMGmask{idxmuscle1}(:)==0)*app.DecompParameters.extensionfactor(idxmuscle1),app.DecompParameters.extensionfactor(idxmuscle1)-1);
            Distime = zeros(nwin*app.ComParameters.nsamp, size(app.DecompParameters.MUFilters{idxmuscle1},2));
            signal.Pulsetrain{1} = zeros(size(app.DecompParameters.MUFilters{idxmuscle1},2), app.ComParameters.nsamp*nwin);
            noise_centroids = ones(app.ComParameters.nsamp,size(app.DecompParameters.MUFilters{idxmuscle1},2)) .* (app.DecompParameters.centroid{idxmuscle1}(:,1)');
            spike_centroids = ones(app.ComParameters.nsamp,size(app.DecompParameters.MUFilters{idxmuscle1},2)) .* (app.DecompParameters.centroid{idxmuscle1}(:,2)');
            MUfilt = app.DecompParameters.MUFilters{idxmuscle1}' * app.DecompParameters.iReSIG{idxmuscle1};
            DR = NaN(nwin, size(app.DecompParameters.MUFilters{idxmuscle1},2));
            forcefb = zeros(1,nwin);
            feedback = zeros(1,nwin);

            % Set the properties of the axes for data viz         
            plot(app.UIAxes4, Time(1:80), DR(1:80,:), Time(k), DR(k,:), 'o', 'LineWidth', 4, 'MarkerSize', 20)
            plot(app.UIAxes5, 1, forcefb(k),'o', 'LineWidth', 4, 'MarkerSize', 20)
            line(app.UIAxes5,[0 2], [feedback(k)*0.95 feedback(k)*0.95],'LineWidth', 4)
            line(app.UIAxes5,[0 2], [feedback(k)*1.05 feedback(k)*1.05],'LineWidth', 4)
            plot(app.UIAxes2, Time2, app.OnlineParameters.targetonline, Time2(k*app.ComParameters.nsamp), app.OnlineParameters.targetonline(k*app.ComParameters.nsamp), 'o', 'MarkerSize', 20, 'LineWidth', 2);
            app.UIAxes4.XLim = [Time(1) Time(80)];
            app.UIAxes4.YLim = [0 app.DecompParameters.DR{idxmuscle1}(idxmu1)*1.25];
            app.UIAxes5.XLim = [0 2];
            app.UIAxes5.YLim = [0 max(app.OnlineParameters.targetonline)*1.25];
            app.UIAxes4.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes4.YColor = [0.9412 0.9412 0.9412];
            app.UIAxes5.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes5.YColor = [0.9412 0.9412 0.9412];
            xlabel(app.UIAxes4,'Time (s)');
            ylabel(app.UIAxes4,'Discharge rate (pps)');
            app.UIAxes4.ColorOrder = cool(4);
            app.UIAxes5.ColorOrder = cool(3);
            app.UIAxes2.ColorOrder = cool(2);

            % Get the data
            app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) + 1; % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);
            fopen(app.ComParameters.tcpSocket);
            set(app.ComParameters.tcpSocket, 'ByteOrder', 'little-endian');
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8'); % Send the configuration to quattrocento
            app.StoptheAcquisitionButton.Enable = 'on';
            
            while k <= nwin - floor(nwinbuff/2)
                data = fread(app.ComParameters.tcpSocket, [app.ComParameters.nchannel, app.ComParameters.nsamp], 'int16');
                EMG(:,(k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp) = data(app.ComParameters.gridchannels(:) < 7 & app.ComParameters.gridchannels(:) > 0, :);
                AUX(:,(k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp) = data(app.ComParameters.gridchannels == 7, :);
                Force(:,(k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp) = (data(forceidx,:) - app.RecordParameters.offsetforce);
                forcefb(k) = mean(abs(Force((k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp)));
                feedback(k) = mean(app.OnlineParameters.targetonline((k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp));
                
                EMGtmp1 = EMG(idxgrids == idxmuscle1, (k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp);
                EMGtmp2 = EMGtmp1(app.DecompParameters.EMGmask{idxmuscle1}(:)==0, :);
                
                [signal.Pulsetrain{1}(:,(k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp), Distime((k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp, :), esample2] = getspikesonline(EMGtmp2, app.DecompParameters.extensionfactor(idxmuscle1), esample2, MUfilt, app.DecompParameters.norm{idxmuscle1}, noise_centroids, spike_centroids, app.ComParameters.nsamp, str2double(app.FrequencyDropDown.Value));
                
                if k <= round(nwinbuff/2)
                    DR(k,:) = sum(Distime(1:str2double(app.RefreshrateDropDown.Value)*app.ComParameters.nsamp, :) > 0, 1);
                    plot(app.UIAxes4, Time2(1:str2double(app.FrequencyDropDown.Value)*10), app.OnlineParameters.targetonline(1:str2double(app.FrequencyDropDown.Value)*10), Time(1:str2double(app.RefreshrateDropDown.Value)*10), DR(1:str2double(app.RefreshrateDropDown.Value)*10,idxmu1), Time(k), DR(k,idxmu1),'o', 'LineWidth', 4, 'MarkerSize', 20)
                    app.UIAxes4.XLim = [Time(1) Time(str2double(app.RefreshrateDropDown.Value)*10)];
                    plot(app.UIAxes5, 1, forcefb(k)/app.RecordParameters.MVC * 100,'o', 'LineWidth', 4, 'MarkerSize', 20)
                    line(app.UIAxes5,[0 2], [feedback(k)*0.95 feedback(k)*0.95],'LineWidth', 4)
                    line(app.UIAxes5,[0 2], [feedback(k)*1.05 feedback(k)*1.05],'LineWidth', 4)
                    plot(app.UIAxes2, Time2, app.OnlineParameters.targetonline, Time2(k*app.ComParameters.nsamp), app.OnlineParameters.targetonline(k*app.ComParameters.nsamp), 'o', 'MarkerSize', 20, 'LineWidth', 2);
                else
                    DR(k,:) = sum(Distime((k-(str2double(app.RefreshrateDropDown.Value)-1))*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp, :) > 0, 1);
                    DR(k,:) = mean(DR(k-(app.SmoothingEditField.Value-1):k,:), 1);
                    plot(app.UIAxes4, Time2((k-1)*app.ComParameters.nsamp+1-str2double(app.FrequencyDropDown.Value)*5:str2double(app.FrequencyDropDown.Value)*5+(k-1)*app.ComParameters.nsamp), app.OnlineParameters.targetonline((k-1)*app.ComParameters.nsamp+1-str2double(app.FrequencyDropDown.Value)*5:str2double(app.FrequencyDropDown.Value)*5+(k-1)*app.ComParameters.nsamp),Time(k-(str2double(app.RefreshrateDropDown.Value) * 5 - 1):k+str2double(app.RefreshrateDropDown.Value) * 5), DR(k-(str2double(app.RefreshrateDropDown.Value) * 5 - 1):k+str2double(app.RefreshrateDropDown.Value) * 5,idxmu1), Time(k), DR(k,idxmu1),'o', 'LineWidth', 4, 'MarkerSize', 20)
                    app.UIAxes4.XLim = [Time(k-(str2double(app.RefreshrateDropDown.Value) * 5 - 1)) Time(k+str2double(app.RefreshrateDropDown.Value) * 5)];
                    plot(app.UIAxes5, 1, forcefb(k)/app.RecordParameters.MVC * 100,'o', 'LineWidth', 4, 'MarkerSize', 20)
                    line(app.UIAxes5,[0 2], [feedback(k)*0.95 feedback(k)*0.95],'LineWidth', 4)
                    line(app.UIAxes5,[0 2], [feedback(k)*1.05 feedback(k)*1.05],'LineWidth', 4)
                    plot(app.UIAxes2, Time2, app.OnlineParameters.targetonline, Time2(k*app.ComParameters.nsamp), app.OnlineParameters.targetonline(k*app.ComParameters.nsamp), 'o', 'MarkerSize', 20, 'LineWidth', 2);
                end
                drawnow limitrate
                k = k+1;
            end
            app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) - 1; % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);            
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8');
            fclose(app.ComParameters.tcpSocket); % Close the communication
            flush(app.ComParameters.tcpSocket)

            % Save the data
            signal.data = EMG(idxgrids == idxmuscle1, :);
            signal.allEMG = EMG;
            signal.auxiliary = AUX;
            signal.target = app.OnlineParameters.targetonline;
            signal.path = Force;
            signal.fsamp = str2double(app.FrequencyDropDown.Value);
            signal.muscle{1} = app.RecordParameters.Muscles{idxmuscle1};
            signal.nChan = size(EMG,1);
            signal.ngrid = app.RecordParameters.ngrid;
            signal.EMGmask{1} = app.DecompParameters.EMGmask{idxmuscle1};
            signal.gridname{1} = app.file.signal.gridname{idxmuscle1};
            signal.coordinates = app.RecordParameters.coordinates;
            signal.emgtype = app.RecordParameters.emgtype;
            signal.IED = app.RecordParameters.IED;
            signal.feedback{1} = 'Smoothed DR';
            for k = 1:size(Distime,2)
                signal.Dischargetimes{k} = find(Distime(:,k) > 0)';
            end
            for k = 1:size(AUX,1)
                signal.auxiliaryname{k} = ['Auxiliary #' num2str(k)];
            end
            save([app.EditField_saving.Value 'Online ' replace(datestr(datetime('now')),':','_') '.mat'], 'signal');

            % Update the results of the last decomposition
            app.OnlineParameters.Timeplot = linspace(0,size(signal.Pulsetrain{1},2)/str2double(app.FrequencyDropDown.Value),size(signal.Pulsetrain{1},2));
            app.OnlineParameters.Pulsetrain = [];
            app.OnlineParameters.Dischargetimes = {};
            nMU = 1;
            app.OnlineParameters.Pulsetrain = signal.Pulsetrain{1};
            for j = 1:size(Distime,2)
                app.OnlineParameters.Dischargetimes{nMU} =  signal.Dischargetimes{1,j};
                nMU = nMU + 1;
            end
            clearvars Distime

            % Updates the parameters of the decomposition
            % EMG = EMG(:,str2double(app.FrequencyDropDown.Value):end);
            % [~, Distime, ~] = getPulseT(EMG, app.RecordParameters.DiscardChannels{idxmuscle1}, app.DecompParameters.MUFilters{idxmuscle1}, str2double(app.FrequencyDropDown.Value));
            % app.DecompParameters.MUFilters{idxmuscle1} = getMUfilters(EMG, app.RecordParameters.DiscardChannels{idxmuscle1}, Distime);
            % [app.DecompParameters.extensionfactor(idxmuscle1), app.DecompParameters.iReSIG{idxmuscle1}, app.DecompParameters.norm{idxmuscle1}, app.DecompParameters.centroid{idxmuscle1}] = getonlineparameters(EMG, app.RecordParameters.DiscardChannels{idxmuscle1}, app.DecompParameters.MUFilters{idxmuscle1}, str2double(app.FrequencyDropDown.Value));

            % Update the UI for the next acquisition
            app.InitialisetheaquisitionButton.Enable = 'on';
            app.StoptheacquisitionButton.Enable = 'off';
            app.StartQuadrantButton.Enable = 'off';
            app.StartRasterPlotButton.Enable = 'off';
            app.StartDRtrackingButton.Enable = 'off';
            app.DisplaythePulsetrainsButton.Enable = 'on';
        end

        % Button pushed function: StartQuadrantButton
        function StartQuadrantButtonPushed(app, event)
            C1 = strsplit(app.XaxisdisplayedDropDown.Value,'_');
            C2 = strsplit(app.YaxisdisplayedDropDown.Value,'_');
            idxmuscle1 = str2double(C1{2});
            idxmuscle2 = str2double(C2{2});
            idxmu1 = str2double(C1{4});
            idxmu2 = str2double(C2{4});

            nwin = floor(app.OnlineParameters.durationonline/app.ComParameters.nsamp);
            k = 1;

            % Pre allocate empty matrices
            Time = linspace(0,nwin*app.ComParameters.nsamp/str2double(app.FrequencyDropDown.Value),nwin*app.ComParameters.nsamp);
            EMG = zeros(sum(app.ComParameters.gridchannels(:) < 7 & app.ComParameters.gridchannels(:) > 0),app.OnlineParameters.durationonline);
            AUX = zeros(sum(app.ComParameters.gridchannels == 7),app.OnlineParameters.durationonline);
            Force = NaN(1,app.OnlineParameters.durationonline);
            forceidx = find(app.ComParameters.gridchannels == 7, 1, 'First');    
            idxgrids = app.ComParameters.gridchannels(app.ComParameters.gridchannels < 7 & app.ComParameters.gridchannels > 0);

            EMGtmp1{1} = zeros(sum(app.ComParameters.gridchannels(:) == idxmuscle1),app.ComParameters.nsamp);
            EMGtmp2{1} = zeros(sum(app.DecompParameters.EMGmask{idxmuscle1}==0),app.ComParameters.nsamp);
            esample2{1} = zeros(sum(app.DecompParameters.EMGmask{idxmuscle1}==0)*app.DecompParameters.extensionfactor(idxmuscle1),app.DecompParameters.extensionfactor(idxmuscle1)-1);
            Distime{1} = zeros(nwin*app.ComParameters.nsamp, size(app.DecompParameters.MUFilters{idxmuscle1},2));
            signal.Pulsetrain{1} = zeros(size(app.DecompParameters.MUFilters{idxmuscle1},2), app.ComParameters.nsamp*nwin);
            noise_centroids{1} = ones(app.ComParameters.nsamp,size(app.DecompParameters.MUFilters{idxmuscle1},2)) .* (app.DecompParameters.centroid{idxmuscle1}(:,1)');
            spike_centroids{1} = ones(app.ComParameters.nsamp,size(app.DecompParameters.MUFilters{idxmuscle1},2)) .* (app.DecompParameters.centroid{idxmuscle1}(:,2)');
            MUfilt{1} = app.DecompParameters.MUFilters{idxmuscle1}' * app.DecompParameters.iReSIG{idxmuscle1};

            EMGtmp1{2} = zeros(sum(app.ComParameters.gridchannels(:) == idxmuscle2),app.ComParameters.nsamp);
            EMGtmp2{2} = zeros(sum(app.DecompParameters.EMGmask{idxmuscle2}==0),app.ComParameters.nsamp);
            esample2{2} = zeros(sum(app.DecompParameters.EMGmask{idxmuscle2}==0)*app.DecompParameters.extensionfactor(idxmuscle2),app.DecompParameters.extensionfactor(idxmuscle2)-1);
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
            plot(app.UIAxes4, DR{1}(1:str2double(app.RefreshrateDropDown.Value),idxmu1) , DR{2}(1:str2double(app.RefreshrateDropDown.Value),idxmu2), DR{1}(k,idxmu1) , DR{2}(k,idxmu2),'o', 'LineWidth', 4, 'MarkerSize', 20)
            plot(app.UIAxes5, 1, forcefb(k)/app.RecordParameters.MVC * 100,'o', 'LineWidth', 4, 'MarkerSize', 20)
            line(app.UIAxes5,[0 2], [feedback(k)*0.95 feedback(k)*0.95],'LineWidth', 4)
            line(app.UIAxes5,[0 2], [feedback(k)*1.05 feedback(k)*1.05],'LineWidth', 4)
            app.UIAxes4.XLim = [0 app.DecompParameters.DR{idxmuscle1}(idxmu1)*1.5];
            app.UIAxes4.YLim = [0 app.DecompParameters.DR{idxmuscle2}(idxmu2)*1.5];
            target1 = (app.DecompParameters.DR{idxmuscle1}(idxmu1)*1.5) * tan(pi/6)*(app.DecompParameters.DR{idxmuscle2}(idxmu2)*1.5)/(app.DecompParameters.DR{idxmuscle1}(idxmu1)*1.5);
            target2 = (app.DecompParameters.DR{idxmuscle2}(idxmu2)*1.5) / ((app.DecompParameters.DR{idxmuscle2}(idxmu2)*1.5)/(tan(pi/6)*(app.DecompParameters.DR{idxmuscle1}(idxmu1)*1.5)));
            app.UIAxes5.XLim = [0 2];
            app.UIAxes5.YLim = [0 max(app.OnlineParameters.targetonline)*1.25];
            app.UIAxes4.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes4.YColor = [0.9412 0.9412 0.9412];
            app.UIAxes5.XColor = [0.9412 0.9412 0.9412];
            app.UIAxes5.YColor = [0.9412 0.9412 0.9412];
            xlabel(app.UIAxes4,'Discharge rate MU1 (pps)');
            ylabel(app.UIAxes4,'Discharge rate MU2 (pps)');
            app.UIAxes4.ColorOrder = cool(4);
            app.UIAxes5.ColorOrder = cool(3);
            app.UIAxes2.ColorOrder = cool(2);

            % Get the data
            app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) + 1; % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);
            fopen(app.ComParameters.tcpSocket);
            set(app.ComParameters.tcpSocket, 'ByteOrder', 'little-endian');
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8'); % Send the configuration to quattrocento
            app.StoptheAcquisitionButton.Enable = 'on';
            
            while k <= nwin - str2double(app.RefreshrateDropDown.Value) * 5
                data = fread(app.ComParameters.tcpSocket, [app.ComParameters.nchannel, app.ComParameters.nsamp], 'int16');
                EMG(:,(k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp) = data(app.ComParameters.gridchannels < 7 & app.ComParameters.gridchannels > 0, :);
                AUX(:,(k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp) = data(app.ComParameters.gridchannels == 7, :);
                Force(:,(k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp) = (data(forceidx,:) - app.RecordParameters.offsetforce);
                forcefb(k) = mean(abs(Force((k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp)));
                feedback(k) = mean(app.OnlineParameters.targetonline((k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp));
                
                EMGtmp1{1} = EMG(idxgrids == idxmuscle1, (k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp);
                EMGtmp2{1} = EMGtmp1{1}(app.DecompParameters.EMGmask{idxmuscle1}==0, :);
                [signal.Pulsetrain{1}(:,(k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp), Distime{1}((k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp, :), esample2{1}] = getspikesonline(EMGtmp2{1}, app.DecompParameters.extensionfactor(idxmuscle1), esample2{1}, MUfilt{1}, app.DecompParameters.norm{idxmuscle1}, noise_centroids{1}, spike_centroids{1}, app.ComParameters.nsamp, str2double(app.FrequencyDropDown.Value));
                
                EMGtmp1{2} = EMG(idxgrids == idxmuscle2, (k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp);
                EMGtmp2{2} = EMGtmp1{2}(app.DecompParameters.EMGmask{idxmuscle2}==0, :);
                [signal.Pulsetrain{2}(:,(k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp), Distime{2}((k-1)*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp, :), esample2{2}] = getspikesonline(EMGtmp2{2}, app.DecompParameters.extensionfactor(idxmuscle2), esample2{2}, MUfilt{2}, app.DecompParameters.norm{idxmuscle2}, noise_centroids{2}, spike_centroids{2}, app.ComParameters.nsamp, str2double(app.FrequencyDropDown.Value));

                if k < str2double(app.RefreshrateDropDown.Value)
                    DR{1}(k,:) = sum(Distime{1}((k-1)*app.ComParameters.nsamp+1:str2double(app.RefreshrateDropDown.Value)*app.ComParameters.nsamp, :) > 0, 1);
                    DR{2}(k,:) = sum(Distime{2}((k-1)*app.ComParameters.nsamp+1:str2double(app.RefreshrateDropDown.Value)*app.ComParameters.nsamp, :) > 0, 1);    
                    plot(app.UIAxes4, DR{1}(k:k+(str2double(app.RefreshrateDropDown.Value)-1),idxmu1) , DR{2}(k:k+(str2double(app.RefreshrateDropDown.Value)-1),idxmu2), DR{1}(k,idxmu1) , DR{2}(k,idxmu2),'o', 'LineWidth', 4, 'MarkerSize', 20)
                    line(app.UIAxes4,[0 target2], [0 (app.DecompParameters.DR{idxmuscle2}(idxmu2)*1.5)],'LineWidth', 4)
                    line(app.UIAxes4,[0 (app.DecompParameters.DR{idxmuscle1}(idxmu1)*1.5)], [0 target1],'LineWidth', 4)
                    plot(app.UIAxes5, 1, forcefb(k)/app.RecordParameters.MVC * 100,'o', 'LineWidth', 4, 'MarkerSize', 20)
                    line(app.UIAxes5,[0 2], [feedback(k)*0.95 feedback(k)*0.95],'LineWidth', 4)
                    line(app.UIAxes5,[0 2], [feedback(k)*1.05 feedback(k)*1.05],'LineWidth', 4)
                    plot(app.UIAxes2, Time, app.OnlineParameters.targetonline, Time(k*app.ComParameters.nsamp), app.OnlineParameters.targetonline(k*app.ComParameters.nsamp), 'o', 'MarkerSize', 20, 'LineWidth', 2);

                else
                    DR{1}(k,:) = sum(Distime{1}((k-(str2double(app.RefreshrateDropDown.Value)-1))*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp, :) > 0, 1);
                    DR{2}(k,:) = sum(Distime{2}((k-(str2double(app.RefreshrateDropDown.Value)-1))*app.ComParameters.nsamp+1:k*app.ComParameters.nsamp, :) > 0, 1);
                    DR{1}(k,:) = mean(DR{1}(k-(app.SmoothingEditField.Value-1):k,:), 1);
                    DR{2}(k,:) = mean(DR{2}(k-(app.SmoothingEditField.Value-1):k,:), 1);
                    plot(app.UIAxes4, DR{1}(k-(str2double(app.RefreshrateDropDown.Value)-1):k,idxmu1) , DR{2}(k-(str2double(app.RefreshrateDropDown.Value)-1):k,idxmu2), DR{1}(k,idxmu1) , DR{2}(k,idxmu2),'o', 'LineWidth', 4, 'MarkerSize', 20)
                    plot(app.UIAxes5, 1, forcefb(k)/app.RecordParameters.MVC * 100,'o', 'LineWidth', 4, 'MarkerSize', 20)
                    line(app.UIAxes4,[0 target2], [0 (app.DecompParameters.DR{idxmuscle2}(idxmu2)*1.5)],'LineWidth', 4)
                    line(app.UIAxes4,[0 (app.DecompParameters.DR{idxmuscle1}(idxmu1)*1.5)], [0 target1],'LineWidth', 4)
                    line(app.UIAxes5,[0 2], [feedback(k)*0.95 feedback(k)*0.95],'LineWidth', 4)
                    line(app.UIAxes5,[0 2], [feedback(k)*1.05 feedback(k)*1.05],'LineWidth', 4)
                    plot(app.UIAxes2, Time, app.OnlineParameters.targetonline, Time(k*app.ComParameters.nsamp), app.OnlineParameters.targetonline(k*app.ComParameters.nsamp), 'o', 'MarkerSize', 20, 'LineWidth', 2);
                end
                drawnow
                k = k+1;
            end
            app.ComParameters.ConfString(1) = app.ComParameters.ConfString(1) - 1; % Update the first byte that start the data transer
            app.ComParameters.ConfString(40) = CRC8(app.ComParameters.ConfString, 39);            
            fwrite(app.ComParameters.tcpSocket, app.ComParameters.ConfString, 'uint8');
            fclose(app.ComParameters.tcpSocket); % Close the communication
            flush(app.ComParameters.tcpSocket)

            % Save the data
            signal.data = EMG(idxgrids == idxmuscle1 | idxgrids == idxmuscle2, :);
            signal.allEMG = EMG;
            signal.auxiliary = AUX;
            signal.target = app.OnlineParameters.targetonline;
            signal.path = Force;
            signal.fsamp = str2double(app.FrequencyDropDown.Value);
            signal.muscle{1} = app.RecordParameters.Muscles{idxmuscle1};
            signal.nChan = size(EMG,1);
            signal.ngrid = app.RecordParameters.ngrid;
            signal.EMGmask{1} = app.DecompParameters.EMGmask{idxmuscle1};
            signal.gridname{1} = app.file.signal.gridname{idxmuscle1};
            signal.coordinates = app.RecordParameters.coordinates;
            signal.emgtype = app.RecordParameters.emgtype;
            signal.IED = app.RecordParameters.IED;
            for k = 1:size(AUX,1)
                signal.auxiliaryname{k} = ['Auxiliary #' num2str(k)];
            end
            signal.feedback{1} = 'Quadrant_MU';
            for i = 1:2
                for k = 1:size(Distime{i},2)
                    signal.Dischargetimes{i,k} = find(Distime{i}(:,k) > 0)';
                end
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
            % EMG = EMG(:,str2double(app.FrequencyDropDown.Value):end);
            % [~, Distime, ~] = getPulseT(EMG((idxmuscle1-1)*64+1:idxmuscle1*64,:), app.RecordParameters.DiscardChannels{idxmuscle1}, app.DecompParameters.MUFilters{idxmuscle1}, str2double(app.FrequencyDropDown.Value));
            % app.DecompParameters.MUFilters{idxmuscle1} = getMUfilters(EMG((idxmuscle1-1)*64+1:idxmuscle1*64,:), app.RecordParameters.DiscardChannels{idxmuscle1}, Distime);
            % [app.DecompParameters.extensionfactor(idxmuscle1), app.DecompParameters.iReSIG{idxmuscle1}, app.DecompParameters.norm{idxmuscle1}, app.DecompParameters.centroid{idxmuscle1}] = getonlineparameters(EMG((idxmuscle1-1)*64+1:idxmuscle1*64,:), app.RecordParameters.DiscardChannels{idxmuscle1}, app.DecompParameters.MUFilters{idxmuscle1}, str2double(app.FrequencyDropDown.Value));
            % [~, Distime, ~] = getPulseT(EMG((idxmuscle2-1)*64+1:idxmuscle2*64,:), app.RecordParameters.DiscardChannels{idxmuscle2}, app.DecompParameters.MUFilters{idxmuscle2}, str2double(app.FrequencyDropDown.Value));
            % app.DecompParameters.MUFilters{idxmuscle2} = getMUfilters(EMG((idxmuscle2-1)*64+1:idxmuscle2*64,:), app.RecordParameters.DiscardChannels{idxmuscle2}, Distime);
            % [app.DecompParameters.extensionfactor(idxmuscle2), app.DecompParameters.iReSIG{idxmuscle2}, app.DecompParameters.norm{idxmuscle2}, app.DecompParameters.centroid{idxmuscle2}] = getonlineparameters(EMG((idxmuscle2-1)*64+1:idxmuscle2*64,:), app.RecordParameters.DiscardChannels{idxmuscle2}, app.DecompParameters.MUFilters{idxmuscle2}, str2double(app.FrequencyDropDown.Value));

            % Update the UI for the next acquisition
            app.InitialisetheaquisitionButton.Enable = 'on';
            app.StoptheacquisitionButton.Enable = 'off';
            app.StartQuadrantButton.Enable = 'off';
            app.StartRasterPlotButton.Enable = 'off';
            app.StartDRtrackingButton.Enable = 'off';
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

        % Button pushed function: SelectfileButton
        function SelectfileButtonPushed(app, event)
            app.UIFigure.Visible = 'off'; 
            [app.filename2,app.pathname2] = uigetfile;
            app.UIFigure.Visible = 'on'; 
            app.EditField_saving_2.Value = app.filename2;
        end

        % Button pushed function: ImportdataButton
        function ImportdataButtonPushed(app, event)
            app.MUDISPLAYEDDropDown.Items = {};

            % Load the file
            if contains(app.filename2,'edited')
                files = load([app.pathname2 app.filename2], 'parameters', 'signal', 'edition'); 
                for i = 1:files.signal.ngrid
                    % Update the list and load the edited files
                    for j = 1:size(files.edition.Pulsetrain{i},1)
                        app.MUDISPLAYEDDropDown.Items = horzcat(app.MUDISPLAYEDDropDown.Items, {['Grid_', num2str(i), '_MU_' , num2str(j)]});
                        files.edition.silval{i,j} = getsil(files.signal.Pulsetrain{i}(j,:), files.signal.fsamp);
                    end
                end
                app.MUDISPLAYEDDropDown.Enable = 'on';
            else
                files = load([app.pathname2 app.filename2], 'parameters', 'signal');   
                for i = 1:files.signal.ngrid
                    % Update the list and load the edited files
                    files.edition.Pulsetrain{i} = files.signal.Pulsetrain{i};
                    for j = 1:size(files.signal.Pulsetrain{i},1)
                        files.edition.Dischargetimes{i,j} = files.signal.Dischargetimes{i,j};
                        app.MUDISPLAYEDDropDown.Items = horzcat(app.MUDISPLAYEDDropDown.Items, {['Grid_', num2str(i), '_MU_' , num2str(j)]});
                        files.edition.silval{i,j} = getsil(files.signal.Pulsetrain{i}(j,:), files.signal.fsamp);
                    end
                end
                app.MUDISPLAYEDDropDown.Enable = 'on';
                files.edition.time = linspace(0,size(files.signal.Pulsetrain{i},2)/files.signal.fsamp, size(files.signal.Pulsetrain{i},2));
            end
            
            files.edition.arraynb = zeros(size(files.signal.data,1),1);
            ch1 = 1;
            for i = 1:files.signal.ngrid
                files.edition.arraynb(ch1:ch1+length(files.signal.EMGmask{i})-1) = i;
                ch1 = ch1+length(files.signal.EMGmask{i});
            end

            % Display the first MU
            C = strsplit(app.MUDISPLAYEDDropDown.Value,'_');
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

        % Value changed function: MUDISPLAYEDDropDown
        function MUDISPLAYEDDropDownValueChanged(app, event)
            C = strsplit(app.MUDISPLAYEDDropDown.Value,'_');
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
            C = strsplit(app.MUDISPLAYEDDropDown.Value,'_');
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
            C = strsplit(app.MUDISPLAYEDDropDown.Value,'_');
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
            C = strsplit(app.MUDISPLAYEDDropDown.Value,'_');
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
            C = strsplit(app.MUDISPLAYEDDropDown.Value,'_');
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
            C = strsplit(app.MUDISPLAYEDDropDown.Value,'_');
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

        % Button pushed function: UpdateMUfilterButton
        function UpdateMUfilterButtonPushed(app, event)
            C = strsplit(app.MUDISPLAYEDDropDown.Value,'_');
            
            % Update MU filter
            nbextchan = 1000;
            idx = find(app.MUedition.edition.time > app.graphstart & app.MUedition.edition.time < app.graphend);
            EMG = app.MUedition.signal.data(app.MUedition.edition.arraynb==str2double(C{2}),:);
            EMG = EMG(app.MUedition.signal.EMGmask{str2double(C{2})}==0,idx);
            spikes1 = intersect(idx(round(0.1*app.MUedition.signal.fsamp):end-round(0.1*app.MUedition.signal.fsamp)),app.MUedition.edition.Dischargetimes{str2double(C{2}),str2double(C{4})});
            spikes2 = (spikes1 - idx(1));
            exFactor1 = round(nbextchan/size(EMG,1));
            eSIG = demean(extend(EMG,exFactor1));
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

            app.MUDISPLAYEDDropDown.Items = {};

            for i = 1:app.MUedition.signal.ngrid
                % Update the list and load the edited files
                for j = 1:size(app.MUedition.edition.Pulsetrain{i},1)
                    app.MUDISPLAYEDDropDown.Items = horzcat(app.MUDISPLAYEDDropDown.Items, {['Grid_', num2str(i), '_MU_' , num2str(j)]});
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
                title(['Grid#' num2str(i) ' with ' num2str(j) ' MUs'], 'Color', [0.9412 0.9412 0.9412], 'FontName', 'Poppins')
                xlabel('Time (s)', 'FontName', 'Poppins')
                ylabel('MU#', 'FontName', 'Poppins')
                ylim([0 j+1])
                set(gcf,'Color', [0.15 0.15 0.15]);
                set(gcf,'units','normalized','outerposition',[0 0 1 1])
                set(gca,'Color', [0.15 0.15 0.15], 'XColor', [0.9412 0.9412 0.9412], 'YColor', [0.9412 0.9412 0.9412]);
            end
            sgtitle(['Raster plots for ' num2str(i) ' grids'], 'FontName', 'Poppins', 'FontSize', 25, 'Color', [0.9412 0.9412 0.9412])
        end

        % Button pushed function: PlotMUfiringratesButton
        function PlotMUfiringratesButtonPushed(app, event)
            C = strsplit(app.MUDISPLAYEDDropDown.Value,'_');
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

                title(['Array#' num2str(i) ' with ' num2str(j) ' MUs'], 'Color', [0.9412 0.9412 0.9412], 'FontName', 'Avenir Next')
                xlabel('Time (s)', 'FontName', 'Poppins')
                ylabel('Smoothed discharge rates', 'FontName', 'Poppins')
                set(gcf,'Color', [0.15 0.15 0.15]);
                set(gcf,'units','normalized','outerposition',[0 0 1 1])
                set(gca,'Color', [0.15 0.15 0.15], 'XColor', [0.9412 0.9412 0.9412], 'YColor', [0.9412 0.9412 0.9412]);
            end
            sgtitle(['Smoothed discharge rates for ' num2str(i) ' grids'], 'FontName', 'Poppins', 'FontSize', 25, 'Color', [0.9412 0.9412 0.9412])
        end

        % Button pushed function: SaveButton
        function SaveButtonPushed(app, event)
            if contains(app.filename2,'edited')
                savename = [app.pathname2 app.filename2];
            else
                savename = [app.pathname2 app.filename2 '_edited.mat'];
            end
            signal = app.MUedition.signal;
            edition = app.MUedition.edition;
            save(savename, 'signal', 'edition', '-v7.3');
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Color = [0.149 0.149 0.149];
            app.UIFigure.Position = [1 100 1500 850];
            app.UIFigure.Name = 'MATLAB App';

            % Create VisualisationBiofeedback
            app.VisualisationBiofeedback = uipanel(app.UIFigure);
            app.VisualisationBiofeedback.ForegroundColor = [0.9412 0.9412 0.9412];
            app.VisualisationBiofeedback.BackgroundColor = [0.149 0.149 0.149];
            app.VisualisationBiofeedback.FontName = 'Avenir Next';
            app.VisualisationBiofeedback.FontWeight = 'bold';
            app.VisualisationBiofeedback.FontSize = 14;
            app.VisualisationBiofeedback.Position = [400 0 1100 850];

            % Create UIAxes4
            app.UIAxes4 = uiaxes(app.VisualisationBiofeedback);
            xlabel(app.UIAxes4, 'Discharge rate (pps)')
            ylabel(app.UIAxes4, 'Discharge rate (pps)')
            zlabel(app.UIAxes4, 'Z')
            app.UIAxes4.Toolbar.Visible = 'off';
            app.UIAxes4.FontName = 'Poppins';
            app.UIAxes4.Color = 'none';
            app.UIAxes4.GridColor = [0.9412 0.9412 0.9412];
            app.UIAxes4.MinorGridColor = [0 0 0];
            app.UIAxes4.FontSize = 18;
            app.UIAxes4.HitTest = 'off';
            app.UIAxes4.PickableParts = 'none';
            app.UIAxes4.Position = [11 8 856 793];

            % Create UIAxes5
            app.UIAxes5 = uiaxes(app.VisualisationBiofeedback);
            ylabel(app.UIAxes5, 'Force (%MVC)')
            app.UIAxes5.Toolbar.Visible = 'off';
            app.UIAxes5.AmbientLightColor = 'none';
            app.UIAxes5.FontName = 'Poppins';
            app.UIAxes5.Color = 'none';
            app.UIAxes5.GridColor = 'none';
            app.UIAxes5.MinorGridColor = 'none';
            app.UIAxes5.FontSize = 18;
            app.UIAxes5.HitTest = 'off';
            app.UIAxes5.PickableParts = 'none';
            app.UIAxes5.Position = [879 8 207 794];

            % Create XaxisdisplayedDropDown
            app.XaxisdisplayedDropDown = uidropdown(app.VisualisationBiofeedback);
            app.XaxisdisplayedDropDown.Items = {'No MUs'};
            app.XaxisdisplayedDropDown.Enable = 'off';
            app.XaxisdisplayedDropDown.FontName = 'Poppins';
            app.XaxisdisplayedDropDown.FontSize = 18;
            app.XaxisdisplayedDropDown.FontColor = [0.9412 0.9412 0.9412];
            app.XaxisdisplayedDropDown.BackgroundColor = [0.149 0.149 0.149];
            app.XaxisdisplayedDropDown.Position = [181 807 137 40];
            app.XaxisdisplayedDropDown.Value = 'No MUs';

            % Create XaxisdisplayedDropDownLabel
            app.XaxisdisplayedDropDownLabel = uilabel(app.VisualisationBiofeedback);
            app.XaxisdisplayedDropDownLabel.HorizontalAlignment = 'center';
            app.XaxisdisplayedDropDownLabel.FontName = 'Poppins';
            app.XaxisdisplayedDropDownLabel.FontSize = 18;
            app.XaxisdisplayedDropDownLabel.FontWeight = 'bold';
            app.XaxisdisplayedDropDownLabel.FontColor = [0.9412 0.9412 0.9412];
            app.XaxisdisplayedDropDownLabel.Position = [11 807 156 40];
            app.XaxisdisplayedDropDownLabel.Text = 'X axis displayed';

            % Create StoptheacquisitionButton
            app.StoptheacquisitionButton = uibutton(app.VisualisationBiofeedback, 'push');
            app.StoptheacquisitionButton.ButtonPushedFcn = createCallbackFcn(app, @StoptheacquisitionButtonPushed, true);
            app.StoptheacquisitionButton.BackgroundColor = [0.149 0.149 0.149];
            app.StoptheacquisitionButton.FontName = 'Poppins';
            app.StoptheacquisitionButton.FontSize = 18;
            app.StoptheacquisitionButton.FontColor = [1 0 0];
            app.StoptheacquisitionButton.Enable = 'off';
            app.StoptheacquisitionButton.Position = [880 807 207 40];
            app.StoptheacquisitionButton.Text = 'Stop the acquisition';

            % Create YaxisdisplayedDropDown
            app.YaxisdisplayedDropDown = uidropdown(app.VisualisationBiofeedback);
            app.YaxisdisplayedDropDown.Items = {'No MUs'};
            app.YaxisdisplayedDropDown.Enable = 'off';
            app.YaxisdisplayedDropDown.FontName = 'Poppins';
            app.YaxisdisplayedDropDown.FontSize = 18;
            app.YaxisdisplayedDropDown.FontColor = [0.9412 0.9412 0.9412];
            app.YaxisdisplayedDropDown.BackgroundColor = [0.149 0.149 0.149];
            app.YaxisdisplayedDropDown.Position = [501 807 137 40];
            app.YaxisdisplayedDropDown.Value = 'No MUs';

            % Create YaxisdisplayedDropDownLabel
            app.YaxisdisplayedDropDownLabel = uilabel(app.VisualisationBiofeedback);
            app.YaxisdisplayedDropDownLabel.HorizontalAlignment = 'center';
            app.YaxisdisplayedDropDownLabel.FontName = 'Poppins';
            app.YaxisdisplayedDropDownLabel.FontSize = 18;
            app.YaxisdisplayedDropDownLabel.FontWeight = 'bold';
            app.YaxisdisplayedDropDownLabel.FontColor = [0.9412 0.9412 0.9412];
            app.YaxisdisplayedDropDownLabel.Position = [332 807 155 40];
            app.YaxisdisplayedDropDownLabel.Text = 'Y axis displayed';

            % Create InitialisetheaquisitionButton
            app.InitialisetheaquisitionButton = uibutton(app.VisualisationBiofeedback, 'push');
            app.InitialisetheaquisitionButton.ButtonPushedFcn = createCallbackFcn(app, @InitialisetheaquisitionButtonPushed, true);
            app.InitialisetheaquisitionButton.BackgroundColor = [0.149 0.149 0.149];
            app.InitialisetheaquisitionButton.FontName = 'Poppins';
            app.InitialisetheaquisitionButton.FontSize = 18;
            app.InitialisetheaquisitionButton.FontColor = [0.3922 0.8314 0.0745];
            app.InitialisetheaquisitionButton.Position = [651 807 216 40];
            app.InitialisetheaquisitionButton.Text = 'Initialise the aquisition';

            % Create ManualeditionPanel
            app.ManualeditionPanel = uipanel(app.UIFigure);
            app.ManualeditionPanel.ForegroundColor = [0.9412 0.9412 0.9412];
            app.ManualeditionPanel.BackgroundColor = [0.149 0.149 0.149];
            app.ManualeditionPanel.FontName = 'Avenir Next';
            app.ManualeditionPanel.FontWeight = 'bold';
            app.ManualeditionPanel.FontSize = 14;
            app.ManualeditionPanel.Position = [400 0 1100 850];

            % Create UIAxesSpiketrain
            app.UIAxesSpiketrain = uiaxes(app.ManualeditionPanel);
            xlabel(app.UIAxesSpiketrain, 'Time (s)')
            ylabel(app.UIAxesSpiketrain, 'Pulse train')
            zlabel(app.UIAxesSpiketrain, 'Z')
            app.UIAxesSpiketrain.Toolbar.Visible = 'off';
            app.UIAxesSpiketrain.FontName = 'Avenir Next';
            app.UIAxesSpiketrain.Color = 'none';
            app.UIAxesSpiketrain.FontSize = 18;
            app.UIAxesSpiketrain.Interruptible = 'off';
            app.UIAxesSpiketrain.HitTest = 'off';
            app.UIAxesSpiketrain.PickableParts = 'none';
            app.UIAxesSpiketrain.Position = [10 69 1076 388];

            % Create UIAxesDR
            app.UIAxesDR = uiaxes(app.ManualeditionPanel);
            xlabel(app.UIAxesDR, 'Time (s)')
            ylabel(app.UIAxesDR, 'Discharge rate')
            zlabel(app.UIAxesDR, 'Z')
            app.UIAxesDR.Toolbar.Visible = 'off';
            app.UIAxesDR.FontName = 'Avenir Next';
            app.UIAxesDR.Color = 'none';
            app.UIAxesDR.GridColor = [0.15 0.15 0.15];
            app.UIAxesDR.MinorGridColor = [0.9412 0.9412 0.9412];
            app.UIAxesDR.FontSize = 18;
            app.UIAxesDR.Interruptible = 'off';
            app.UIAxesDR.HitTest = 'off';
            app.UIAxesDR.PickableParts = 'none';
            app.UIAxesDR.Position = [10 538 1076 254];

            % Create MUDISPLAYEDDropDown
            app.MUDISPLAYEDDropDown = uidropdown(app.ManualeditionPanel);
            app.MUDISPLAYEDDropDown.Items = {'No MUs'};
            app.MUDISPLAYEDDropDown.ValueChangedFcn = createCallbackFcn(app, @MUDISPLAYEDDropDownValueChanged, true);
            app.MUDISPLAYEDDropDown.Enable = 'off';
            app.MUDISPLAYEDDropDown.FontName = 'Poppins';
            app.MUDISPLAYEDDropDown.FontSize = 24;
            app.MUDISPLAYEDDropDown.FontWeight = 'bold';
            app.MUDISPLAYEDDropDown.FontColor = [0.9412 0.9412 0.9412];
            app.MUDISPLAYEDDropDown.BackgroundColor = [0.149 0.149 0.149];
            app.MUDISPLAYEDDropDown.Position = [221 813 294 34];
            app.MUDISPLAYEDDropDown.Value = 'No MUs';

            % Create MUDISPLAYEDDropDownLabel
            app.MUDISPLAYEDDropDownLabel = uilabel(app.ManualeditionPanel);
            app.MUDISPLAYEDDropDownLabel.HorizontalAlignment = 'center';
            app.MUDISPLAYEDDropDownLabel.FontName = 'Poppins';
            app.MUDISPLAYEDDropDownLabel.FontSize = 24;
            app.MUDISPLAYEDDropDownLabel.FontWeight = 'bold';
            app.MUDISPLAYEDDropDownLabel.FontColor = [0.9412 0.9412 0.9412];
            app.MUDISPLAYEDDropDownLabel.Position = [5 813 207 34];
            app.MUDISPLAYEDDropDownLabel.Text = 'MU DISPLAYED #';

            % Create RemoveoutliersButton
            app.RemoveoutliersButton = uibutton(app.ManualeditionPanel, 'push');
            app.RemoveoutliersButton.ButtonPushedFcn = createCallbackFcn(app, @RemoveoutliersButtonPushed, true);
            app.RemoveoutliersButton.BackgroundColor = [0.149 0.149 0.149];
            app.RemoveoutliersButton.FontName = 'Avenir Next';
            app.RemoveoutliersButton.FontSize = 18;
            app.RemoveoutliersButton.FontWeight = 'bold';
            app.RemoveoutliersButton.FontColor = [0.9412 0.9412 0.9412];
            app.RemoveoutliersButton.Position = [765 807 200 40];
            app.RemoveoutliersButton.Text = 'Remove outliers';

            % Create FlagMUfordeletionButton
            app.FlagMUfordeletionButton = uibutton(app.ManualeditionPanel, 'push');
            app.FlagMUfordeletionButton.ButtonPushedFcn = createCallbackFcn(app, @FlagMUfordeletionButtonPushed, true);
            app.FlagMUfordeletionButton.BackgroundColor = [0.149 0.149 0.149];
            app.FlagMUfordeletionButton.FontName = 'Avenir Next';
            app.FlagMUfordeletionButton.FontSize = 18;
            app.FlagMUfordeletionButton.FontWeight = 'bold';
            app.FlagMUfordeletionButton.FontColor = [1 0 0];
            app.FlagMUfordeletionButton.Position = [537 807 200 40];
            app.FlagMUfordeletionButton.Text = 'Flag MU for deletion';

            % Create AddspikesButton
            app.AddspikesButton = uibutton(app.ManualeditionPanel, 'push');
            app.AddspikesButton.ButtonPushedFcn = createCallbackFcn(app, @AddspikesButtonPushed, true);
            app.AddspikesButton.BackgroundColor = [0.149 0.149 0.149];
            app.AddspikesButton.FontName = 'Avenir Next';
            app.AddspikesButton.FontSize = 18;
            app.AddspikesButton.FontWeight = 'bold';
            app.AddspikesButton.FontColor = [0.9412 0.9412 0.9412];
            app.AddspikesButton.Position = [10 477 250 40];
            app.AddspikesButton.Text = 'Add spikes';

            % Create DeletespikesButton
            app.DeletespikesButton = uibutton(app.ManualeditionPanel, 'push');
            app.DeletespikesButton.ButtonPushedFcn = createCallbackFcn(app, @DeletespikesButtonPushed, true);
            app.DeletespikesButton.BackgroundColor = [0.149 0.149 0.149];
            app.DeletespikesButton.FontName = 'Avenir Next';
            app.DeletespikesButton.FontSize = 18;
            app.DeletespikesButton.FontWeight = 'bold';
            app.DeletespikesButton.FontColor = [0.9412 0.9412 0.9412];
            app.DeletespikesButton.Position = [285 477 250 40];
            app.DeletespikesButton.Text = 'Delete spikes';

            % Create DeleteDRButton
            app.DeleteDRButton = uibutton(app.ManualeditionPanel, 'push');
            app.DeleteDRButton.ButtonPushedFcn = createCallbackFcn(app, @DeleteDRButtonPushed, true);
            app.DeleteDRButton.BackgroundColor = [0.149 0.149 0.149];
            app.DeleteDRButton.FontName = 'Avenir Next';
            app.DeleteDRButton.FontSize = 18;
            app.DeleteDRButton.FontWeight = 'bold';
            app.DeleteDRButton.FontColor = [0.9412 0.9412 0.9412];
            app.DeleteDRButton.Position = [560 477 250 40];
            app.DeleteDRButton.Text = 'Delete DR';

            % Create ScrollleftButton
            app.ScrollleftButton = uibutton(app.ManualeditionPanel, 'push');
            app.ScrollleftButton.ButtonPushedFcn = createCallbackFcn(app, @ScrollleftButtonPushed, true);
            app.ScrollleftButton.BackgroundColor = [0.149 0.149 0.149];
            app.ScrollleftButton.FontName = 'Avenir Next';
            app.ScrollleftButton.FontSize = 18;
            app.ScrollleftButton.FontWeight = 'bold';
            app.ScrollleftButton.FontColor = [0.9412 0.9412 0.9412];
            app.ScrollleftButton.Position = [10 16 250 40];
            app.ScrollleftButton.Text = '< Scroll left';

            % Create ZoominButton
            app.ZoominButton = uibutton(app.ManualeditionPanel, 'push');
            app.ZoominButton.ButtonPushedFcn = createCallbackFcn(app, @ZoominButtonPushed, true);
            app.ZoominButton.BackgroundColor = [0.149 0.149 0.149];
            app.ZoominButton.FontName = 'Avenir Next';
            app.ZoominButton.FontSize = 18;
            app.ZoominButton.FontWeight = 'bold';
            app.ZoominButton.FontColor = [0.9412 0.9412 0.9412];
            app.ZoominButton.Position = [285 16 250 40];
            app.ZoominButton.Text = 'Zoom in';

            % Create ZoomoutButton
            app.ZoomoutButton = uibutton(app.ManualeditionPanel, 'push');
            app.ZoomoutButton.ButtonPushedFcn = createCallbackFcn(app, @ZoomoutButtonPushed, true);
            app.ZoomoutButton.BackgroundColor = [0.149 0.149 0.149];
            app.ZoomoutButton.FontName = 'Avenir Next';
            app.ZoomoutButton.FontSize = 18;
            app.ZoomoutButton.FontWeight = 'bold';
            app.ZoomoutButton.FontColor = [0.9412 0.9412 0.9412];
            app.ZoomoutButton.Position = [560 16 250 40];
            app.ZoomoutButton.Text = 'Zoom out';

            % Create ScrollrightButton
            app.ScrollrightButton = uibutton(app.ManualeditionPanel, 'push');
            app.ScrollrightButton.ButtonPushedFcn = createCallbackFcn(app, @ScrollrightButtonPushed, true);
            app.ScrollrightButton.BackgroundColor = [0.149 0.149 0.149];
            app.ScrollrightButton.FontName = 'Avenir Next';
            app.ScrollrightButton.FontSize = 18;
            app.ScrollrightButton.FontWeight = 'bold';
            app.ScrollrightButton.FontColor = [0.9412 0.9412 0.9412];
            app.ScrollrightButton.Position = [835 16 250 40];
            app.ScrollrightButton.Text = 'Scroll right >';

            % Create UpdateMUfilterButton
            app.UpdateMUfilterButton = uibutton(app.ManualeditionPanel, 'push');
            app.UpdateMUfilterButton.ButtonPushedFcn = createCallbackFcn(app, @UpdateMUfilterButtonPushed, true);
            app.UpdateMUfilterButton.BackgroundColor = [0.149 0.149 0.149];
            app.UpdateMUfilterButton.FontName = 'Avenir Next';
            app.UpdateMUfilterButton.FontSize = 18;
            app.UpdateMUfilterButton.FontWeight = 'bold';
            app.UpdateMUfilterButton.FontColor = [0.9412 0.9412 0.9412];
            app.UpdateMUfilterButton.Position = [835 477 250 40];
            app.UpdateMUfilterButton.Text = 'Update MU filter';

            % Create EditField_5
            app.EditField_5 = uieditfield(app.ManualeditionPanel, 'text');
            app.EditField_5.FontName = 'Avenir Next';
            app.EditField_5.FontSize = 18;
            app.EditField_5.FontColor = [1 1 1];
            app.EditField_5.BackgroundColor = [0.149 0.149 0.149];
            app.EditField_5.Position = [987 807 99 40];

            % Create VisualisationPanel
            app.VisualisationPanel = uipanel(app.UIFigure);
            app.VisualisationPanel.ForegroundColor = [0.9412 0.9412 0.9412];
            app.VisualisationPanel.BackgroundColor = [0.149 0.149 0.149];
            app.VisualisationPanel.FontName = 'Avenir Next';
            app.VisualisationPanel.FontWeight = 'bold';
            app.VisualisationPanel.FontSize = 14;
            app.VisualisationPanel.Position = [400 0 1100 850];

            % Create UIAxes3
            app.UIAxes3 = uiaxes(app.VisualisationPanel);
            xlabel(app.UIAxes3, 'Time (s)')
            ylabel(app.UIAxes3, 'Channels')
            zlabel(app.UIAxes3, 'Z')
            app.UIAxes3.Toolbar.Visible = 'off';
            app.UIAxes3.FontName = 'Poppins';
            app.UIAxes3.Color = 'none';
            app.UIAxes3.GridColor = [0 0 0];
            app.UIAxes3.MinorGridColor = [0 0 0];
            app.UIAxes3.FontSize = 18;
            app.UIAxes3.HitTest = 'off';
            app.UIAxes3.PickableParts = 'none';
            app.UIAxes3.Position = [4 7 1094 753];

            % Create ARRAYDISPLAYEDDropDown
            app.ARRAYDISPLAYEDDropDown = uidropdown(app.VisualisationPanel);
            app.ARRAYDISPLAYEDDropDown.Items = {'No Muscles'};
            app.ARRAYDISPLAYEDDropDown.Enable = 'off';
            app.ARRAYDISPLAYEDDropDown.FontName = 'Poppins';
            app.ARRAYDISPLAYEDDropDown.FontSize = 24;
            app.ARRAYDISPLAYEDDropDown.FontWeight = 'bold';
            app.ARRAYDISPLAYEDDropDown.FontColor = [0.9412 0.9412 0.9412];
            app.ARRAYDISPLAYEDDropDown.BackgroundColor = [0.149 0.149 0.149];
            app.ARRAYDISPLAYEDDropDown.Position = [272 809 190 40];
            app.ARRAYDISPLAYEDDropDown.Value = 'No Muscles';

            % Create ARRAYDISPLAYEDDropDownLabel
            app.ARRAYDISPLAYEDDropDownLabel = uilabel(app.VisualisationPanel);
            app.ARRAYDISPLAYEDDropDownLabel.HorizontalAlignment = 'center';
            app.ARRAYDISPLAYEDDropDownLabel.FontName = 'Poppins';
            app.ARRAYDISPLAYEDDropDownLabel.FontSize = 24;
            app.ARRAYDISPLAYEDDropDownLabel.FontWeight = 'bold';
            app.ARRAYDISPLAYEDDropDownLabel.FontColor = [0.9412 0.9412 0.9412];
            app.ARRAYDISPLAYEDDropDownLabel.Position = [11 810 252 40];
            app.ARRAYDISPLAYEDDropDownLabel.Text = 'ARRAY DISPLAYED #';

            % Create StoptheAcquisitionButton
            app.StoptheAcquisitionButton = uibutton(app.VisualisationPanel, 'push');
            app.StoptheAcquisitionButton.ButtonPushedFcn = createCallbackFcn(app, @StoptheAcquisitionButtonPushed, true);
            app.StoptheAcquisitionButton.BackgroundColor = [0.149 0.149 0.149];
            app.StoptheAcquisitionButton.FontName = 'Poppins';
            app.StoptheAcquisitionButton.FontSize = 18;
            app.StoptheAcquisitionButton.FontColor = [1 0 0];
            app.StoptheAcquisitionButton.Enable = 'off';
            app.StoptheAcquisitionButton.Position = [826 810 260 40];
            app.StoptheAcquisitionButton.Text = 'Stop the Acquisition';

            % Create InitialisetheAcquisitionButton
            app.InitialisetheAcquisitionButton = uibutton(app.VisualisationPanel, 'push');
            app.InitialisetheAcquisitionButton.ButtonPushedFcn = createCallbackFcn(app, @InitialisetheAcquisitionButtonPushed, true);
            app.InitialisetheAcquisitionButton.BackgroundColor = [0.149 0.149 0.149];
            app.InitialisetheAcquisitionButton.FontName = 'Poppins';
            app.InitialisetheAcquisitionButton.FontSize = 18;
            app.InitialisetheAcquisitionButton.FontColor = [0.3922 0.8314 0.0745];
            app.InitialisetheAcquisitionButton.Position = [531 808 280 40];
            app.InitialisetheAcquisitionButton.Text = 'Initialise the Acquisition';

            % Create EditField_title
            app.EditField_title = uieditfield(app.VisualisationPanel, 'text');
            app.EditField_title.Editable = 'off';
            app.EditField_title.HorizontalAlignment = 'center';
            app.EditField_title.FontName = 'Poppins';
            app.EditField_title.FontSize = 18;
            app.EditField_title.FontWeight = 'bold';
            app.EditField_title.FontColor = [1 1 1];
            app.EditField_title.BackgroundColor = [0.149 0.149 0.149];
            app.EditField_title.Position = [5 768 1094 34];

            % Create BiofeedbackSettingsPanel
            app.BiofeedbackSettingsPanel = uipanel(app.UIFigure);
            app.BiofeedbackSettingsPanel.ForegroundColor = [0.9412 0.9412 0.9412];
            app.BiofeedbackSettingsPanel.BackgroundColor = [0.149 0.149 0.149];
            app.BiofeedbackSettingsPanel.FontName = 'Avenir Next';
            app.BiofeedbackSettingsPanel.FontWeight = 'bold';
            app.BiofeedbackSettingsPanel.FontSize = 14;
            app.BiofeedbackSettingsPanel.Position = [0 0 400 810];

            % Create UIAxes2
            app.UIAxes2 = uiaxes(app.BiofeedbackSettingsPanel);
            xlabel(app.UIAxes2, 'Time')
            ylabel(app.UIAxes2, 'Force')
            zlabel(app.UIAxes2, 'Z')
            app.UIAxes2.Toolbar.Visible = 'off';
            app.UIAxes2.FontName = 'Poppins';
            app.UIAxes2.Color = 'none';
            app.UIAxes2.GridColor = [0.9412 0.9412 0.9412];
            app.UIAxes2.MinorGridColor = [0.9412 0.9412 0.9412];
            app.UIAxes2.FontSize = 18;
            app.UIAxes2.Interruptible = 'off';
            app.UIAxes2.HitTest = 'off';
            app.UIAxes2.PickableParts = 'none';
            app.UIAxes2.Position = [10 344 377 161];

            % Create MVCtargetEditFieldLabel
            app.MVCtargetEditFieldLabel = uilabel(app.BiofeedbackSettingsPanel);
            app.MVCtargetEditFieldLabel.HorizontalAlignment = 'right';
            app.MVCtargetEditFieldLabel.FontName = 'Poppins';
            app.MVCtargetEditFieldLabel.FontSize = 18;
            app.MVCtargetEditFieldLabel.FontColor = [0.9412 0.9412 0.9412];
            app.MVCtargetEditFieldLabel.Position = [19 711 174 23];
            app.MVCtargetEditFieldLabel.Text = 'MVC target';

            % Create MVCtargetEditField
            app.MVCtargetEditField = uieditfield(app.BiofeedbackSettingsPanel, 'numeric');
            app.MVCtargetEditField.Limits = [0 100];
            app.MVCtargetEditField.ValueChangedFcn = createCallbackFcn(app, @MVCtargetEditFieldValueChanged, true);
            app.MVCtargetEditField.FontName = 'Poppins';
            app.MVCtargetEditField.FontSize = 18;
            app.MVCtargetEditField.FontColor = [0.8118 0.502 1];
            app.MVCtargetEditField.BackgroundColor = [0.149 0.149 0.149];
            app.MVCtargetEditField.Position = [208 709 179 24];

            % Create DurationrampEditFieldLabel
            app.DurationrampEditFieldLabel = uilabel(app.BiofeedbackSettingsPanel);
            app.DurationrampEditFieldLabel.HorizontalAlignment = 'right';
            app.DurationrampEditFieldLabel.FontName = 'Poppins';
            app.DurationrampEditFieldLabel.FontSize = 18;
            app.DurationrampEditFieldLabel.FontColor = [0.9412 0.9412 0.9412];
            app.DurationrampEditFieldLabel.Position = [19 679 174 23];
            app.DurationrampEditFieldLabel.Text = 'Duration ramp';

            % Create DurationrampEditField
            app.DurationrampEditField = uieditfield(app.BiofeedbackSettingsPanel, 'numeric');
            app.DurationrampEditField.Limits = [0 Inf];
            app.DurationrampEditField.ValueChangedFcn = createCallbackFcn(app, @DurationrampEditFieldValueChanged, true);
            app.DurationrampEditField.FontName = 'Poppins';
            app.DurationrampEditField.FontSize = 18;
            app.DurationrampEditField.FontColor = [0.8118 0.502 1];
            app.DurationrampEditField.BackgroundColor = [0.149 0.149 0.149];
            app.DurationrampEditField.Position = [208 677 179 24];

            % Create DurationplateauEditFieldLabel
            app.DurationplateauEditFieldLabel = uilabel(app.BiofeedbackSettingsPanel);
            app.DurationplateauEditFieldLabel.HorizontalAlignment = 'right';
            app.DurationplateauEditFieldLabel.FontName = 'Poppins';
            app.DurationplateauEditFieldLabel.FontSize = 18;
            app.DurationplateauEditFieldLabel.FontColor = [0.9412 0.9412 0.9412];
            app.DurationplateauEditFieldLabel.Position = [19 645 176 23];
            app.DurationplateauEditFieldLabel.Text = 'Duration plateau';

            % Create DurationplateauEditField
            app.DurationplateauEditField = uieditfield(app.BiofeedbackSettingsPanel, 'numeric');
            app.DurationplateauEditField.Limits = [0 Inf];
            app.DurationplateauEditField.ValueChangedFcn = createCallbackFcn(app, @DurationplateauEditFieldValueChanged, true);
            app.DurationplateauEditField.FontName = 'Poppins';
            app.DurationplateauEditField.FontSize = 18;
            app.DurationplateauEditField.FontColor = [0.8118 0.502 1];
            app.DurationplateauEditField.BackgroundColor = [0.149 0.149 0.149];
            app.DurationplateauEditField.Position = [208 645 179 24];

            % Create NbiterationsEditFieldLabel
            app.NbiterationsEditFieldLabel = uilabel(app.BiofeedbackSettingsPanel);
            app.NbiterationsEditFieldLabel.HorizontalAlignment = 'right';
            app.NbiterationsEditFieldLabel.FontName = 'Poppins';
            app.NbiterationsEditFieldLabel.FontSize = 18;
            app.NbiterationsEditFieldLabel.FontColor = [0.9412 0.9412 0.9412];
            app.NbiterationsEditFieldLabel.Position = [21 521 174 23];
            app.NbiterationsEditFieldLabel.Text = 'Nb iterations';

            % Create DurationrestEditFieldLabel
            app.DurationrestEditFieldLabel = uilabel(app.BiofeedbackSettingsPanel);
            app.DurationrestEditFieldLabel.HorizontalAlignment = 'right';
            app.DurationrestEditFieldLabel.FontName = 'Poppins';
            app.DurationrestEditFieldLabel.FontSize = 18;
            app.DurationrestEditFieldLabel.FontColor = [0.9412 0.9412 0.9412];
            app.DurationrestEditFieldLabel.Position = [21 551 173 23];
            app.DurationrestEditFieldLabel.Text = 'Duration rest';

            % Create DurationrestEditField
            app.DurationrestEditField = uieditfield(app.BiofeedbackSettingsPanel, 'numeric');
            app.DurationrestEditField.Limits = [0 Inf];
            app.DurationrestEditField.ValueChangedFcn = createCallbackFcn(app, @DurationrestEditFieldValueChanged, true);
            app.DurationrestEditField.FontName = 'Poppins';
            app.DurationrestEditField.FontSize = 18;
            app.DurationrestEditField.FontColor = [0.8118 0.502 1];
            app.DurationrestEditField.BackgroundColor = [0.149 0.149 0.149];
            app.DurationrestEditField.Position = [208 550 179 24];

            % Create NbiterationsEditField
            app.NbiterationsEditField = uieditfield(app.BiofeedbackSettingsPanel, 'numeric');
            app.NbiterationsEditField.Limits = [1 Inf];
            app.NbiterationsEditField.ValueChangedFcn = createCallbackFcn(app, @NbiterationsEditFieldValueChanged, true);
            app.NbiterationsEditField.FontName = 'Poppins';
            app.NbiterationsEditField.FontSize = 18;
            app.NbiterationsEditField.FontColor = [0.8118 0.502 1];
            app.NbiterationsEditField.BackgroundColor = [0.149 0.149 0.149];
            app.NbiterationsEditField.Position = [208 519 179 24];
            app.NbiterationsEditField.Value = 1;

            % Create StartQuadrantButton
            app.StartQuadrantButton = uibutton(app.BiofeedbackSettingsPanel, 'push');
            app.StartQuadrantButton.ButtonPushedFcn = createCallbackFcn(app, @StartQuadrantButtonPushed, true);
            app.StartQuadrantButton.BackgroundColor = [0.149 0.149 0.149];
            app.StartQuadrantButton.FontName = 'Poppins';
            app.StartQuadrantButton.FontSize = 18;
            app.StartQuadrantButton.FontColor = [0.5608 0.6196 0.851];
            app.StartQuadrantButton.Enable = 'off';
            app.StartQuadrantButton.Position = [10 158 377 40];
            app.StartQuadrantButton.Text = 'Start Quadrant';

            % Create StartDRtrackingButton
            app.StartDRtrackingButton = uibutton(app.BiofeedbackSettingsPanel, 'push');
            app.StartDRtrackingButton.ButtonPushedFcn = createCallbackFcn(app, @StartDRtrackingButtonPushed, true);
            app.StartDRtrackingButton.BackgroundColor = [0.149 0.149 0.149];
            app.StartDRtrackingButton.FontName = 'Poppins';
            app.StartDRtrackingButton.FontSize = 18;
            app.StartDRtrackingButton.FontColor = [0.5608 0.6196 0.851];
            app.StartDRtrackingButton.Enable = 'off';
            app.StartDRtrackingButton.Position = [10 211 377 40];
            app.StartDRtrackingButton.Text = 'Start DR tracking';

            % Create ForceparametersLabel
            app.ForceparametersLabel = uilabel(app.BiofeedbackSettingsPanel);
            app.ForceparametersLabel.HorizontalAlignment = 'center';
            app.ForceparametersLabel.FontName = 'Poppins';
            app.ForceparametersLabel.FontSize = 18;
            app.ForceparametersLabel.FontWeight = 'bold';
            app.ForceparametersLabel.FontColor = [0.9412 0.9412 0.9412];
            app.ForceparametersLabel.Position = [112 737 170 23];
            app.ForceparametersLabel.Text = 'Force parameters';

            % Create TypeofbiofeedbacksLabel
            app.TypeofbiofeedbacksLabel = uilabel(app.BiofeedbackSettingsPanel);
            app.TypeofbiofeedbacksLabel.HorizontalAlignment = 'center';
            app.TypeofbiofeedbacksLabel.FontName = 'Poppins';
            app.TypeofbiofeedbacksLabel.FontSize = 18;
            app.TypeofbiofeedbacksLabel.FontWeight = 'bold';
            app.TypeofbiofeedbacksLabel.FontColor = [0.9412 0.9412 0.9412];
            app.TypeofbiofeedbacksLabel.Position = [99 311 203 23];
            app.TypeofbiofeedbacksLabel.Text = 'Type of biofeedbacks';

            % Create StartRasterPlotButton
            app.StartRasterPlotButton = uibutton(app.BiofeedbackSettingsPanel, 'push');
            app.StartRasterPlotButton.ButtonPushedFcn = createCallbackFcn(app, @StartRasterPlotButtonPushed, true);
            app.StartRasterPlotButton.BackgroundColor = [0.149 0.149 0.149];
            app.StartRasterPlotButton.FontName = 'Poppins';
            app.StartRasterPlotButton.FontSize = 18;
            app.StartRasterPlotButton.FontColor = [0.5608 0.6196 0.851];
            app.StartRasterPlotButton.Enable = 'off';
            app.StartRasterPlotButton.Position = [10 265 377 40];
            app.StartRasterPlotButton.Text = 'Start Raster Plot';

            % Create DisplaythePulsetrainsButton
            app.DisplaythePulsetrainsButton = uibutton(app.BiofeedbackSettingsPanel, 'push');
            app.DisplaythePulsetrainsButton.ButtonPushedFcn = createCallbackFcn(app, @DisplaythePulsetrainsButtonPushed, true);
            app.DisplaythePulsetrainsButton.BackgroundColor = [0.149 0.149 0.149];
            app.DisplaythePulsetrainsButton.FontName = 'Poppins';
            app.DisplaythePulsetrainsButton.FontSize = 18;
            app.DisplaythePulsetrainsButton.FontColor = [0.3804 0.7804 0.749];
            app.DisplaythePulsetrainsButton.Enable = 'off';
            app.DisplaythePulsetrainsButton.Position = [10 16 377 40];
            app.DisplaythePulsetrainsButton.Text = 'Display the Pulse trains';

            % Create QualityofthedecompositionLabel
            app.QualityofthedecompositionLabel = uilabel(app.BiofeedbackSettingsPanel);
            app.QualityofthedecompositionLabel.HorizontalAlignment = 'center';
            app.QualityofthedecompositionLabel.FontName = 'Poppins';
            app.QualityofthedecompositionLabel.FontSize = 18;
            app.QualityofthedecompositionLabel.FontWeight = 'bold';
            app.QualityofthedecompositionLabel.FontColor = [0.9412 0.9412 0.9412];
            app.QualityofthedecompositionLabel.Position = [61 69 276 23];
            app.QualityofthedecompositionLabel.Text = 'Quality of the decomposition';

            % Create ImportMUfiltersButton
            app.ImportMUfiltersButton = uibutton(app.BiofeedbackSettingsPanel, 'push');
            app.ImportMUfiltersButton.ButtonPushedFcn = createCallbackFcn(app, @ImportMUfiltersButtonPushed, true);
            app.ImportMUfiltersButton.BackgroundColor = [0.149 0.149 0.149];
            app.ImportMUfiltersButton.FontName = 'Poppins';
            app.ImportMUfiltersButton.FontSize = 18;
            app.ImportMUfiltersButton.FontColor = [0.8118 0.502 1];
            app.ImportMUfiltersButton.Position = [11 765 376 40];
            app.ImportMUfiltersButton.Text = 'Import MU filters';

            % Create SmoothingEditFieldLabel
            app.SmoothingEditFieldLabel = uilabel(app.BiofeedbackSettingsPanel);
            app.SmoothingEditFieldLabel.HorizontalAlignment = 'right';
            app.SmoothingEditFieldLabel.FontName = 'Poppins';
            app.SmoothingEditFieldLabel.FontSize = 18;
            app.SmoothingEditFieldLabel.FontColor = [0.9412 0.9412 0.9412];
            app.SmoothingEditFieldLabel.Position = [97 106 103 40];
            app.SmoothingEditFieldLabel.Text = 'Smoothing';

            % Create SmoothingEditField
            app.SmoothingEditField = uieditfield(app.BiofeedbackSettingsPanel, 'numeric');
            app.SmoothingEditField.Limits = [0 Inf];
            app.SmoothingEditField.FontName = 'Poppins';
            app.SmoothingEditField.FontSize = 18;
            app.SmoothingEditField.FontColor = [0.5608 0.6196 0.851];
            app.SmoothingEditField.BackgroundColor = [0.149 0.149 0.149];
            app.SmoothingEditField.Position = [208 105 178 40];
            app.SmoothingEditField.Value = 4;

            % Create SinewavefreqEditField_2Label
            app.SinewavefreqEditField_2Label = uilabel(app.BiofeedbackSettingsPanel);
            app.SinewavefreqEditField_2Label.HorizontalAlignment = 'right';
            app.SinewavefreqEditField_2Label.FontName = 'Poppins';
            app.SinewavefreqEditField_2Label.FontSize = 18;
            app.SinewavefreqEditField_2Label.FontColor = [0.9412 0.9412 0.9412];
            app.SinewavefreqEditField_2Label.Position = [17 615 176 23];
            app.SinewavefreqEditField_2Label.Text = 'Sine wave freq.';

            % Create SinewavefreqEditField_2
            app.SinewavefreqEditField_2 = uieditfield(app.BiofeedbackSettingsPanel, 'numeric');
            app.SinewavefreqEditField_2.Limits = [0 Inf];
            app.SinewavefreqEditField_2.ValueChangedFcn = createCallbackFcn(app, @SinewavefreqEditField_2ValueChanged, true);
            app.SinewavefreqEditField_2.FontName = 'Poppins';
            app.SinewavefreqEditField_2.FontSize = 18;
            app.SinewavefreqEditField_2.FontColor = [0.8118 0.502 1];
            app.SinewavefreqEditField_2.BackgroundColor = [0.149 0.149 0.149];
            app.SinewavefreqEditField_2.Position = [208 613 179 24];

            % Create SinewaveampEditField_2Label
            app.SinewaveampEditField_2Label = uilabel(app.BiofeedbackSettingsPanel);
            app.SinewaveampEditField_2Label.HorizontalAlignment = 'right';
            app.SinewaveampEditField_2Label.FontName = 'Poppins';
            app.SinewaveampEditField_2Label.FontSize = 18;
            app.SinewaveampEditField_2Label.FontColor = [0.9412 0.9412 0.9412];
            app.SinewaveampEditField_2Label.Position = [17 583 176 23];
            app.SinewaveampEditField_2Label.Text = 'Sine wave amp.';

            % Create SinewaveampEditField_2
            app.SinewaveampEditField_2 = uieditfield(app.BiofeedbackSettingsPanel, 'numeric');
            app.SinewaveampEditField_2.Limits = [0 Inf];
            app.SinewaveampEditField_2.ValueChangedFcn = createCallbackFcn(app, @SinewaveampEditField_2ValueChanged, true);
            app.SinewaveampEditField_2.FontName = 'Poppins';
            app.SinewaveampEditField_2.FontSize = 18;
            app.SinewaveampEditField_2.FontColor = [0.8118 0.502 1];
            app.SinewaveampEditField_2.BackgroundColor = [0.149 0.149 0.149];
            app.SinewaveampEditField_2.Position = [208 581 179 24];

            % Create EditionPanel
            app.EditionPanel = uipanel(app.UIFigure);
            app.EditionPanel.ForegroundColor = [0.9412 0.9412 0.9412];
            app.EditionPanel.BackgroundColor = [0.149 0.149 0.149];
            app.EditionPanel.FontName = 'Avenir Next';
            app.EditionPanel.FontWeight = 'bold';
            app.EditionPanel.FontSize = 14;
            app.EditionPanel.Position = [0 0 400 810];

            % Create EditField_saving_2
            app.EditField_saving_2 = uieditfield(app.EditionPanel, 'text');
            app.EditField_saving_2.Editable = 'off';
            app.EditField_saving_2.FontName = 'Poppins';
            app.EditField_saving_2.FontSize = 18;
            app.EditField_saving_2.FontColor = [0.8118 0.502 1];
            app.EditField_saving_2.BackgroundColor = [0.149 0.149 0.149];
            app.EditField_saving_2.Position = [10 747 174 45];
            app.EditField_saving_2.Value = 'File name';

            % Create SelectfileButton
            app.SelectfileButton = uibutton(app.EditionPanel, 'push');
            app.SelectfileButton.ButtonPushedFcn = createCallbackFcn(app, @SelectfileButtonPushed, true);
            app.SelectfileButton.BackgroundColor = [0.149 0.149 0.149];
            app.SelectfileButton.FontName = 'Poppins';
            app.SelectfileButton.FontSize = 18;
            app.SelectfileButton.FontWeight = 'bold';
            app.SelectfileButton.FontColor = [0.8118 0.502 1];
            app.SelectfileButton.Position = [199 747 185 45];
            app.SelectfileButton.Text = 'Select file';

            % Create ImportdataButton
            app.ImportdataButton = uibutton(app.EditionPanel, 'push');
            app.ImportdataButton.ButtonPushedFcn = createCallbackFcn(app, @ImportdataButtonPushed, true);
            app.ImportdataButton.BackgroundColor = [0.149 0.149 0.149];
            app.ImportdataButton.FontName = 'Poppins';
            app.ImportdataButton.FontSize = 18;
            app.ImportdataButton.FontWeight = 'bold';
            app.ImportdataButton.FontColor = [0.8118 0.502 1];
            app.ImportdataButton.Position = [10 688 374 45];
            app.ImportdataButton.Text = 'Import data';

            % Create RemoveflaggedMUandduplicatesButton
            app.RemoveflaggedMUandduplicatesButton = uibutton(app.EditionPanel, 'push');
            app.RemoveflaggedMUandduplicatesButton.ButtonPushedFcn = createCallbackFcn(app, @RemoveflaggedMUandduplicatesButtonPushed, true);
            app.RemoveflaggedMUandduplicatesButton.WordWrap = 'on';
            app.RemoveflaggedMUandduplicatesButton.BackgroundColor = [0.149 0.149 0.149];
            app.RemoveflaggedMUandduplicatesButton.FontName = 'Poppins';
            app.RemoveflaggedMUandduplicatesButton.FontSize = 18;
            app.RemoveflaggedMUandduplicatesButton.FontWeight = 'bold';
            app.RemoveflaggedMUandduplicatesButton.FontColor = [0.5608 0.6196 0.851];
            app.RemoveflaggedMUandduplicatesButton.Position = [10 577 374 55];
            app.RemoveflaggedMUandduplicatesButton.Text = 'Remove flagged MU and duplicates';

            % Create PlotMUspiketrainsButton
            app.PlotMUspiketrainsButton = uibutton(app.EditionPanel, 'push');
            app.PlotMUspiketrainsButton.ButtonPushedFcn = createCallbackFcn(app, @PlotMUspiketrainsButtonPushed, true);
            app.PlotMUspiketrainsButton.BackgroundColor = [0.149 0.149 0.149];
            app.PlotMUspiketrainsButton.FontName = 'Poppins';
            app.PlotMUspiketrainsButton.FontSize = 18;
            app.PlotMUspiketrainsButton.FontWeight = 'bold';
            app.PlotMUspiketrainsButton.FontColor = [0.3804 0.7804 0.749];
            app.PlotMUspiketrainsButton.Position = [10 454 374 45];
            app.PlotMUspiketrainsButton.Text = 'Plot MU spike trains';

            % Create SaveButton
            app.SaveButton = uibutton(app.EditionPanel, 'push');
            app.SaveButton.ButtonPushedFcn = createCallbackFcn(app, @SaveButtonPushed, true);
            app.SaveButton.BackgroundColor = [0.149 0.149 0.149];
            app.SaveButton.FontName = 'Poppins';
            app.SaveButton.FontSize = 18;
            app.SaveButton.FontWeight = 'bold';
            app.SaveButton.FontColor = [0.3804 0.7804 0.749];
            app.SaveButton.Position = [11 317 373 45];
            app.SaveButton.Text = 'Save';

            % Create VisualisationLabel
            app.VisualisationLabel = uilabel(app.EditionPanel);
            app.VisualisationLabel.HorizontalAlignment = 'center';
            app.VisualisationLabel.FontName = 'Poppins';
            app.VisualisationLabel.FontSize = 18;
            app.VisualisationLabel.FontColor = [0.9412 0.9412 0.9412];
            app.VisualisationLabel.Position = [140 507 119 23];
            app.VisualisationLabel.Text = 'Visualisation';

            % Create SavetheeditionLabel
            app.SavetheeditionLabel = uilabel(app.EditionPanel);
            app.SavetheeditionLabel.HorizontalAlignment = 'center';
            app.SavetheeditionLabel.WordWrap = 'on';
            app.SavetheeditionLabel.FontName = 'Poppins';
            app.SavetheeditionLabel.FontSize = 18;
            app.SavetheeditionLabel.FontColor = [0.9412 0.9412 0.9412];
            app.SavetheeditionLabel.Position = [12 409 199 23];
            app.SavetheeditionLabel.Text = 'Save the edition';

            % Create PlotMUfiringratesButton
            app.PlotMUfiringratesButton = uibutton(app.EditionPanel, 'push');
            app.PlotMUfiringratesButton.ButtonPushedFcn = createCallbackFcn(app, @PlotMUfiringratesButtonPushed, true);
            app.PlotMUfiringratesButton.BackgroundColor = [0.149 0.149 0.149];
            app.PlotMUfiringratesButton.FontName = 'Poppins';
            app.PlotMUfiringratesButton.FontSize = 18;
            app.PlotMUfiringratesButton.FontWeight = 'bold';
            app.PlotMUfiringratesButton.FontColor = [0.3804 0.7804 0.749];
            app.PlotMUfiringratesButton.Position = [10 400 374 45];
            app.PlotMUfiringratesButton.Text = 'Plot MU firing rates';

            % Create CleaningLabel
            app.CleaningLabel = uilabel(app.EditionPanel);
            app.CleaningLabel.HorizontalAlignment = 'center';
            app.CleaningLabel.FontName = 'Poppins';
            app.CleaningLabel.FontSize = 18;
            app.CleaningLabel.FontColor = [0.9412 0.9412 0.9412];
            app.CleaningLabel.Position = [155 639 86 23];
            app.CleaningLabel.Text = 'Cleaning';

            % Create TrainingSettingsPanel
            app.TrainingSettingsPanel = uipanel(app.UIFigure);
            app.TrainingSettingsPanel.ForegroundColor = [0.9412 0.9412 0.9412];
            app.TrainingSettingsPanel.BackgroundColor = [0.149 0.149 0.149];
            app.TrainingSettingsPanel.FontName = 'Avenir Next';
            app.TrainingSettingsPanel.FontWeight = 'bold';
            app.TrainingSettingsPanel.FontSize = 14;
            app.TrainingSettingsPanel.Position = [0 0 400 810];

            % Create UIAxes
            app.UIAxes = uiaxes(app.TrainingSettingsPanel);
            xlabel(app.UIAxes, 'Time')
            ylabel(app.UIAxes, 'Force')
            zlabel(app.UIAxes, 'Z')
            app.UIAxes.Toolbar.Visible = 'off';
            app.UIAxes.FontName = 'Poppins';
            app.UIAxes.Color = 'none';
            app.UIAxes.GridColor = [0.9412 0.9412 0.9412];
            app.UIAxes.MinorGridColor = [0.9412 0.9412 0.9412];
            app.UIAxes.FontSize = 18;
            app.UIAxes.HitTest = 'off';
            app.UIAxes.PickableParts = 'none';
            app.UIAxes.Position = [31 176 334 150];

            % Create MVCparametersLabel
            app.MVCparametersLabel = uilabel(app.TrainingSettingsPanel);
            app.MVCparametersLabel.HorizontalAlignment = 'center';
            app.MVCparametersLabel.FontName = 'Poppins';
            app.MVCparametersLabel.FontSize = 18;
            app.MVCparametersLabel.FontWeight = 'bold';
            app.MVCparametersLabel.FontColor = [0.9412 0.9412 0.9412];
            app.MVCparametersLabel.Position = [118 782 163 23];
            app.MVCparametersLabel.Text = 'MVC parameters';

            % Create DurationEditFieldLabel
            app.DurationEditFieldLabel = uilabel(app.TrainingSettingsPanel);
            app.DurationEditFieldLabel.HorizontalAlignment = 'right';
            app.DurationEditFieldLabel.FontName = 'Poppins';
            app.DurationEditFieldLabel.FontSize = 18;
            app.DurationEditFieldLabel.FontColor = [0.8118 0.502 1];
            app.DurationEditFieldLabel.Position = [17 755 166 30];
            app.DurationEditFieldLabel.Text = 'Duration';

            % Create DurationEditField
            app.DurationEditField = uieditfield(app.TrainingSettingsPanel, 'numeric');
            app.DurationEditField.FontName = 'Poppins';
            app.DurationEditField.FontSize = 18;
            app.DurationEditField.FontColor = [0.8118 0.502 1];
            app.DurationEditField.BackgroundColor = [0.149 0.149 0.149];
            app.DurationEditField.Position = [208 755 157 30];

            % Create RestEditFieldLabel
            app.RestEditFieldLabel = uilabel(app.TrainingSettingsPanel);
            app.RestEditFieldLabel.HorizontalAlignment = 'right';
            app.RestEditFieldLabel.FontName = 'Poppins';
            app.RestEditFieldLabel.FontSize = 18;
            app.RestEditFieldLabel.FontColor = [0.8118 0.502 1];
            app.RestEditFieldLabel.Position = [17 720 167 30];
            app.RestEditFieldLabel.Text = 'Rest';

            % Create RestEditField
            app.RestEditField = uieditfield(app.TrainingSettingsPanel, 'numeric');
            app.RestEditField.FontName = 'Poppins';
            app.RestEditField.FontSize = 18;
            app.RestEditField.FontColor = [0.8118 0.502 1];
            app.RestEditField.BackgroundColor = [0.149 0.149 0.149];
            app.RestEditField.Position = [208 717 157 30];

            % Create OffsetCheckBox
            app.OffsetCheckBox = uicheckbox(app.TrainingSettingsPanel);
            app.OffsetCheckBox.ValueChangedFcn = createCallbackFcn(app, @OffsetCheckBoxValueChanged, true);
            app.OffsetCheckBox.Enable = 'off';
            app.OffsetCheckBox.Text = 'Offset';
            app.OffsetCheckBox.FontName = 'Poppins';
            app.OffsetCheckBox.FontSize = 18;
            app.OffsetCheckBox.FontColor = [0.8118 0.502 1];
            app.OffsetCheckBox.Position = [112 679 73 30];

            % Create EditField_offset
            app.EditField_offset = uieditfield(app.TrainingSettingsPanel, 'numeric');
            app.EditField_offset.FontName = 'Poppins';
            app.EditField_offset.FontSize = 18;
            app.EditField_offset.FontColor = [0.8118 0.502 1];
            app.EditField_offset.BackgroundColor = [0.149 0.149 0.149];
            app.EditField_offset.Position = [208 679 157 30];

            % Create StartMVCButton
            app.StartMVCButton = uibutton(app.TrainingSettingsPanel, 'push');
            app.StartMVCButton.ButtonPushedFcn = createCallbackFcn(app, @StartMVCButtonPushed, true);
            app.StartMVCButton.BackgroundColor = [0.149 0.149 0.149];
            app.StartMVCButton.FontName = 'Poppins';
            app.StartMVCButton.FontSize = 18;
            app.StartMVCButton.FontColor = [0.8118 0.502 1];
            app.StartMVCButton.Enable = 'off';
            app.StartMVCButton.Position = [225 622 168 40];
            app.StartMVCButton.Text = 'Start MVC';

            % Create Gauge
            app.Gauge = uigauge(app.TrainingSettingsPanel, 'semicircular');
            app.Gauge.BackgroundColor = [0.149 0.149 0.149];
            app.Gauge.FontName = 'Poppins';
            app.Gauge.FontSize = 18;
            app.Gauge.FontColor = [0.9412 0.9412 0.9412];
            app.Gauge.Position = [13 534 237 128];

            % Create MVCTargetEditFieldLabel
            app.MVCTargetEditFieldLabel = uilabel(app.TrainingSettingsPanel);
            app.MVCTargetEditFieldLabel.HorizontalAlignment = 'right';
            app.MVCTargetEditFieldLabel.FontName = 'Poppins';
            app.MVCTargetEditFieldLabel.FontSize = 18;
            app.MVCTargetEditFieldLabel.FontColor = [0.5608 0.6196 0.851];
            app.MVCTargetEditFieldLabel.Position = [11 470 174 30];
            app.MVCTargetEditFieldLabel.Text = 'MVC Target';

            % Create MVCTargetEditField
            app.MVCTargetEditField = uieditfield(app.TrainingSettingsPanel, 'numeric');
            app.MVCTargetEditField.ValueChangedFcn = createCallbackFcn(app, @MVCTargetEditFieldValueChanged, true);
            app.MVCTargetEditField.FontName = 'Poppins';
            app.MVCTargetEditField.FontSize = 18;
            app.MVCTargetEditField.FontColor = [0.5608 0.6196 0.851];
            app.MVCTargetEditField.BackgroundColor = [0.149 0.149 0.149];
            app.MVCTargetEditField.Position = [209 466 156 30];

            % Create DurationtrainingEditFieldLabel
            app.DurationtrainingEditFieldLabel = uilabel(app.TrainingSettingsPanel);
            app.DurationtrainingEditFieldLabel.HorizontalAlignment = 'right';
            app.DurationtrainingEditFieldLabel.FontName = 'Poppins';
            app.DurationtrainingEditFieldLabel.FontSize = 18;
            app.DurationtrainingEditFieldLabel.FontColor = [0.5608 0.6196 0.851];
            app.DurationtrainingEditFieldLabel.Position = [17 424 168 30];
            app.DurationtrainingEditFieldLabel.Text = 'Duration training';

            % Create DurationtrainingEditField
            app.DurationtrainingEditField = uieditfield(app.TrainingSettingsPanel, 'numeric');
            app.DurationtrainingEditField.ValueChangedFcn = createCallbackFcn(app, @DurationtrainingEditFieldValueChanged, true);
            app.DurationtrainingEditField.FontName = 'Poppins';
            app.DurationtrainingEditField.FontSize = 18;
            app.DurationtrainingEditField.FontColor = [0.5608 0.6196 0.851];
            app.DurationtrainingEditField.BackgroundColor = [0.149 0.149 0.149];
            app.DurationtrainingEditField.Position = [209 424 157 30];

            % Create TrainingparametersLabel
            app.TrainingparametersLabel = uilabel(app.TrainingSettingsPanel);
            app.TrainingparametersLabel.HorizontalAlignment = 'center';
            app.TrainingparametersLabel.FontName = 'Poppins';
            app.TrainingparametersLabel.FontSize = 18;
            app.TrainingparametersLabel.FontWeight = 'bold';
            app.TrainingparametersLabel.FontColor = [0.9412 0.9412 0.9412];
            app.TrainingparametersLabel.Position = [100 505 198 23];
            app.TrainingparametersLabel.Text = 'Training parameters';

            % Create NbIterationsEditFieldLabel
            app.NbIterationsEditFieldLabel = uilabel(app.TrainingSettingsPanel);
            app.NbIterationsEditFieldLabel.HorizontalAlignment = 'right';
            app.NbIterationsEditFieldLabel.FontName = 'Poppins';
            app.NbIterationsEditFieldLabel.FontSize = 18;
            app.NbIterationsEditFieldLabel.FontColor = [0.3804 0.7804 0.749];
            app.NbIterationsEditFieldLabel.Position = [16 55 167 30];
            app.NbIterationsEditFieldLabel.Text = 'Nb Iterations';

            % Create NbIterationsEditField
            app.NbIterationsEditField = uieditfield(app.TrainingSettingsPanel, 'numeric');
            app.NbIterationsEditField.FontName = 'Poppins';
            app.NbIterationsEditField.FontSize = 18;
            app.NbIterationsEditField.FontColor = [0.3804 0.7804 0.749];
            app.NbIterationsEditField.BackgroundColor = [0.149 0.149 0.149];
            app.NbIterationsEditField.Position = [209 54 155 30];
            app.NbIterationsEditField.Value = 50;

            % Create StartButton
            app.StartButton = uibutton(app.TrainingSettingsPanel, 'push');
            app.StartButton.ButtonPushedFcn = createCallbackFcn(app, @StartButtonPushed, true);
            app.StartButton.BackgroundColor = [0.149 0.149 0.149];
            app.StartButton.FontName = 'Poppins';
            app.StartButton.FontSize = 18;
            app.StartButton.FontColor = [0.3804 0.7804 0.749];
            app.StartButton.Enable = 'off';
            app.StartButton.Position = [31 8 334 40];
            app.StartButton.Text = 'Start';

            % Create EditField_MVC
            app.EditField_MVC = uieditfield(app.TrainingSettingsPanel, 'text');
            app.EditField_MVC.FontName = 'Poppins';
            app.EditField_MVC.FontSize = 18;
            app.EditField_MVC.FontColor = [0.8118 0.502 1];
            app.EditField_MVC.BackgroundColor = [0.149 0.149 0.149];
            app.EditField_MVC.Position = [259 574 133 40];

            % Create SILthresholdEditFieldLabel
            app.SILthresholdEditFieldLabel = uilabel(app.TrainingSettingsPanel);
            app.SILthresholdEditFieldLabel.HorizontalAlignment = 'right';
            app.SILthresholdEditFieldLabel.FontName = 'Poppins';
            app.SILthresholdEditFieldLabel.FontSize = 18;
            app.SILthresholdEditFieldLabel.FontColor = [0.3804 0.7804 0.749];
            app.SILthresholdEditFieldLabel.Position = [17 137 166 30];
            app.SILthresholdEditFieldLabel.Text = 'SIL threshold';

            % Create SILthresholdEditField
            app.SILthresholdEditField = uieditfield(app.TrainingSettingsPanel, 'numeric');
            app.SILthresholdEditField.FontName = 'Poppins';
            app.SILthresholdEditField.FontSize = 18;
            app.SILthresholdEditField.FontColor = [0.3804 0.7804 0.749];
            app.SILthresholdEditField.BackgroundColor = [0.149 0.149 0.149];
            app.SILthresholdEditField.Position = [209 137 156 30];
            app.SILthresholdEditField.Value = 0.9;

            % Create COVthresholdEditFieldLabel
            app.COVthresholdEditFieldLabel = uilabel(app.TrainingSettingsPanel);
            app.COVthresholdEditFieldLabel.HorizontalAlignment = 'right';
            app.COVthresholdEditFieldLabel.FontName = 'Poppins';
            app.COVthresholdEditFieldLabel.FontSize = 18;
            app.COVthresholdEditFieldLabel.FontColor = [0.3804 0.7804 0.749];
            app.COVthresholdEditFieldLabel.Position = [16 95 167 30];
            app.COVthresholdEditFieldLabel.Text = 'COV threshold';

            % Create COVthresholdEditField
            app.COVthresholdEditField = uieditfield(app.TrainingSettingsPanel, 'numeric');
            app.COVthresholdEditField.FontName = 'Poppins';
            app.COVthresholdEditField.FontSize = 18;
            app.COVthresholdEditField.FontColor = [0.3804 0.7804 0.749];
            app.COVthresholdEditField.BackgroundColor = [0.149 0.149 0.149];
            app.COVthresholdEditField.Position = [209 95 155 30];
            app.COVthresholdEditField.Value = 0.5;

            % Create SinewavefreqEditFieldLabel
            app.SinewavefreqEditFieldLabel = uilabel(app.TrainingSettingsPanel);
            app.SinewavefreqEditFieldLabel.HorizontalAlignment = 'right';
            app.SinewavefreqEditFieldLabel.FontName = 'Poppins';
            app.SinewavefreqEditFieldLabel.FontSize = 18;
            app.SinewavefreqEditFieldLabel.FontColor = [0.5608 0.6196 0.851];
            app.SinewavefreqEditFieldLabel.Position = [-9 384 193 30];
            app.SinewavefreqEditFieldLabel.Text = 'Sine wave freq.';

            % Create SinewavefreqEditField
            app.SinewavefreqEditField = uieditfield(app.TrainingSettingsPanel, 'numeric');
            app.SinewavefreqEditField.ValueChangedFcn = createCallbackFcn(app, @SinewavefreqEditFieldValueChanged, true);
            app.SinewavefreqEditField.FontName = 'Poppins';
            app.SinewavefreqEditField.FontSize = 18;
            app.SinewavefreqEditField.FontColor = [0.5608 0.6196 0.851];
            app.SinewavefreqEditField.BackgroundColor = [0.149 0.149 0.149];
            app.SinewavefreqEditField.Position = [210 383 157 30];

            % Create SinewavefreqEditFieldLabel_2
            app.SinewavefreqEditFieldLabel_2 = uilabel(app.TrainingSettingsPanel);
            app.SinewavefreqEditFieldLabel_2.HorizontalAlignment = 'right';
            app.SinewavefreqEditFieldLabel_2.FontName = 'Poppins';
            app.SinewavefreqEditFieldLabel_2.FontSize = 18;
            app.SinewavefreqEditFieldLabel_2.FontColor = [0.5608 0.6196 0.851];
            app.SinewavefreqEditFieldLabel_2.Position = [-9 342 193 30];
            app.SinewavefreqEditFieldLabel_2.Text = 'Sine wave amp.';

            % Create SinewaveampEditField
            app.SinewaveampEditField = uieditfield(app.TrainingSettingsPanel, 'numeric');
            app.SinewaveampEditField.ValueChangedFcn = createCallbackFcn(app, @SinewaveampEditFieldValueChanged, true);
            app.SinewaveampEditField.FontName = 'Poppins';
            app.SinewaveampEditField.FontSize = 18;
            app.SinewaveampEditField.FontColor = [0.5608 0.6196 0.851];
            app.SinewaveampEditField.BackgroundColor = [0.149 0.149 0.149];
            app.SinewaveampEditField.Position = [209 342 157 30];

            % Create RecordingSettingsPanel
            app.RecordingSettingsPanel = uipanel(app.UIFigure);
            app.RecordingSettingsPanel.ForegroundColor = [0.9412 0.9412 0.9412];
            app.RecordingSettingsPanel.BackgroundColor = [0.149 0.149 0.149];
            app.RecordingSettingsPanel.FontName = 'Avenir Next';
            app.RecordingSettingsPanel.FontWeight = 'bold';
            app.RecordingSettingsPanel.FontSize = 14;
            app.RecordingSettingsPanel.Position = [0 0 400 810];

            % Create FrequencyDropDownLabel
            app.FrequencyDropDownLabel = uilabel(app.RecordingSettingsPanel);
            app.FrequencyDropDownLabel.HorizontalAlignment = 'right';
            app.FrequencyDropDownLabel.FontName = 'Poppins';
            app.FrequencyDropDownLabel.FontSize = 18;
            app.FrequencyDropDownLabel.FontColor = [0.8118 0.502 1];
            app.FrequencyDropDownLabel.Position = [11 503 164 45];
            app.FrequencyDropDownLabel.Text = 'Frequency';

            % Create FrequencyDropDown
            app.FrequencyDropDown = uidropdown(app.RecordingSettingsPanel);
            app.FrequencyDropDown.Items = {'TBD'};
            app.FrequencyDropDown.FontName = 'Poppins';
            app.FrequencyDropDown.FontSize = 18;
            app.FrequencyDropDown.FontColor = [0.8118 0.502 1];
            app.FrequencyDropDown.BackgroundColor = [0.149 0.149 0.149];
            app.FrequencyDropDown.Position = [189 504 198 45];
            app.FrequencyDropDown.Value = 'TBD';

            % Create StartVisualisationCheckEMGButton
            app.StartVisualisationCheckEMGButton = uibutton(app.RecordingSettingsPanel, 'push');
            app.StartVisualisationCheckEMGButton.ButtonPushedFcn = createCallbackFcn(app, @StartVisualisationCheckEMGButtonPushed, true);
            app.StartVisualisationCheckEMGButton.WordWrap = 'on';
            app.StartVisualisationCheckEMGButton.BackgroundColor = [0.149 0.149 0.149];
            app.StartVisualisationCheckEMGButton.FontName = 'Poppins';
            app.StartVisualisationCheckEMGButton.FontSize = 18;
            app.StartVisualisationCheckEMGButton.FontColor = [0.3804 0.7804 0.749];
            app.StartVisualisationCheckEMGButton.Enable = 'off';
            app.StartVisualisationCheckEMGButton.Position = [15 145 369 45];
            app.StartVisualisationCheckEMGButton.Text = 'Start Visualisation -  Check EMG';

            % Create EditField_saving
            app.EditField_saving = uieditfield(app.RecordingSettingsPanel, 'text');
            app.EditField_saving.Editable = 'off';
            app.EditField_saving.FontName = 'Poppins';
            app.EditField_saving.FontSize = 18;
            app.EditField_saving.FontColor = [0.8118 0.502 1];
            app.EditField_saving.BackgroundColor = [0.149 0.149 0.149];
            app.EditField_saving.Position = [16 730 210 45];
            app.EditField_saving.Value = 'Folder name';

            % Create SelectfolderButton
            app.SelectfolderButton = uibutton(app.RecordingSettingsPanel, 'push');
            app.SelectfolderButton.ButtonPushedFcn = createCallbackFcn(app, @SelectfolderButtonPushed, true);
            app.SelectfolderButton.BackgroundColor = [0.149 0.149 0.149];
            app.SelectfolderButton.FontName = 'Poppins';
            app.SelectfolderButton.FontSize = 18;
            app.SelectfolderButton.FontColor = [0.8118 0.502 1];
            app.SelectfolderButton.Position = [237 729 147 45];
            app.SelectfolderButton.Text = 'Select folder';

            % Create StartVisualisationChecknoiseButton
            app.StartVisualisationChecknoiseButton = uibutton(app.RecordingSettingsPanel, 'push');
            app.StartVisualisationChecknoiseButton.ButtonPushedFcn = createCallbackFcn(app, @StartVisualisationChecknoiseButtonPushed, true);
            app.StartVisualisationChecknoiseButton.WordWrap = 'on';
            app.StartVisualisationChecknoiseButton.BackgroundColor = [0.149 0.149 0.149];
            app.StartVisualisationChecknoiseButton.FontName = 'Poppins';
            app.StartVisualisationChecknoiseButton.FontSize = 18;
            app.StartVisualisationChecknoiseButton.FontColor = [0.5608 0.6196 0.851];
            app.StartVisualisationChecknoiseButton.Enable = 'off';
            app.StartVisualisationChecknoiseButton.Position = [15 214 369 45];
            app.StartVisualisationChecknoiseButton.Text = 'Start Visualisation -  Check noise';

            % Create HPfilterDropDownLabel
            app.HPfilterDropDownLabel = uilabel(app.RecordingSettingsPanel);
            app.HPfilterDropDownLabel.HorizontalAlignment = 'right';
            app.HPfilterDropDownLabel.FontName = 'Poppins';
            app.HPfilterDropDownLabel.FontSize = 18;
            app.HPfilterDropDownLabel.FontColor = [0.8118 0.502 1];
            app.HPfilterDropDownLabel.Enable = 'off';
            app.HPfilterDropDownLabel.Position = [15 438 163 45];
            app.HPfilterDropDownLabel.Text = 'HP filter';

            % Create HPfilterDropDown
            app.HPfilterDropDown = uidropdown(app.RecordingSettingsPanel);
            app.HPfilterDropDown.Items = {'200', '100', '10'};
            app.HPfilterDropDown.Enable = 'off';
            app.HPfilterDropDown.FontName = 'Poppins';
            app.HPfilterDropDown.FontSize = 18;
            app.HPfilterDropDown.FontColor = [0.8118 0.502 1];
            app.HPfilterDropDown.BackgroundColor = [0.149 0.149 0.149];
            app.HPfilterDropDown.Position = [190 437 197 45];
            app.HPfilterDropDown.Value = '10';

            % Create LPfilterDropDownLabel
            app.LPfilterDropDownLabel = uilabel(app.RecordingSettingsPanel);
            app.LPfilterDropDownLabel.HorizontalAlignment = 'right';
            app.LPfilterDropDownLabel.FontName = 'Poppins';
            app.LPfilterDropDownLabel.FontSize = 18;
            app.LPfilterDropDownLabel.FontColor = [0.8118 0.502 1];
            app.LPfilterDropDownLabel.Enable = 'off';
            app.LPfilterDropDownLabel.Position = [9 371 169 45];
            app.LPfilterDropDownLabel.Text = 'LP filter';

            % Create LPfilterDropDown
            app.LPfilterDropDown = uidropdown(app.RecordingSettingsPanel);
            app.LPfilterDropDown.Items = {'4400', '900', '500'};
            app.LPfilterDropDown.Enable = 'off';
            app.LPfilterDropDown.FontName = 'Poppins';
            app.LPfilterDropDown.FontSize = 18;
            app.LPfilterDropDown.FontColor = [0.8118 0.502 1];
            app.LPfilterDropDown.BackgroundColor = [0.149 0.149 0.149];
            app.LPfilterDropDown.Position = [189 370 198 45];
            app.LPfilterDropDown.Value = '500';

            % Create RefreshrateDropDownLabel
            app.RefreshrateDropDownLabel = uilabel(app.RecordingSettingsPanel);
            app.RefreshrateDropDownLabel.HorizontalAlignment = 'right';
            app.RefreshrateDropDownLabel.FontName = 'Poppins';
            app.RefreshrateDropDownLabel.FontSize = 18;
            app.RefreshrateDropDownLabel.FontColor = [0.8118 0.502 1];
            app.RefreshrateDropDownLabel.Position = [13 303 162 45];
            app.RefreshrateDropDownLabel.Text = 'Refresh rate';

            % Create RefreshrateDropDown
            app.RefreshrateDropDown = uidropdown(app.RecordingSettingsPanel);
            app.RefreshrateDropDown.Items = {'1', '2', '4', '8', '16'};
            app.RefreshrateDropDown.FontName = 'Poppins';
            app.RefreshrateDropDown.FontSize = 18;
            app.RefreshrateDropDown.FontColor = [0.8118 0.502 1];
            app.RefreshrateDropDown.BackgroundColor = [0.149 0.149 0.149];
            app.RefreshrateDropDown.Position = [190 303 198 45];
            app.RefreshrateDropDown.Value = '16';

            % Create AcquisitionBoardDropDownLabel
            app.AcquisitionBoardDropDownLabel = uilabel(app.RecordingSettingsPanel);
            app.AcquisitionBoardDropDownLabel.HorizontalAlignment = 'right';
            app.AcquisitionBoardDropDownLabel.FontName = 'Poppins';
            app.AcquisitionBoardDropDownLabel.FontSize = 18;
            app.AcquisitionBoardDropDownLabel.FontColor = [0.8118 0.502 1];
            app.AcquisitionBoardDropDownLabel.Position = [13 641 162 45];
            app.AcquisitionBoardDropDownLabel.Text = 'Acquisition Board';

            % Create AcquisitionBoardDropDown
            app.AcquisitionBoardDropDown = uidropdown(app.RecordingSettingsPanel);
            app.AcquisitionBoardDropDown.Items = {'No board', 'Quattrocento'};
            app.AcquisitionBoardDropDown.ValueChangedFcn = createCallbackFcn(app, @AcquisitionBoardDropDownValueChanged, true);
            app.AcquisitionBoardDropDown.FontName = 'Poppins';
            app.AcquisitionBoardDropDown.FontSize = 18;
            app.AcquisitionBoardDropDown.FontColor = [0.8118 0.502 1];
            app.AcquisitionBoardDropDown.BackgroundColor = [0.149 0.149 0.149];
            app.AcquisitionBoardDropDown.Position = [189 640 198 45];
            app.AcquisitionBoardDropDown.Value = 'No board';

            % Create SetconfigurationButton
            app.SetconfigurationButton = uibutton(app.RecordingSettingsPanel, 'push');
            app.SetconfigurationButton.ButtonPushedFcn = createCallbackFcn(app, @SetconfigurationButtonPushed, true);
            app.SetconfigurationButton.BackgroundColor = [0.149 0.149 0.149];
            app.SetconfigurationButton.FontName = 'Poppins';
            app.SetconfigurationButton.FontSize = 18;
            app.SetconfigurationButton.FontColor = [0.8118 0.502 1];
            app.SetconfigurationButton.Position = [15 572 369 45];
            app.SetconfigurationButton.Text = 'Set configuration';

            % Create tabs
            app.tabs = uidropdown(app.UIFigure);
            app.tabs.Items = {'RECORDING', 'TRAINING', 'MANUAL EDITING', 'BIOFEEDBACK'};
            app.tabs.ValueChangedFcn = createCallbackFcn(app, @tabsValueChanged, true);
            app.tabs.FontName = 'Poppins';
            app.tabs.FontSize = 24;
            app.tabs.FontWeight = 'bold';
            app.tabs.FontColor = [0.9608 0.9608 0.9608];
            app.tabs.BackgroundColor = [0.149 0.149 0.149];
            app.tabs.Position = [0 810 400 40];
            app.tabs.Value = 'RECORDING';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = ISpin_Quattrocento_exported

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