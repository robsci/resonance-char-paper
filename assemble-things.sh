#!/bin/bash/

mkdir -p submit

rm -r res-char.tar.gz
rm -f ./submit/*

cp res_char.tex ./submit/
cp res_char.bbl ./submit/

cp Resonances.bib ./submit/

#cp Fig_good_traj.pdf ./submit/
#cp Fig_overlap.pdf ./submit/
#cp Fig_res_diff_traj.pdf ./submit/
#cp Fig_res_jump_calc.pdf ./submit/
#cp Fig_q_jump.pdf ./submit/
#cp Fig_e_rms_p.pdf ./submit/
#cp Fig_nu_rms_p.pdf ./submit/
#cp Fig_res_pop_M.pdf ./submit/
#cp Fig_res_pop_a.pdf ./submit/
#cp Fig_res_pop_z.pdf ./submit/
#cp Fig_res_pop_p.pdf ./submit/
#cp Fig_res_pop_e.pdf ./submit/
#cp Fig_res_pop_iota.pdf ./submit/
#cp Fig_res_pop_t.pdf ./submit/
#cp Fig_res_pop_SNR.pdf ./submit/
#cp Fig_res_overlap_t.pdf ./submit/
#cp Fig_res_pop_SNR_overlap.pdf ./submit/
#cp Fig_res-2-5-95-plane.pdf ./submit/
#cp Fig_fit-error-max-plane.pdf ./submit/
#cp Fig_fit-error-RMS-plane.pdf ./submit/

cp Fig_good_traj.pdf ./submit/
cp Fig_overlap.pdf ./submit/
cp Fig_res_diff_traj.pdf ./submit/
cp Fig_res_jump_calc.pdf ./submit/
cp Fig_q_jump.pdf ./submit/
cp Fig_e_rms_p.pdf ./submit/
cp Fig_nu_rms_p.pdf ./submit/
cp Fig_res_pop_M.pdf ./submit/
cp Fig_res_pop_a.pdf ./submit/
cp Fig_res_pop_z.pdf ./submit/
cp Fig_res_pop_p.pdf ./submit/
cp Fig_res_pop_e.pdf ./submit/
cp Fig_res_pop_iota.pdf ./submit/
cp Fig_res_pop_t.pdf ./submit/
cp Fig_res_pop_SNR.pdf ./submit/
cp Fig_res_overlap_t.pdf ./submit/
cp Fig_res_pop_SNR_overlap.pdf ./submit/
cp Fig_res-2-5-95-plane.pdf ./submit/
cp Fig_fit-error-max-plane.pdf ./submit/
cp Fig_fit-error-RMS-plane.pdf ./submit/

tar -zcvf res-char.tar.gz submit
