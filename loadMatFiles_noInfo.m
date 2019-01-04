matFileLocation = 'myFolder/';
flist = dir([matFileLocation, '*.mat']);
for i = 1: length(flist)
    % get info of current mat file because we do not know what itself or its field is called
    info = whos('-file',[matFileLocation, flist(i).name]);
    % load the variable, which is now under its (unknown) name in the workspace
    load([matFileLocation, flist(i).name]);
    % get the values from the file without explicitly giving the name
    vals = eval(info.name);
    % we want it as a vector 
    times(i,:) = [vals{:}];
end
