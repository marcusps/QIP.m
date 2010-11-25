function test_bra_string
% test_bra_string Unit test for qip.bra with string input

assertEqual(qip.bra('0'),[1 0]);
assertEqual(qip.bra('1'),[0 1]);
assertEqual(qip.bra('00'),[1 0 0 0]);
assertEqual(qip.bra('01'),[0 1 0 0]);
assertEqual(qip.bra('10'),[0 0 1 0]);
assertEqual(qip.bra('11'),[0 0 0 1]);
