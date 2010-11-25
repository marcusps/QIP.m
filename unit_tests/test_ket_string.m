function test_ket_string
% test_ket_string Unit test for qip.ket with string input

assertEqual(qip.ket('0'),[1 0]');
assertEqual(qip.ket('1'),[0 1]');
assertEqual(qip.ket('00'),[1 0 0 0]');
assertEqual(qip.ket('01'),[0 1 0 0]');
assertEqual(qip.ket('10'),[0 0 1 0]');
assertEqual(qip.ket('11'),[0 0 0 1]');
