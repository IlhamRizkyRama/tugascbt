<?php

 class Cbtanalisis extends CI_Controller { public function __construct() { goto EL7MX; itl00: $this->form_validation->set_error_delimiters('', ''); goto nAJn3; mwV3H: redirect("\x61\x75\x74\x68"); goto G2oHg; EL7MX: parent::__construct(); goto Hyhj0; hipIz: goto sucCf; goto xyg7B; tix44: if (!(!$this->ion_auth->is_admin() && !$this->ion_auth->in_group("\x67\x75\x72\165"))) { goto ihxvq; } goto jGud3; G2oHg: sucCf: goto l46W8; oseqz: ihxvq: goto hipIz; Hyhj0: if (!$this->ion_auth->logged_in()) { goto l15U6; } goto tix44; xyg7B: l15U6: goto mwV3H; jGud3: show_error("\x48\x61\156\171\141\x20\101\x64\x6d\x69\156\x69\x73\164\x72\x61\164\157\162\x20\171\141\156\x67\x20\x64\151\142\x65\x72\151\40\150\x61\x6b\40\x75\x6e\164\165\153\40\x6d\x65\x6e\147\141\x6b\x73\145\x73\40\x68\x61\x6c\x61\155\141\x6e\40\151\156\151\x2c\x20\x3c\x61\x20\x68\x72\x65\146\75\42" . base_url("\x64\141\x73\x68\x62\157\141\162\x64") . "\x22\76\x4b\145\155\x62\x61\x6c\151\40\153\x65\40\155\145\x6e\x75\x20\141\x77\x61\x6c\x3c\x2f\x61\x3e", 403, "\x41\x6b\x73\x65\163\40\124\x65\x72\154\x61\x72\141\x6e\147"); goto oseqz; l46W8: $this->load->library(["\144\141\x74\141\x74\141\x62\154\x65\x73", "\146\157\x72\155\x5f\x76\x61\154\x69\144\141\164\151\157\156"]); goto itl00; nAJn3: } public function output_json($data, $encode = true) { goto tTpLO; OZ24R: $this->output->set_content_type("\141\x70\x70\154\151\x63\x61\164\x69\x6f\x6e\57\152\x73\x6f\156")->set_output($data); goto AxouZ; JKzFZ: $data = json_encode($data); goto ZIlGC; tTpLO: if (!$encode) { goto qFbZQ; } goto JKzFZ; ZIlGC: qFbZQ: goto OZ24R; AxouZ: } public function index() { goto RPubU; OGfv3: $data["\147\x75\x72\x75"] = $guru; goto uauzO; yufEw: $data["\x73\x6d\164"] = $this->dashboard->getSemester(); goto TSuO9; naawD: $this->load->model("\x43\x62\x74\x5f\x6d\157\144\145\154", "\143\x62\x74"); goto sYTgf; fp3v2: $data["\164\160"] = $this->dashboard->getTahun(); goto iKVSd; HGPDY: $smt = $this->dashboard->getSemesterActive(); goto fp3v2; ZrTEY: $all_jawaban = $this->cbt->getJawabanByBank($info->id_bank); goto U0ucA; Kxnm5: $nilai_pg = $this->cbt->getAllNilaiSiswa($jadwal); goto jY0Kv; TSuO9: $data["\x73\155\164\137\x61\143\164\151\166\x65"] = $smt; goto A72Va; gWZfM: $thn_sel = $thn_sel == null ? $tp->id_tp : $thn_sel; goto tuHBT; iKVSd: $data["\x74\160\x5f\x61\143\x74\x69\x76\x65"] = $tp; goto yufEw; kSihI: $info = $this->cbt->getJadwalById($jadwal); goto ZrTEY; sYTgf: $this->load->model("\x44\x72\157\160\144\157\x77\156\137\155\157\144\145\x6c", "\x64\162\x6f\x70\x64\x6f\167\x6e"); goto MT23R; urrre: $data["\156\151\x6c\141\151"] = $nilai_pg; goto mR8mX; uauzO: $data["\153\157\144\x65\152\x61\x64\x77\x61\x6c"] = $this->dropdown->getAllJadwalGuru($thn_sel, $smt_sel, $guru->id_guru); goto OkoGB; MT23R: $user = $this->ion_auth->user()->row(); goto SqRx6; G_r4Y: k9jBb: goto BcKOR; dNU4M: $nguru[$guru->id_guru] = $guru->nama_guru; goto OGfv3; U0ucA: $jawabans_siswa = []; goto xhtnA; mR8mX: GplUd: goto D2q22; lln0c: $this->load->view("\143\x62\164\x2f\x61\156\141\x6c\151\163\x69\163\57\x64\141\164\141"); goto zDLwI; SqRx6: $data = ["\x75\163\x65\x72" => $user, "\152\x75\144\x75\154" => "\x41\x6e\x61\x6c\x69\x73\141\x20\x53\x6f\141\x6c", "\x73\165\142\152\165\x64\165\x6c" => "\x41\156\x61\154\x69\163\x61\x20\x53\x6f\141\154\x20\x55\x6a\x69\x61\156", "\163\x65\164\164\151\x6e\x67" => $this->dashboard->getSetting()]; goto D15d5; IXnp6: $this->load->view("\155\x65\x6d\142\145\x72\x73\x2f\x67\165\x72\x75\57\x74\145\155\x70\x6c\141\164\x65\x73\x2f\146\x6f\x6f\x74\145\x72"); goto PP2l2; A72Va: $jadwal = $this->input->get("\152\141\144\x77\x61\x6c"); goto B9Y1J; trZBe: $this->load->view("\137\x74\145\155\x70\x6c\141\x74\x65\163\57\x64\141\x73\x68\x62\157\141\162\x64\x2f\137\150\x65\141\144\145\162", $data); goto lln0c; ZxMhT: foreach ($all_soals[1] as $no => $soal) { goto j2e_y; cfvoH: if ($kesukaran >= 0.3) { goto bfOd9; } goto Ed05q; bND91: $soal->status_daya = "\102\x61\x69\153"; goto GSbC_; pVZJw: $cek = $jml_siswa % 2; goto KD3Hu; WjILZ: $kesukaran = round($benar / $jml_siswa, 2); goto Q9ol6; atVUo: foreach ($jwbn_siswa as $id => $jawab_siswa) { goto tiEtz; ngzr2: $soal->jumlah_benar++; goto D1evu; grI2H: $soal->jawaban_siswa["\152\141\167\141\x62\x5f\x65"][$id] = $jawab_siswa; goto o0CjG; nvkAi: r9t5q: goto grI2H; ZQ6d2: DKzDs: goto xT603; JbLnu: array_push($x, 0); goto amLex; Rkg9j: goto HkjOR; goto r0zxZ; cI9eI: $soal->jawaban_siswa["\152\x61\167\141\142\x5f\141"][$id] = $jawab_siswa; goto s5Vpt; g11sb: $soal->jumlah_salah++; goto JbLnu; r0zxZ: ENGp_: goto vIBtT; amLex: goto eo2D7; goto UfKsV; OJX3G: JIwH7: goto vXGJ9; s5Vpt: goto HkjOR; goto OrBk6; nEips: if ($jawab_siswa == "\104") { goto JIwH7; } goto latUO; lAF7O: if ($jawab_siswa == "\x41") { goto lud0F; } goto bBXwB; H76_u: lud0F: goto cI9eI; NpjCg: goto HkjOR; goto nvkAi; OrBk6: TsLZp: goto T60zP; D1evu: array_push($x, 1); goto ReapD; uVjJ1: if ($jawab_siswa == $soal->jawaban) { goto Hfef0; } goto g11sb; YSQew: goto HkjOR; goto H76_u; vIBtT: $soal->jawaban_siswa["\x6a\x61\167\141\142\137\143"][$id] = $jawab_siswa; goto taXIX; taXIX: goto HkjOR; goto OJX3G; vXGJ9: $soal->jawaban_siswa["\152\x61\x77\x61\x62\x5f\144"][$id] = $jawab_siswa; goto NpjCg; tiEtz: $total_siswa++; goto uVjJ1; IcqZ0: if ($jawab_siswa == "\x43") { goto ENGp_; } goto nEips; T60zP: $soal->jawaban_siswa["\x6a\x61\x77\141\142\x5f\142"][$id] = $jawab_siswa; goto Rkg9j; ReapD: eo2D7: goto lAF7O; o0CjG: HkjOR: goto ZQ6d2; latUO: if ($jawab_siswa == "\x45") { goto r9t5q; } goto YSQew; bBXwB: if ($jawab_siswa == "\102") { goto TsLZp; } goto IcqZ0; UfKsV: Hfef0: goto ngzr2; xT603: } goto OhIlO; dCnB6: goto UOSsz; goto aE082; M6scQ: $soal->daya_pembeda = $daya_pembeda; goto hLM2O; DoGRb: $bagi = $jml_siswa / 2; goto GjCKq; Q9ol6: if ($kesukaran >= 0.7) { goto dQ9Ze; } goto cfvoH; QOaTK: goto qMENn; goto VO0h3; r_hpf: foreach ($nilai_pg as $id => $nilai) { goto ZRqgy; AMp7M: $no++; goto XtQLO; Jo36y: viR8v: goto AMp7M; d8cXS: $yng_benar_golonganbawah++; goto zO07m; HwTlv: if (!($siswa_menjawab == $soal->jawaban)) { goto Ufg8l; } goto MLAJe; yJ3rA: Ufg8l: goto abwGr; VDItZ: $siswa_menjawab = $jwbn_siswa[$id]; goto bA2Hs; i8APS: goto THJPu; goto ll2fI; XtQLO: bsemh: goto EEBnM; ioL7y: if (!isset($jwbn_siswa[$id])) { goto viR8v; } goto VDItZ; bA2Hs: if ($no <= $bagi) { goto fY0r_; } goto JM1LX; ZRqgy: array_push($y, $nilai->pg_benar); goto ioL7y; JM1LX: if (!($siswa_menjawab == $soal->jawaban)) { goto l0NRp; } goto d8cXS; MLAJe: $yng_benar_golonganatas++; goto yJ3rA; zO07m: l0NRp: goto i8APS; abwGr: THJPu: goto Jo36y; ll2fI: fY0r_: goto HwTlv; EEBnM: } goto jZVDi; tu8BB: $soal->jumlah_benar = 0; goto f28Lx; syX_a: $soal->total_siswa = $total_siswa; goto De2Wo; k65Ir: $y = []; goto uyGbZ; yWWYK: goto IMM9t; goto Mq4_9; f28Lx: $soal->jumlah_salah = 0; goto nyege; j2e_y: $soal->jawaban_siswa = []; goto DN3OG; mo0v2: $soal->status_daya = "\102\141\151\153\x20\123\145\x6b\141\154\151"; goto VkMcq; pojLx: BW0K7: goto Q83bF; OcHaI: $kesukaran = 0; goto PZ8TY; doK6I: $jwbn_siswa = isset($jawabans_siswa[1][$no]) && isset($jawabans_siswa[1][$no]) ? $jawabans_siswa[1][$no] : []; goto atVUo; Mq4_9: bfOd9: goto icftr; pPrqO: $daya_pembeda = $yng_benar_golonganatas / $bagi_daya; goto Gohhx; ZClur: goto BFL7c; goto JjzzA; o7ZGS: uhNiL: goto mo0v2; GSbC_: UOSsz: goto v130n; qAyHU: $yng_benar_golonganbawah = 0; goto TaxJt; pTE2q: $status_soal = "\155\165\x64\x61\150"; goto yQQ5i; KD3Hu: if (!($cek == 1)) { goto cu6Cj; } goto OjoYn; NuXae: $soal->status_daya = "\112\145\x6c\145\x6b"; goto ZClur; Yhp5a: p_ay5: goto gyofs; GnzEq: IMM9t: goto QOaTK; hZvbv: $soal->status_kesukaran = $status_soal; goto pVZJw; uyGbZ: $yng_benar_golonganatas = 0; goto qAyHU; wF7B8: $jml_siswa = $total_siswa; goto OcHaI; VkMcq: S41c3: goto UxcVt; oLep2: goto xRVFX; goto Yhp5a; aE082: oHjsd: goto bND91; JjzzA: ORUL_: goto RQ_56; pLmNE: xRVFX: goto oGsr8; OhIlO: d3An6: goto LD3JV; nyege: $total_siswa = 0; goto VV9oc; XRboj: Q1nmy: goto pPrqO; N0RME: goto DmQY5; goto pojLx; DN3OG: $soal->skor_siswa = []; goto tu8BB; zwocz: $daya_pembeda = $yng_benar_golonganatas / $bagi_daya - $yng_benar_golonganbawah / $bagi_daya; goto oLep2; Gohhx: XTb_R: goto N0RME; LD3JV: $benar = $soal->jumlah_benar; goto zdVUC; PZ8TY: $status_soal = ''; goto c1X6P; OjoYn: $jml_siswa--; goto Ru0Zk; cESzH: $soal->tingkat_kesukaran = $kesukaran; goto hZvbv; C6UmR: $validitas = $this->nilaiSignifikansi($total_siswa) <= $pearson ? "\x56\141\x6c\x69\x64" : "\124\x69\x64\141\153\40\166\141\x6c\151\144"; goto ZDku2; icftr: $status_soal = "\x73\145\x64\141\156\x67"; goto GnzEq; oGsr8: goto XTb_R; goto XRboj; UwaXC: if ($yng_benar_golonganatas == 0 && $yng_benar_golonganbawah == 0) { goto p_ay5; } goto zwocz; tYcYl: wN44Q: goto cESzH; RQ_56: $soal->status_daya = "\x43\165\x6b\165\160"; goto umjPT; jZVDi: WG8ER: goto syX_a; zdVUC: $salah = $soal->jumlah_salah; goto wF7B8; X7WdE: $soal->benar_bawah = $yng_benar_golonganbawah; goto t_uvi; Ed05q: $status_soal = "\163\x75\x6b\141\x72"; goto yWWYK; iWaE3: $bagi_daya = $bagi > 0 ? $bagi : 1; goto HxMed; t_uvi: $pearson = $this->pearson($x, $y); goto rIhdd; v130n: goto S41c3; goto o7ZGS; HxMed: if ($yng_benar_golonganatas == 0 && $yng_benar_golonganbawah != 0) { goto BW0K7; } goto aj6t3; UxcVt: tmpWh: goto Pc3Rl; TaxJt: $no = 1; goto r_hpf; Ru0Zk: cu6Cj: goto DoGRb; aLCZr: DmQY5: goto M6scQ; VO0h3: dQ9Ze: goto pTE2q; gyofs: $daya_pembeda = 0; goto pLmNE; Jn9Kx: $soal->table_r = $this->nilaiSignifikansi($total_siswa); goto C6UmR; VV9oc: $x = []; goto doK6I; De2Wo: $soal->benar_atas = $yng_benar_golonganatas; goto X7WdE; ZDku2: $soal->status_valid = $validitas; goto iWaE3; Q83bF: $daya_pembeda = 0 - $yng_benar_golonganbawah / $bagi_daya; goto aLCZr; umjPT: BFL7c: goto dCnB6; yQQ5i: qMENn: goto tYcYl; c1X6P: if (!($jml_siswa > 0)) { goto wN44Q; } goto WjILZ; GjCKq: $pos_a = 0; goto Tb3r9; Tb3r9: $pos_b = $bagi; goto k65Ir; hLM2O: if ($daya_pembeda >= 0.7) { goto uhNiL; } goto wO8Sy; rIhdd: $soal->nilai_valid = $pearson; goto Jn9Kx; aj6t3: if ($yng_benar_golonganatas != 0 && $yng_benar_golonganbawah == 0) { goto Q1nmy; } goto UwaXC; dAivm: if ($daya_pembeda >= 0.2) { goto ORUL_; } goto NuXae; wO8Sy: if ($daya_pembeda >= 0.4) { goto oHjsd; } goto dAivm; Pc3Rl: } goto TKSz_; y2en3: $smt_sel = $this->input->get("\163\155\x74"); goto gWZfM; TKSz_: rTgNJ: goto OFEHj; tbuWE: if (!($jadwal != null)) { goto GplUd; } goto kSihI; czhAV: $data["\x69\156\146\x6f"] = $info; goto QaLXf; m1JDF: if (!isset($all_soals[1])) { goto vD1qp; } goto ZxMhT; xupol: $data["\x6b\157\x64\x65\152\141\144\x77\141\154"] = $this->dropdown->getAllJadwal($thn_sel, $smt_sel); goto trZBe; lTmUR: $data["\163\155\164\137\x73\x65\154\145\143\x74\x65\144"] = $smt_sel; goto ROZAf; vnvGV: foreach ($all_jawaban as $jawaban_siswa) { goto B44Lq; Zsipj: kFwFW: goto Qi22j; kCLJu: $jawabans_siswa[$jawaban_siswa->jenis_soal][$jawaban_siswa->nomor_soal][$jawaban_siswa->id_siswa] = $jawaban_siswa->jawaban_siswa; goto Zsipj; B44Lq: array_push($ids, $jawaban_siswa->id_siswa); goto kCLJu; Qi22j: } goto HkQzD; BcKOR: $data["\x70\162\157\146\x69\154\x65"] = $this->dashboard->getProfileAdmin($user->id); goto xupol; Hl0Ld: $this->load->view("\x63\142\164\x2f\141\x6e\141\x6c\151\x73\x69\163\x2f\144\x61\164\141"); goto IXnp6; QaLXf: $data["\163\157\x61\154\x73"] = $all_soals; goto urrre; HkQzD: UCFze: goto Kxnm5; D15d5: $tp = $this->dashboard->getTahunActive(); goto HGPDY; OFEHj: vD1qp: goto czhAV; xhtnA: $ids = []; goto vnvGV; B9Y1J: $thn_sel = $this->input->get("\x74\150\x6e"); goto y2en3; tuHBT: $smt_sel = $smt_sel == null ? $smt->id_smt : $smt_sel; goto bCZ23; ROZAf: $data["\152\141\x64\x77\141\154\x5f\x73\145\154\145\143\x74\x65\x64"] = $jadwal; goto tbuWE; bCZ23: $data["\164\160\x5f\163\x65\x6c\145\x63\x74\145\x64"] = $thn_sel; goto lTmUR; jY0Kv: $all_soals = $this->cbt->getSoalByBank($info->id_bank); goto m1JDF; PP2l2: goto JFtkX; goto G_r4Y; OkoGB: $this->load->view("\155\x65\x6d\x62\145\162\x73\57\x67\x75\162\x75\x2f\x74\x65\x6d\x70\154\x61\164\145\x73\57\150\145\141\144\x65\x72", $data); goto Hl0Ld; zDLwI: $this->load->view("\x5f\164\145\155\x70\x6c\x61\164\145\x73\57\144\x61\163\x68\142\157\141\x72\144\57\x5f\x66\157\x6f\164\145\x72"); goto mDkCn; RPubU: $this->load->model("\104\141\163\x68\142\x6f\x61\x72\144\137\x6d\x6f\144\x65\x6c", "\144\141\163\150\x62\157\141\x72\x64"); goto naawD; D2q22: if ($this->ion_auth->is_admin()) { goto k9jBb; } goto U3VAA; U3VAA: $guru = $this->dashboard->getDataGuruByUserId($user->id, $thn_sel, $smt_sel); goto dNU4M; mDkCn: JFtkX: goto rUaKY; rUaKY: } private function pearson($x, $y) { goto yCLvL; Pq8J8: dWabL: goto xvk_y; B_vk6: $i = 0; goto P9KOX; t0aAN: $by += pow($yr, 2); goto UWPWX; vi73o: xxZNL: goto eK4k_; CShdP: nryR4: goto S3pAM; yHBgA: $i++; goto qU8mK; Q_Ni0: return -1; goto xyOZg; P9KOX: h8RUK: goto X_X0L; GeW5k: $d = $cx - $cy; goto B_vk6; X_X0L: if (!($i < $d)) { goto uwB8M; } goto M8slF; NgRZh: goto QWASk; goto mJp5Q; FdOlf: $xr = $x[$i] - $xs; goto yduVb; mYjMG: Roaep: goto yHBgA; W8BWf: $by = 0; goto e6MiL; NLJGL: $bx = 0; goto W8BWf; oxOa4: BqUU8: goto p_3fA; eK4k_: if (!($cx < $cy)) { goto YVLNt; } goto nCbjQ; S3pAM: $b = sqrt($bx * $by); goto RDE_i; p_3fA: return $ret; goto MOFP4; yz_7p: YVLNt: goto AIWPJ; Ni7wD: $bx += pow($xr, 2); goto t0aAN; qU8mK: goto h8RUK; goto XnmzC; Y0yy2: $i = 0; goto yxJ7D; Nu8aj: if (!($cx === 0 || $cy === 0)) { goto xxZNL; } goto eUcUT; XnmzC: uwB8M: goto IuaTw; GIkI3: $i++; goto jasD5; mJp5Q: z_fdh: goto yz_7p; yduVb: $yr = $y[$i] - $ys; goto cV5Gw; GSFG6: $ret = $a / $b; goto oxOa4; cV5Gw: $a += $xr * $yr; goto Ni7wD; aBTtS: $ys = array_sum($y) / count($y); goto WhvO2; Dv4Ck: $y = array_values($y); goto I3lqy; jasD5: goto dWabL; goto CShdP; y13Qu: $cy = count($y); goto Nu8aj; eUcUT: return -1; goto vi73o; mvjMf: if (!($b > 0)) { goto BqUU8; } goto GSFG6; Awe64: $i++; goto NgRZh; Xd9b6: if (!(count($x) !== count($y))) { goto Wtlp6; } goto Q_Ni0; DtZBR: $x = array_values($x); goto Dv4Ck; RDE_i: $ret = -1; goto mvjMf; peV61: array_pop($y); goto b5Hob; kUWXt: if (!($i < $d)) { goto z_fdh; } goto peV61; xyOZg: Wtlp6: goto DtZBR; UWPWX: KjfFS: goto GIkI3; AIWPJ: if (!($cx > $cy)) { goto LOaC7; } goto GeW5k; WhvO2: $a = 0; goto NLJGL; nCbjQ: $d = $cy - $cx; goto Y0yy2; yxJ7D: QWASk: goto kUWXt; IuaTw: LOaC7: goto Xd9b6; xvk_y: if (!($i < count($x))) { goto nryR4; } goto FdOlf; yCLvL: $cx = count($x); goto y13Qu; e6MiL: $i = 0; goto Pq8J8; M8slF: array_pop($x); goto mYjMG; b5Hob: PBWCm: goto Awe64; I3lqy: $xs = array_sum($x) / count($x); goto aBTtS; MOFP4: } public function getNilaiKelas() { goto ZJe29; ZWNn_: $data["\x69\x6e\146\157"] = $info; goto WOmcr; Qh413: $this->load->model("\x43\x62\164\x5f\155\x6f\144\145\154", "\x63\x62\x74"); goto ZOzBE; tnZ_e: $info = $this->cbt->getJadwalById($jadwal, $sesi); goto uN7Di; VMnf1: $sesi = $this->input->get("\163\145\163\151"); goto ZTGP6; ZJe29: $this->load->model("\104\x61\x73\x68\142\x6f\x61\162\144\137\155\157\144\145\154", "\x64\141\163\x68\142\157\x61\162\144"); goto Qh413; D391o: $smt = $this->dashboard->getSemesterActive(); goto tnZ_e; WOmcr: $this->output_json($data); goto VdHgA; ZOzBE: $kelas = $this->input->get("\153\145\154\x61\163"); goto VMnf1; afSHp: $data["\x73\151\x73\167\x61"] = $siswas; goto XsMlh; XsMlh: $data["\x6a\x61\x77\x61\x62\141\x6e"] = $arrDur; goto ZWNn_; f9ByH: $arrDur = []; goto C0e5y; C0e5y: foreach ($siswas as $siswa) { goto hiVOc; zAB2Q: $j++; goto JjTGm; Al8d4: g3JT2: goto Belbx; FXX0q: $arrJawab_pg[$siswa->id_siswa][] = $this->cbt->getJawabanSiswa($siswa->id_siswa . "\60" . $jadwal . $info->id_bank . 1 . ($i + 1)); goto e2J_e; A1WDs: $arrJawab_essai[$siswa->id_siswa][] = array("\x69\x64\x5f\x6a\x61\167\x61\x62\x61\x6e" => 0, "\152\141\167\141\x62\x61\156" => '', "\152\141\167\x61\x62\x61\x6e\137\142\145\156\x61\162" => '', "\153\x6f\162\145\x6b\163\151" => 0); goto xXk6y; gXrZe: eVhdJ: goto Q0UxE; tucI4: $jawaban = $this->cbt->getJawabanSiswa($siswa->id_siswa . "\x30" . $jadwal . $info->id_bank . 2 . ($j + 1)); goto k1sfU; faxgt: JjoGD: goto jr6s5; njhU_: qx6X8: goto x251y; rqEQQ: $i++; goto GN6nC; GN6nC: goto XYtG8; goto gXrZe; bowuW: Ft2KA: goto N55xt; Q0UxE: $j = 0; goto faxgt; V8n85: if (!($i < $info->tampil_pg)) { goto eVhdJ; } goto FXX0q; RURus: $arrJawab_essai = []; goto UA0BM; E_bu6: $arrDur[$siswa->id_siswa] = ["\x64\x75\162" => $this->cbt->getDurasiSiswa($siswa->id_siswa . "\60" . $jadwal), "\x6a\x61\167\141\142\137\160\147" => $arrJawab_pg[$siswa->id_siswa], "\x6a\141\167\x61\142\x5f\x65\163\163\x61\151" => $jawab_essai, "\154\157\147" => $this->cbt->getLogUjian($siswa->id_siswa, $jadwal)]; goto Al8d4; e2J_e: X3vr8: goto rqEQQ; k1sfU: if ($jawaban != null) { goto qx6X8; } goto A1WDs; JjTGm: goto JjoGD; goto bowuW; N55xt: $jawab_essai = isset($arrJawab_essai[$siswa->id_siswa]) ? $arrJawab_essai[$siswa->id_siswa] : []; goto E_bu6; qh1Zr: oz0B2: goto zAB2Q; zMIC9: XtfRc: goto qh1Zr; q7qYU: XYtG8: goto V8n85; UA0BM: $i = 0; goto q7qYU; xXk6y: goto XtfRc; goto njhU_; hiVOc: $arrJawab_pg = []; goto RURus; jr6s5: if (!($j < $info->tampil_esai)) { goto Ft2KA; } goto tucI4; x251y: $arrJawab_essai[$siswa->id_siswa][] = $jawaban; goto zMIC9; Belbx: } goto IMntD; ZTGP6: $jadwal = $this->input->get("\x6a\141\144\167\141\154"); goto hTCve; hTCve: $tp = $this->dashboard->getTahunActive(); goto D391o; uN7Di: $siswas = $this->cbt->getSiswaByKelas($tp->id_tp, $smt->id_smt, $kelas); goto f9ByH; IMntD: YqgO9: goto afSHp; VdHgA: } public function getJadwalUjianByJadwal() { goto jo2ly; StzJW: $this->load->model("\x44\x72\157\160\144\x6f\167\x6e\x5f\155\x6f\144\145\x6c", "\x64\162\x6f\x70\x64\157\x77\x6e"); goto NGE_k; WfSZ8: $tp = $this->input->get("\164\150\x6e"); goto Et9iJ; VE1ID: $kelases = []; goto pkskr; xxBoq: wKpWt: goto SxQS6; Et9iJ: $smt = $this->input->get("\163\155\x74"); goto Kv4Pz; pkskr: foreach ($kelas as $key => $value) { $kelases[$value["\x6b\x65\x6c\141\x73\137\x69\144"]] = $this->dropdown->getNamaKelasById($info->id_tp, $info->id_smt, $value["\x6b\x65\x6c\141\163\137\x69\x64"]); vo7E8: } goto xxBoq; jo2ly: $this->load->model("\103\142\x74\137\x6d\x6f\x64\145\154", "\143\x62\164"); goto StzJW; NZGVr: $kelas = unserialize($info->bank_kelas ?? ''); goto VE1ID; NGE_k: $jadwal = $this->input->get("\x6a\x61\144\167\141\154"); goto WfSZ8; SxQS6: $this->output_json($kelases); goto o5QZm; Kv4Pz: $info = $this->cbt->getJadwalById($jadwal); goto NZGVr; o5QZm: } public function kalkulasi() { goto qNu09; t3XLW: $update = $this->generateNilaiUjian($jadwal); goto Iidkx; Iidkx: $this->output_json($update); goto qakdX; qNu09: $jadwal = $this->input->get("\152\x61\x64\167\141\x6c"); goto t3XLW; qakdX: } public function generateNilaiUjian($jadwal) { goto pYs89; pyHlO: $insets = []; goto Y6LC6; Y6LC6: foreach ($siswas as $siswa) { goto GEvwC; F3gqC: foreach ($jawaban_es as $num => $jawab_es) { goto HsIKX; fV5MJ: if (!$benar) { goto REw0t; } goto iI1l7; fS1wi: $otomatis_es = $jawab_es->nilai_otomatis; goto ZIFXf; HsIKX: $skor_koreksi_es += $jawab_es->nilai_koreksi; goto yUz67; yUz67: $benar = $jawab_es != null && strtolower($jawab_es->jawaban_siswa ?? '') == strtolower($jawab_es->jawaban_benar ?? ''); goto fV5MJ; iI1l7: $benar_es++; goto N88NY; ZIFXf: kyFFl: goto DIaTW; N88NY: REw0t: goto fS1wi; DIaTW: } goto PAlh0; mSbNi: $jawaban_es = $ada_jawaban_essai ? $jawabans_siswa[$siswa->id_siswa]["\x35"] : []; goto yNtes; I0hSD: $input_es = 0; goto hTtna; tPWlB: $s_es = $bagi_essai == 0 ? 0 : $benar_es / $bagi_essai * $bobot_essai; goto I0hSD; kHB0D: $ada_jawaban_jodoh = $ada_jawaban && isset($jawabans_siswa[$siswa->id_siswa]["\63"]); goto lmYAp; GEvwC: $ada_jawaban = isset($jawabans_siswa[$siswa->id_siswa]); goto YEVNO; Y8qzl: P4UC0: goto QgO3T; fhAqR: $s_jod = $bagi_jodoh == 0 ? 0 : $benar_jod / $bagi_jodoh * $bobot_jodoh; goto JJ5uZ; mo0_i: Cnjlp: goto w1NoD; JJ5uZ: $input_jod = 0; goto OQ_ma; Nqp_X: F4I9_: goto QwHxM; yQXQL: $otomatis_jod = 0; goto nkncH; ytc23: $input_is = 0; goto MCm3p; uY4rF: $benar_is = 0; goto YbTqN; GHy__: $input_es = $nilai_input->essai_nilai; goto fKeI_; FPO_z: t5ZPE: goto PzwYN; ZmaBg: $insert["\x6a\157\x64\157\150\153\141\156\137\156\151\x6c\141\151"] = round($skor_jod, 2); goto sGppE; EV0Sv: $skor_is = $input_is != 0 ? $input_is : ($otomatis_is == 0 ? $s_is : $skor_koreksi_is); goto mSbNi; Yr9d1: if (!($jawaban_pg && count($jawaban_pg) > 0)) { goto WvUXW; } goto V4upB; A69mm: $input_is = $nilai_input->isian_nilai; goto KOz2t; kTs8f: q8G2V: goto FPO_z; AAD08: $input_pg2 = $nilai_input->kompleks_nilai; goto DMgXr; ZTQJ7: JKt6v: goto fhAqR; E0idO: $insert["\151\x64\x5f\163\x69\163\x77\141"] = $siswa->id_siswa; goto n3bak; cF_Vp: $benar_pg2 = 0; goto Mn4Um; OQ_ma: if (!($nilai_input != null && $nilai_input->jodohkan_nilai != null)) { goto pwMVt; } goto eVeIz; nkncH: if (!($info->tampil_jodohkan > 0)) { goto JKt6v; } goto jywBc; eVeIz: $input_jod = $nilai_input->jodohkan_nilai; goto CEEEu; j84bv: foreach ($jawaban_is as $num => $jawab_is) { goto Cl8W4; yO_dQ: n1fLJ: goto sY_wa; sY_wa: $otomatis_is = $jawab_is->nilai_otomatis; goto j_uzv; SlB1f: $benar = $jawab_is != null && strtolower($jawab_is->jawaban_siswa ?? '') == strtolower($jawab_is->jawaban_benar ?? ''); goto WBfQC; Cl8W4: $skor_koreksi_is += $jawab_is->nilai_koreksi; goto SlB1f; WBfQC: if (!$benar) { goto n1fLJ; } goto fq_Xc; j_uzv: CyI9B: goto b8nhB; fq_Xc: $benar_is++; goto yO_dQ; b8nhB: } goto c86D6; GGLq4: $ada_jawaban_essai = $ada_jawaban && isset($jawabans_siswa[$siswa->id_siswa]["\65"]); goto AXC7q; n3bak: $insert["\151\x64\137\152\141\144\x77\x61\x6c"] = $jadwal; goto v2PkR; aCVZY: $skor_koreksi_es = 0.0; goto GIkyk; fOvOS: $otomatis_is = 0; goto kCXLR; zgbpL: foreach ($jawaban_jodoh as $num => $jawab_jod) { goto CC1ZD; YWBBU: foreach ($arrJwbJawab as $p => $ajjs) { goto T1H0e; K_h2N: ZTPw2: goto CO7Ha; T1H0e: foreach ($ajjs->subtitle as $pp => $ajs) { goto NdngS; X0yQn: $item_benar++; goto jZRS4; R_BLX: B92_G: goto X0yQn; u9bwu: goto USSHn; goto R_BLX; aIm0W: $item_salah++; goto u9bwu; dRDc8: fxUym: goto lp_Ky; jZRS4: USSHn: goto dRDc8; NdngS: if (in_array($ajs, $arrJwbSoal[$p]->subtitle)) { goto B92_G; } goto aIm0W; lp_Ky: } goto sCPBi; sCPBi: SRlm1: goto K_h2N; CO7Ha: } goto UVHZv; eZ24t: cDf5l: goto D_dr1; aB1rS: $benar_jod += 1 / $items * $item_benar; goto CCgu7; BBHL7: $item_salah = 0; goto YWBBU; AVnAe: KT5Cy: goto I5645; CCgu7: $otomatis_jod = $jawab_jod->nilai_otomatis; goto eZ24t; GEhV2: $item_benar = 0; goto BBHL7; NPzbE: CgMil: goto GEhV2; EqmfI: foreach ($arrJawab as $kolJawab) { goto Oghgr; E9Zaw: fBolj: goto zQn0T; wQPs0: array_push($arrJwbJawab, $jwbs); goto E9Zaw; mqQBG: AQbiG: goto wQPs0; fr6Kf: foreach ($kolJawab as $po => $kol) { goto K2WkO; ANuzb: zNEGh: goto mC1LF; nzA3z: $jwbs->subtitle[] = $sub; goto ANuzb; sdRaj: $sub = $headJawab[$po]; goto nzA3z; K2WkO: if (!($kol == "\x31")) { goto zNEGh; } goto sdRaj; mC1LF: ksV63: goto PbM6K; PbM6K: } goto mqQBG; Oghgr: $jwbs = new stdClass(); goto fr6Kf; zQn0T: } goto NPzbE; rmt5m: $arrJwbSoal = []; goto GHpsa; mxiwZ: $arrJwbJawab = []; goto EqmfI; bnEy_: $arrSoal = $jawab_jod->jawaban_benar->jawaban; goto iroWb; CC1ZD: $skor_koreksi_jod += $jawab_jod->nilai_koreksi; goto bnEy_; GHpsa: $items = 0; goto Ndq0A; iroWb: $headSoal = array_shift($arrSoal); goto rmt5m; C8xXV: $headJawab = array_shift($arrJawab); goto mxiwZ; UVHZv: Lzvxy: goto aB1rS; Ndq0A: foreach ($arrSoal as $kolSoal) { goto u1gTO; u1gTO: $jwb = new stdClass(); goto IVMzh; NW3NE: pXbHP: goto yur1B; IVMzh: foreach ($kolSoal as $pos => $kol) { goto AzOE4; USK3j: kwXVC: goto tYb2n; zqE0q: $items++; goto USK3j; x1Wst: $jwb->subtitle[] = $headSoal[$pos]; goto zqE0q; AzOE4: if (!($kol == "\61")) { goto kwXVC; } goto x1Wst; tYb2n: ieowO: goto xlfkb; xlfkb: } goto NW3NE; CM6yA: fnP6y: goto HnLXr; yur1B: $jwb->title = array_shift($kolSoal); goto jNId1; jNId1: array_push($arrJwbSoal, $jwb); goto CM6yA; HnLXr: } goto AVnAe; I5645: $arrJawab = $jawab_jod->jawaban_siswa->jawaban; goto C8xXV; D_dr1: } goto LlRkx; flI4B: $jawaban_pg = $ada_jawaban_pg ? $jawabans_siswa[$siswa->id_siswa]["\61"] : []; goto FoeD5; jywBc: if (!($jawaban_jodoh && count($jawaban_jodoh) > 0)) { goto SgMIF; } goto zgbpL; KOz2t: w3cSQ: goto EV0Sv; PzwYN: $s_is = $bagi_isian == 0 ? 0 : $benar_is / $bagi_isian * $bobot_isian; goto ytc23; QJgCG: $skor_pg = $bagi_pg == 0 ? 0 : $benar_pg / $bagi_pg * $bobot_pg; goto W_dh3; W_dh3: $jawaban_pg2 = $ada_jawaban_pg2 ? $jawabans_siswa[$siswa->id_siswa]["\62"] : []; goto cF_Vp; pV126: $input_pg2 = 0; goto ujFy8; YEVNO: $ada_jawaban_pg = $ada_jawaban && isset($jawabans_siswa[$siswa->id_siswa]["\x31"]); goto m1bLk; c2ByC: if (!($jawaban_pg2 && count($jawaban_pg2) > 0)) { goto uv7i2; } goto TAB1H; QwHxM: l_ja2: goto tPWlB; sGppE: $insert["\151\163\x69\141\156\137\x6e\151\x6c\141\151"] = round($skor_is, 2); goto VwYeb; fKeI_: v89tX: goto UqLXi; zFmEI: $otomatis_pg2 = 0; goto f_MJu; PAlh0: wL6MA: goto Nqp_X; UqLXi: $skor_es = $input_es != 0 ? $input_es : ($otomatis_es == 0 ? $s_es : $skor_koreksi_es); goto UFSG2; wQtvk: if (!($info->tampil_esai > 0)) { goto l_ja2; } goto msihj; TAB1H: foreach ($jawaban_pg2 as $num => $jawab_pg2) { goto hV7jA; w6l1d: H0xuc: goto SYtFs; VU3Ho: foreach ($jawab_pg2->jawaban_siswa as $js) { goto gTlWI; A_neW: JwUyE: goto oilop; UMO8N: array_push($arr_benar, true); goto A_neW; gTlWI: if (!in_array($js, $jawab_pg2->jawaban_benar)) { goto JwUyE; } goto UMO8N; oilop: zS7Cr: goto qsFe4; qsFe4: } goto qxlul; Rh44D: $arr_benar = []; goto VU3Ho; hV7jA: $otomatis_pg2 = $jawab_pg2->nilai_otomatis; goto jo36S; jo36S: $skor_koreksi_pg2 += $jawab_pg2->nilai_koreksi; goto Rh44D; qxlul: qaop9: goto ZUQ7D; ZUQ7D: $benar_pg2 += 1 / count($jawab_pg2->jawaban_benar) * count($arr_benar); goto w6l1d; SYtFs: } goto Y8qzl; x_koZ: zlHoT: goto b0Tx2; V4upB: foreach ($jawaban_pg as $jwb_pg) { goto oJeYB; nP3rX: if (strtoupper($jwb_pg->jawaban_siswa) == strtoupper($jwb_pg->jawaban_benar ?? '')) { goto Sny3M; } goto fiUqy; jYgod: JqYo6: goto THAc5; ZXwp7: goto WWrHN; goto gCbwf; oJeYB: if (!($jwb_pg != null && $jwb_pg->jawaban_siswa != null)) { goto JqYo6; } goto nP3rX; gCbwf: Sny3M: goto kF6E4; kF6E4: $benar_pg += 1; goto Hw5Vs; Hw5Vs: WWrHN: goto jYgod; THAc5: ZUDt9: goto zqsEB; fiUqy: $salah_pg += 1; goto ZXwp7; zqsEB: } goto mo0_i; Mn4Um: $skor_koreksi_pg2 = 0.0; goto zFmEI; yNtes: $benar_es = 0; goto aCVZY; GIkyk: $otomatis_es = 0; goto wQtvk; f_MJu: if (!($info->tampil_kompleks > 0)) { goto aSo6_; } goto c2ByC; dQyei: $jawaban_is = $ada_jawaban_isian ? $jawabans_siswa[$siswa->id_siswa]["\x34"] : []; goto uY4rF; yQ7X_: array_push($insets, $insert); goto x_koZ; m4W7p: $s_pg2 = $bagi_pg2 == 0 ? 0 : $benar_pg2 / $bagi_pg2 * $bobot_pg2; goto pV126; v2PkR: $insert["\x70\147\x5f\142\145\x6e\x61\x72"] = $benar_pg; goto pDFyS; gY8as: $salah_pg = 0; goto OnOSr; pdypM: $skor_jod = $input_jod != 0 ? $input_jod : ($otomatis_jod == 0 ? $s_jod : $skor_koreksi_jod); goto dQyei; JFQwm: aSo6_: goto m4W7p; unSyn: $skor_pg2 = $input_pg2 != 0 ? $input_pg2 : ($otomatis_pg2 == 0 ? $s_pg2 : $skor_koreksi_pg2); goto Rr7fs; QgO3T: uv7i2: goto JFQwm; CEEEu: pwMVt: goto pdypM; Eb_BT: $insert["\x6b\157\x6d\x70\154\x65\x6b\x73\x5f\156\151\154\x61\151"] = round($skor_pg2, 2); goto ZmaBg; MCm3p: if (!($nilai_input != null && $nilai_input->isian_nilai != null)) { goto w3cSQ; } goto A69mm; kCXLR: if (!($info->tampil_isian > 0)) { goto t5ZPE; } goto dsSjq; OnOSr: if (!($info->tampil_pg > 0)) { goto iAyG_; } goto Yr9d1; msihj: if (!($jawaban_es && count($jawaban_es) > 0)) { goto F4I9_; } goto F3gqC; m1bLk: $ada_jawaban_pg2 = $ada_jawaban && isset($jawabans_siswa[$siswa->id_siswa]["\x32"]); goto kHB0D; AXC7q: $nilai_input = $this->cbt->getNilaiSiswaByJadwal($jadwal, $siswa->id_siswa); goto flI4B; rQYi6: $benar_jod = 0; goto rDdKM; UtWpR: iAyG_: goto QJgCG; FoeD5: $benar_pg = 0; goto gY8as; LlRkx: Q1Kip: goto gTPmc; pDFyS: $insert["\x70\147\x5f\156\151\x6c\141\x69"] = round($skor_pg, 2); goto Eb_BT; DMgXr: d93MT: goto unSyn; gTPmc: SgMIF: goto ZTQJ7; YbTqN: $skor_koreksi_is = 0.0; goto fOvOS; rDdKM: $skor_koreksi_jod = 0.0; goto yQXQL; w1NoD: WvUXW: goto UtWpR; ujFy8: if (!($nilai_input != null && $nilai_input->kompleks_nilai != null)) { goto d93MT; } goto AAD08; VwYeb: $insert["\145\x73\x73\x61\151\137\156\151\x6c\x61\151"] = round($skor_es, 2); goto yQ7X_; hTtna: if (!($nilai_input != null && $nilai_input->isian_nilai != null)) { goto v89tX; } goto GHy__; c86D6: KzqcA: goto kTs8f; lmYAp: $ada_jawaban_isian = $ada_jawaban && isset($jawabans_siswa[$siswa->id_siswa]["\64"]); goto GGLq4; dsSjq: if (!($jawaban_is && count($jawaban_is) > 0)) { goto q8G2V; } goto j84bv; UFSG2: $insert["\x69\x64\137\156\151\x6c\141\151"] = $siswa->id_siswa . "\x30" . $jadwal; goto E0idO; Rr7fs: $jawaban_jodoh = $ada_jawaban_jodoh ? $jawabans_siswa[$siswa->id_siswa]["\x33"] : []; goto rQYi6; b0Tx2: } goto V9Njb; vTdvg: $soal = []; goto x6NLS; uNihi: $bobot_pg = $info->bobot_pg / 100; goto zsOvQ; pYs89: $this->load->model("\x43\142\164\x5f\x6d\x6f\144\x65\x6c", "\x63\x62\164"); goto TwGib; p801X: $bagi_essai = $info->tampil_esai / 100; goto luPCj; RYgn_: $bobot_jodoh = $info->bobot_jodohkan / 100; goto y3taG; lb7Et: $bobot_isian = $info->bobot_isian / 100; goto p801X; lbDAc: $jawabans = $this->cbt->getJawabanByBank($info->id_bank); goto vTdvg; YuoF1: foreach ($siswas as $key => $value) { array_push($ids, $value->id_siswa); s00I9: } goto izJ2O; NFig_: vVXkh: goto kM97J; K7qkC: $kelases = []; goto Vx0x4; wfjqX: vNPkq: goto pyHlO; drexl: return $update; goto iDi3Q; LjwZG: $bagi_jodoh = $info->tampil_jodohkan / 100; goto RYgn_; V9Njb: Fz2TM: goto VvMM0; kM97J: $siswas = $this->cbt->getSiswaByKelas($info->id_tp, $info->id_smt, $kelases); goto oU3lF; vgum6: $kelas_bank = unserialize($info->bank_kelas ?? ''); goto K7qkC; x6NLS: $jawabans_siswa = []; goto l4b5c; TwGib: $info = $this->cbt->getJadwalById($jadwal); goto UomUs; zsOvQ: $bagi_pg2 = $info->tampil_kompleks / 100; goto RCe09; oU3lF: $ids = []; goto YuoF1; l4b5c: foreach ($jawabans as $jawaban_siswa) { goto BnDm_; YF9HP: $jawaban_siswa->jawaban_benar = @unserialize($jawaban_siswa->jawaban_benar ?? ''); goto t1urz; oyQ7V: $jawaban_siswa->jawaban_benar = json_decode(json_encode($jawaban_siswa->jawaban_benar)); goto kq4Il; S_3vA: C0fEU: goto As76D; BnDm_: if (!($jawaban_siswa->jenis_soal == "\62")) { goto VYeUS; } goto sCXNV; QgB8k: $jawaban_siswa->jawaban_benar = array_map("\x73\164\162\x74\x6f\x75\x70\160\x65\162", $jawaban_siswa->jawaban_benar ?? ['']); goto kppdY; Vn9Lw: $soal[$jawaban_siswa->jenis_soal][] = $jawaban_siswa; goto S_3vA; kq4Il: V512i: goto H5D0u; cl4b8: $jawaban_siswa->jawaban_benar = @unserialize($jawaban_siswa->jawaban_benar ?? ''); goto QgB8k; fKnSB: $jawaban_siswa->jawaban_siswa = @unserialize($jawaban_siswa->jawaban_siswa ?? ''); goto cl4b8; t1urz: $jawaban_siswa->jawaban_siswa = json_decode(json_encode($jawaban_siswa->jawaban_siswa)); goto oyQ7V; kppdY: $jawaban_siswa->jawaban_benar = array_filter($jawaban_siswa->jawaban_benar ?? [''], "\163\164\162\154\145\156"); goto y_cyr; jdqrX: if (!($jawaban_siswa->jenis_soal == "\x33")) { goto V512i; } goto cVS8d; cVS8d: $jawaban_siswa->jawaban_siswa = @unserialize($jawaban_siswa->jawaban_siswa ?? ''); goto YF9HP; H5D0u: $jawabans_siswa[$jawaban_siswa->id_siswa][$jawaban_siswa->jenis_soal][] = $jawaban_siswa; goto Vn9Lw; sCXNV: $jawaban_siswa->opsi_a = @unserialize($jawaban_siswa->opsi_a ?? ''); goto fKnSB; y_cyr: VYeUS: goto jdqrX; As76D: } goto wfjqX; UomUs: $bagi_pg = $info->tampil_pg / 100; goto uNihi; y3taG: $bagi_isian = $info->tampil_isian / 100; goto lb7Et; luPCj: $bobot_essai = $info->bobot_esai / 100; goto vgum6; VvMM0: $update = $this->db->update_batch("\143\x62\164\x5f\x6e\x69\x6c\x61\x69", $insets, "\x69\144\137\156\151\154\141\151"); goto drexl; Vx0x4: foreach ($kelas_bank as $key => $value) { array_push($kelases, $value["\x6b\x65\x6c\141\163\137\x69\144"]); Slgjr: } goto NFig_; RCe09: $bobot_pg2 = $info->bobot_kompleks / 100; goto LjwZG; izJ2O: AjD_i: goto lbDAc; iDi3Q: } private function nilaiSignifikansi($jml) { goto KzUo3; deNQ4: goto CG5PW; goto TFAN8; TFAN8: xpjQk: goto qADeV; Ls4ES: xe0uP: goto WEzgm; q0Z9m: TsJFA: goto xAQrj; P2_m7: GzIX8: goto deNQ4; pzqWu: $keys = $this->getClosest($jml, array_keys($list)); goto NrxCd; KzUo3: $list = [3 => [5 => 0.997], [1 => 0.999], 4 => [5 => 0.95], [1 => 0.99], 5 => [5 => 0.878], [1 => 0.959], 6 => [5 => 0.8110000000000001], [1 => 0.917], 7 => [5 => 0.754], [1 => 0.874], 8 => [5 => 0.707], [1 => 0.834], 9 => [5 => 0.666], [1 => 0.798], 10 => [5 => 0.632], [1 => 0.765], 11 => [5 => 0.602], [1 => 0.735], 12 => [5 => 0.576], [1 => 0.708], 13 => [5 => 0.553], [1 => 0.6840000000000001], 14 => [5 => 0.532], [1 => 0.661], 15 => [5 => 0.514], [1 => 0.641], 16 => [5 => 0.497], [1 => 0.623], 17 => [5 => 0.482], [1 => 0.606], 18 => [5 => 0.468], [1 => 0.59], 19 => [5 => 0.456], [1 => 0.575], 20 => [5 => 0.444], [1 => 0.5610000000000001], 21 => [5 => 0.433], [1 => 0.549], 22 => [5 => 0.423], [1 => 0.537], 23 => [5 => 0.413], [1 => 0.526], 24 => [5 => 0.404], [1 => 0.515], 25 => [5 => 0.396], [1 => 0.505], 26 => [5 => 0.388], [1 => 0.496], 27 => [5 => 0.381], [1 => 0.487], 28 => [5 => 0.374], [1 => 0.478], 29 => [5 => 0.367], [1 => 0.47], 30 => [5 => 0.361], [1 => 0.463], 31 => [5 => 0.355], [1 => 0.456], 32 => [5 => 0.349], [1 => 0.449], 33 => [5 => 0.344], [1 => 0.442], 34 => [5 => 0.339], [1 => 0.436], 35 => [5 => 0.334], [1 => 0.43], 36 => [5 => 0.329], [1 => 0.424], 37 => [5 => 0.325], [1 => 0.418], 38 => [5 => 0.32], [1 => 0.413], 39 => [5 => 0.316], [1 => 0.408], 40 => [5 => 0.312], [1 => 0.403], 41 => [5 => 0.308], [1 => 0.398], 42 => [5 => 0.304], [1 => 0.393], 43 => [5 => 0.301], [1 => 0.389], 44 => [5 => 0.297], [1 => 0.384], 45 => [5 => 0.294], [1 => 0.38], 46 => [5 => 0.291], [1 => 0.376], 47 => [5 => 0.288], [1 => 0.372], 48 => [5 => 0.284], [1 => 0.368], 49 => [5 => 0.281], [1 => 0.364], 50 => [5 => 0.279], [1 => 0.361], 55 => [5 => 0.266], [1 => 0.345], 60 => [5 => 0.254], [1 => 0.33], 65 => [5 => 0.244], [1 => 0.317], 70 => [5 => 0.235], [1 => 0.306], 75 => [5 => 0.227], [1 => 0.296], 80 => [5 => 0.22], [1 => 0.286], 85 => [5 => 0.213], [1 => 0.278], 90 => [5 => 0.207], [1 => 0.27], 95 => [5 => 0.202], [1 => 0.263], 100 => [5 => 0.195], [1 => 0.256], 125 => [5 => 0.176], [1 => 0.23], 150 => [5 => 0.159], [1 => 0.21], 175 => [5 => 0.149], [1 => 0.194], 200 => [5 => 0.138], [1 => 0.191], 300 => [5 => 0.113], [1 => 0.181], 400 => [5 => 0.098], [1 => 0.148], 500 => [5 => 0.08799999999999999], [1 => 0.128], 600 => [5 => 0.08], [1 => 0.115], 700 => [5 => 0.074], [1 => 0.105], 800 => [5 => 0.07000000000000001], [1 => 0.091], 900 => [5 => 0.065], [1 => 0.08599999999999999], 1000 => [5 => 0.062], [1 => 0.081]]; goto qK4A0; irpt4: CG5PW: goto SeapR; TE7FA: return $list[$keys]["\61"]; goto awaEf; xAQrj: if (isset($list[$keys]["\65"])) { goto uSYmp; } goto TE7FA; awaEf: goto GzIX8; goto znu02; LASe1: $keys = 4; goto q0Z9m; C9XDG: BecEQ: goto irpt4; NrxCd: if (!($keys < 4)) { goto TsJFA; } goto LASe1; znu02: uSYmp: goto PtNlq; qADeV: if (isset($list[$jml]["\x35"])) { goto xe0uP; } goto xd4Ok; xd4Ok: return $list[$jml]["\x31"]; goto pIdFD; PtNlq: return $list[$keys]["\65"]; goto P2_m7; pIdFD: goto BecEQ; goto Ls4ES; qK4A0: if (isset($list[$jml])) { goto xpjQk; } goto pzqWu; WEzgm: return $list[$jml]["\65"]; goto C9XDG; SeapR: } function getClosest($search, $arr) { goto lZAPv; LjL8b: mn1iS: goto z99VW; lZAPv: $closest = null; goto xchei; xchei: foreach ($arr as $item) { goto i3imW; i3imW: if (!($closest === null || abs($search - $closest) > abs($item - $search))) { goto kJHfA; } goto glcY8; oV1ww: kJHfA: goto Jesnz; Jesnz: YQ9k3: goto IKLYA; glcY8: $closest = $item; goto oV1ww; IKLYA: } goto LjL8b; z99VW: return $closest; goto Ee41L; Ee41L: } }
