% Open entry file


% Open the GLTF file an save it as a variable defined a java script file 
% since browsers do not load local files for security reasons
% Specify the GLTF file name
gltfFileName = 'modelFile.gltf';

% Read the content of the GLTF file
fileID = fopen(gltfFileName, 'r');
if fileID == -1
    error('Cannot open file: %s', gltfFileName);
end

gltfContent = fread(fileID, '*char')';
fclose(fileID);

% Format the content for JavaScript
jsContent = sprintf('var modelData = ''%s'';', gltfContent);

% Specify the JS file name
jsFileName = 'webapp/modelFile.js';

% Write the content to the JS file
fileID = fopen(jsFileName, 'w');
if fileID == -1
    error('Cannot open file: %s', jsFileName);
end

fprintf(fileID, '%s', jsContent);
fclose(fileID);

disp('GLTF file content has been saved as JS file successfully.');

% index.html is the web interface that uses open soruce aframe java script 
% files for vizualizing and interacting with XR content on the web 
web('webapp/index.html');
