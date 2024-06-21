% Open entry file


% Open the GLTF file
gltfFileName = 'https://raw.githubusercontent.com/alino93/matlabVR/main/3dPrinterAssem.gltf';

disp('GLTF file content has been saved as JS file successfully.');

% index.html is the web interface that uses open soruce aframe java script 
% files for vizualizing and interacting with XR content on the web 
web('webapp/index.html');
