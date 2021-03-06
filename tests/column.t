Setup:

  $ . $TESTDIR/setup.sh
  $ echo "blah\nblah2" > blah.txt

Ensure column is correct:

  $ ag --column "blah\nb"
  blah.txt:1:1:blah
  blah.txt:2:0:blah2

# Test ackmate output. Not quite right, but at least offsets are in the
# ballpark instead of being 9 quintillion

  $ ag --ackmate "blah\nb"
  :blah.txt
  1;blah
  2;0 6:blah2
