# sets up client SSH configuration file so that we can connect t a server
without using a password
file_line {'password auth':
	path => '/etc/ssh/ssh_config',
	match => '^PasswordAuthentication',
	line => 'PasswordAuthentication no',
}

file_line {'set identity file':
	path => '/etc/ssh/ssh_config',
	match => '^IdentityFile',
	line => 'IdentityFile ~/.ssh/school',
}