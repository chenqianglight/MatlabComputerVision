function varargout = MainForm()
[FileName,PathName,FilterIndex] = uigetfile({'*.jpg;*.tif;*.png;*.gif', ...
    '所有图像文件';...
    '*.*','所有文件' },'载入图像',...
    '.\\sweden_input.jpg');
if isequal(FileName, 0) || isequal(PathName, 0)
    return;
end
Img1 = imread(fullfile(PathName, FileName));
RemoveFogByGlobalHisteq(Img1, 1);
RemoveFogByLocalHisteq(Img1, 1);
RemoveFogByRetinex(Img1, 1);