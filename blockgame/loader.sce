// ----------------------------------------------------------------------------
//  This file was automatically generated by SWIG (http://www.swig.org).
//  Version 4.0.0
// 
//  Do not make changes to this file unless you know what you are doing--modify
//  the SWIG interface file instead.
// ----------------------------------------------------------------------------- */

libblockgame_path = get_absolute_file_path('loader.sce');
[bOK, ilib] = c_link('libblockgame');
if bOK then
  ulink(ilib);
end
list_functions = [..
  'blockgame_Init'; ..
  'SWIG_this'; ..
  'SWIG_ptr'; ..
  'blockgame'; ..
];
addinter(fullfile(libblockgame_path, 'libblockgame' + getdynlibext()), 'libblockgame', list_functions);
clear libblockgame_path;
clear bOK;
clear ilib;
clear list_functions;
