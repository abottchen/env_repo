class test3 {
  $ts = generate('/bin/date', '+%Y%d%m_%H:%M:%S')
  $timestamp = regsubst($ts,'\n','')

  file {'/tmp/testfile':
    ensure  => file,
    content => 'Testing content',
    backup  => ".${timestamp}",
  }
}
