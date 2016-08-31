#!/bin/bash/

mkdir -p submit

rm -r res-char.tar.gz
rm -f ./submit/*

cp res_char.tex ./submit/
cp res_char.bbl ./submit/

cp Resonances.bib ./submit/

cp Fig_good_traj.* ./submit/
cp Fig_overlap.* ./submit/
cp Fig_res_diff_traj.* ./submit/
cp Fig_res_jump_calc.* ./submit/
cp Fig_q_jump.* ./submit/
cp Fig_e_rms_p.* ./submit/
cp Fig_nu_rms_p.* ./submit/
cp Fig_res_pop_M.* ./submit/
cp Fig_res_pop_a.* ./submit/
cp Fig_res_pop_z.* ./submit/
cp Fig_res_pop_p.* ./submit/
cp Fig_res_pop_e.* ./submit/
cp Fig_res_pop_iota.* ./submit/
cp Fig_res_pop_t.* ./submit/
cp Fig_res_pop_SNR.* ./submit/
cp Fig_res_overlap_t.* ./submit/
cp Fig_res_pop_SNR_overlap.* ./submit/
cp Fig_res-2-5-95-plane.* ./submit/
cp Fig_fit-error-max-plane.* ./submit/
cp Fig_fit-error-RMS-plane.* ./submit/

tar -zcvf res-char.tar.gz submit
