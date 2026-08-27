require 'gruff'
g = Gruff::Line.new(1024)
g.title = 'CVEs per release'
#g.labels = { 0 => '5/6', 1 => '5/15', 2 => '5/24', 3 => '5/30', 4 => '6/4',
#             5 => '6/12', 6 => '6/21', 7 => '6/28' }
#g.data ' ', [25, 36, 86, 39, 25, 31, 79, 88]
#g.data :Charles, [80, 54, 67, 54, 68, 70, 90, 95]
#g.data :Julie, [22, 29, 35, 38, 36, 40, 46, 57]
#g.data :Jane, [95, 95, 95, 90, 85, 80, 88, 100]
#g.data :Philip, [90, 34, 23, 12, 78, 89, 98, 88]
#g.data :Arthur, [5, 10, 13, 11, 6, 16, 22, 32]

g.labels = {
  0 => '6.9',
  1 => '6.10',
  2 => '6.11',
  3 => '6.12',
  4 => '6.13',
  5 => '6.14',
  6 => '6.15',
  7 => '6.16',
  8 => '6.17',
  9 => '6.18',
  10 => '6.19',
  11 => '7.0',
  12 => '7.1',
  13 => '7.2'
}

#g.theme = Gruff::Themes::GREYSCALE
#g.theme = Gruff::Themes::ODEO
g.theme = Gruff::Themes::PASTEL
#g.theme = Gruff::Themes::RAILS_KEYNOTE
#g.theme = Gruff::Themes::THIRTYSEVEN_SIGNALS

g.hide_legend = true
g.title_font = 'Bitter-Regular'
#g.font = 'Bitter'

g.y_axis_increment = 500
g.baseline_value = 0
g.baseline_color = 'white'
#g.hide_dots = true
#g.show_vertical_markers = true
#g.hide_lines = true

g.data(' ', [
        538,
        525,
        484,
        620,
        549,
        425,
        506,
        475,
        484,
        491,
        545,
        1246,
        1302,
        1884],
	'#72AE6E') # green

g.write('cves_per_release.png')
