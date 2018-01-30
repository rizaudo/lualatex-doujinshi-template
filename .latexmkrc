$bibtex = 'upbibtex %O %B';
$dvipdf = 'dvipdfmx %O -o  %D %S';
$pdf_previewer = 'evince';
$lualatex = 'lualatex -cmdx %O -synctex=1 -interaction=nonstopmode %S';
$pdf_mode = 1;
$biber = 'biber --bblencoding=utf8 -u -U --output_safechars';