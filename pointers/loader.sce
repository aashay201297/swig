// ----------------------------------------------------------------------------
//  This file was automatically generated by SWIG (http://www.swig.org).
//  Version 3.0.13
// 
//  Do not make changes to this file unless you know what you are doing--modify
//  the SWIG interface file instead.
// ----------------------------------------------------------------------------- */

libpointers_path = get_absolute_file_path('loader.sce');
[bOK, ilib] = c_link('libpointers');
if bOK then
  ulink(ilib);
end
list_functions = [..
  'pointers_Init'; ..
  'SWIG_this'; ..
  'SWIG_ptr'; ..
  'fopen'; ..
  'fputs'; ..
  'fclose'; ..
];
addinter(fullfile(libpointers_path, 'libpointers' + getdynlibext()), 'libpointers', list_functions);
clear libpointers_path;
clear bOK;
clear ilib;
clear list_functions;
