% Define the path to the DTI and tract files
path_dMRI = 'path to diffusion file';
path_tract = 'path to tract file';
path_tract_new = 'Path to new output file';

% Get a list of all the dMRI files in the folder
dMRI_files = dir(fullfile(path_dti, '*_trafo.mat'));

% Loop through the dMRI files
for i = 1:length(dti_files)
    % Get the subject name from the file name
    subject = dti_files(i).name(1:end-8);
    
    % Define the input and output file names for the current subject
    f_in_1 = [path_dMRI, dMRI_files(i).name];
    f_in_2 = [path_tract, subject,'_old_tract.mat'];
    f_out = [path_tract_new, subject,'_new_tract.mat'];
    
    % Call the script
    E_DTI_Add_DKI_metrics_to_tract_file(f_in_1, f_in_2, f_out);
end
