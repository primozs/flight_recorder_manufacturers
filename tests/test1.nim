# This is just an example to get you started. You may wish to put all of your
# tests into a single file, or separate them into multiple `test1`, `test2`
# etc. files (better names are recommended, just make sure the name starts with
# the letter 't').
#
# To run these tests, simply execute `nimble test`.

import unittest

import flight_recorder_manufacturers
test "check FLA":
  let res = lookup("FLA")
  check res == "Flarm"

test "check V":
  let res = lookup("V")
  check res == "LXNAV"

test "check XCS":
  let res = lookup("XCS")
  check res == "XCSoar"

