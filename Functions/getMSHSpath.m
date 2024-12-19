function pathnameMSHS = getMSHSpath(pathnameHeadModel)

if isunix
    tmp = strfind(pathnameHeadModel,'/');
    filename = pathnameHeadModel(tmp(end)+1:end);
    pathnameMSHS = fullfile(pathnameHeadModel,[filename '.mshs']);
elseif ispc
    tmp = strfind(pathnameHeadModel,'\');
    filename = pathnameHeadModel(tmp(end)+1:end);
    pathnameMSHS = fullfile(pathnameHeadModel,[filename '.mshs']);
end
