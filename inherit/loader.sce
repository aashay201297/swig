// This file is released under the 3-clause BSD license. See COPYING-BSD.
// Generated by builder.sce : Please, do not edit this file
// ----------------------------------------------------------------------------
//
libinherit_path = get_absolute_file_path('loader.sce');
//
// ulink previous function with same name
[bOK, ilib] = c_link('libinherit');
if bOK then
  ulink(ilib);
end
//
list_functions = [ 'inherit_Init';
                   'SWIG_this';
                   'SWIG_ptr';
                   'Shape_x_set';
                   'Shape_x_get';
                   'Shape_y_set';
                   'Shape_y_get';
                   'Shape_set_location';
                   'Shape_get_perimeter';
                   'new_Shape';
                   'delete_Shape';
                   'Circle_radius_set';
                   'Circle_radius_get';
                   'new_Circle';
                   'Circle_get_perimeter';
                   'delete_Circle';
                   'Square_size_set';
                   'Square_size_get';
                   'new_Square';
                   'Square_get_perimeter';
                   'delete_Square';
];
addinter(libinherit_path + filesep() + 'libinherit' + getdynlibext(), 'libinherit', list_functions);
// remove temp. variables on stack
clear libinherit_path;
clear bOK;
clear ilib;
clear list_functions;
// ----------------------------------------------------------------------------
