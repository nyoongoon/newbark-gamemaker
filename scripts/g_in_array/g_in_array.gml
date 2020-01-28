/// @description g_in_array(needle, haystack)

var needle = argument[0];
var haystack = argument[1];
var loop = 0;
repeat (array_length_1d(haystack)) if (haystack[loop++] == needle) return true;
return false;