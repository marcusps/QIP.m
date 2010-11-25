function test_ctrlu_matrix
% test_ctrlu_matrix Test qip.ctrlu with a matrix input
assertElementsAlmostEqual(qip.ctrlu(eye(2)),eye(4));
assertElementsAlmostEqual(qip.ctrlu([0 1; 1 0]),[1 0 0 0; 0 1 0 0; ...
                    0 0 0 1; 0 0 1 0]);