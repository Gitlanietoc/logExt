s/([0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}) - (\w+) \[([0-9]{2}\/\w{3}\/[0-9]{4})_(\w\w\:\w\w)\:(.{9}) .{5}\] "(\w+) \/(\w*)\/?([\w\/]*)\??(\S*)? HTTP\/1.(0|1)" (\S+) (-?[0-9]{3}) ([0-9]+) ([0-9]+) ([0-9]+) (.) ([0-9]+)/"\1", "\2", "\3", "\4", "\5", "\6", "\7", "\9", "\8"/
