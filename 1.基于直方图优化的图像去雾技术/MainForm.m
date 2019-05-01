function varargout = MainForm()
[FileName,PathName,FilterIndex] = uigetfile({'*.jpg;*.tif;*.png;*.gif', ...
    '����ͼ���ļ�';...
    '*.*','�����ļ�' },'����ͼ��',...
    '.\\sweden_input.jpg');
if isequal(FileName, 0) || isequal(PathName, 0)
    return;
end
Img1 = imread(fullfile(PathName, FileName));
RemoveFogByGlobalHisteq(Img1, 1);
RemoveFogByLocalHisteq(Img1, 1);
RemoveFogByRetinex(Img1, 1);