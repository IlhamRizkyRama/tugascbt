<?php

 class Dropdown_model extends CI_Model { public function getBulan() { goto rU126; YnLgz: foreach ($result as $key => $row) { $ret[$row->id_bln] = $row->nama_bln; E7H1d: } goto p9B5g; CLyFP: $ret = []; goto LMpi9; p9B5g: NTxWU: goto zHle6; LMpi9: if (!$result) { goto UgxcI; } goto YnLgz; PAxPr: return $ret; goto sMlQ2; rU126: $result = $this->db->get("\142\x75\154\x61\x6e")->result(); goto CLyFP; zHle6: UgxcI: goto PAxPr; sMlQ2: } public function getAllSesi() { goto U9qN4; pgiH4: $result = $this->db->get("\143\142\164\137\163\145\163\x69")->result(); goto B0jbH; hC7gf: JpCS9: goto aRhpm; aRhpm: Dw0v6: goto ubD5M; U9qN4: $this->db->select("\x69\144\137\163\x65\x73\x69\54\x20\156\x61\155\x61\x5f\163\x65\x73\151\x2c\40\153\x6f\x64\145\137\x73\145\163\151"); goto pgiH4; ubD5M: return $ret; goto ChxsB; B0jbH: $ret = []; goto Lp4bM; qHc3A: foreach ($result as $key => $row) { $ret[$row->id_sesi] = $row->nama_sesi; LQILz: } goto hC7gf; Lp4bM: if (!$result) { goto Dw0v6; } goto qHc3A; ChxsB: } public function getAllRuang() { goto o179E; dk3yC: foreach ($result as $key => $row) { $ret[$row->id_ruang] = $row->nama_ruang; eENv6: } goto LAgkl; mh8ma: $ret = []; goto JBmKS; TdxlY: NW77F: goto Zugaj; LAgkl: aeepB: goto TdxlY; o179E: $result = $this->db->get("\x63\x62\164\137\162\x75\141\156\147")->result(); goto mh8ma; JBmKS: if (!$result) { goto NW77F; } goto dk3yC; Zugaj: return $ret; goto sdM0V; sdM0V: } public function getAllWaktuSesi() { goto Srd7R; a0L3J: $ret = []; goto ynkI0; yuJCK: yypZH: goto Q37Ax; qTD7d: foreach ($result as $key => $row) { $ret[$row->id_sesi] = ["\x6d\x75\x6c\141\x69" => $row->waktu_mulai, "\x61\x6b\x68\151\x72" => $row->waktu_akhir]; y5uPw: } goto Ujfjz; Srd7R: $result = $this->db->get("\x63\x62\164\137\x73\145\x73\x69")->result(); goto a0L3J; ynkI0: if (!$result) { goto yypZH; } goto qTD7d; Ujfjz: h_fbD: goto yuJCK; Q37Ax: return $ret; goto HZQ8O; HZQ8O: } public function getDataKelompokMapel() { goto t8wUB; t8wUB: $this->db->select("\52"); goto k3U1h; K9h1Q: $result = $this->db->get()->result(); goto Rp9eO; aQqzX: lLjM0: goto dCXO6; Rp9eO: $ret = []; goto T8Mt5; T8Mt5: foreach ($result as $row) { $ret[$row->kode_kel_mapel] = $row->nama_kel_mapel; VLJsu: } goto aQqzX; dCXO6: return $ret; goto Y13c1; nI2G8: $this->db->order_by("\153\157\144\145\x5f\153\145\x6c\137\155\x61\x70\x65\154"); goto K9h1Q; k3U1h: $this->db->from("\x6d\x61\x73\164\x65\162\137\153\x65\154\x6f\x6d\160\157\153\x5f\x6d\x61\160\x65\x6c"); goto nI2G8; Y13c1: } public function getAllMapel() { goto H7rpj; BosXa: $ret = []; goto uetxw; I1UBm: eqHu9: goto xK88k; xK88k: iQfm0: goto w993X; H7rpj: $this->db->select("\x69\144\x5f\155\x61\160\x65\x6c\54\x6e\141\x6d\x61\x5f\155\141\160\145\x6c\x2c\x75\162\165\x74\x61\156\x5f\x74\141\x6d\x70\151\x6c"); goto TZ9Np; uetxw: if (!$result) { goto iQfm0; } goto rIbHh; rIbHh: foreach ($result as $key => $row) { $ret[$row->id_mapel] = $row->nama_mapel; aN059: } goto I1UBm; P1YKG: $result = $this->db->get("\x6d\x61\163\164\x65\x72\137\x6d\141\x70\145\154")->result(); goto BosXa; ACMkR: $this->db->where("\x73\x74\141\164\165\163", "\x31"); goto P1YKG; TZ9Np: $this->db->order_by("\x75\x72\x75\x74\141\156\x5f\x74\141\155\160\151\154"); goto ACMkR; w993X: return $ret; goto toJYY; toJYY: } public function getAllKodeMapel() { goto VdarP; NLd2d: $ret[''] = "\124\151\x64\141\x6b\x20\141\x64\141"; goto k2p3W; r0BSw: wZmjE: goto QImFe; sZ2KE: $this->db->where("\163\164\141\164\x75\163", "\x31"); goto RPPgL; RPPgL: $result = $this->db->get("\155\x61\163\x74\145\162\137\x6d\141\x70\145\154")->result(); goto NLd2d; VdarP: $this->db->order_by("\x75\x72\x75\x74\x61\156\137\164\141\x6d\x70\x69\x6c"); goto sZ2KE; QImFe: SdNWq: goto WOZyB; sWiXw: foreach ($result as $key => $row) { $ret[$row->id_mapel] = $row->kode; XX_mc: } goto r0BSw; WOZyB: return $ret; goto dDp7H; k2p3W: if (!$result) { goto SdNWq; } goto sWiXw; dDp7H: } public function getAllMapelPeminatan() { goto KHrka; O3Hmo: $ress = []; goto KD3JW; iS6zb: $this->db->where("\153\x61\x74\145\147\x6f\x72\151\40\74\x3e\x20\42\127\101\112\111\102\x22")->where("\153\141\164\145\147\x6f\x72\x69\x20\x3c\x3e\40\x22\x50\101\x49\40\x28\113\x65\x6d\145\x6e\x61\147\51\42")->where("\x6b\x61\164\x65\147\x6f\162\151\40\74\x3e\40\x22\115\125\114\117\113\x22"); goto sPXjt; vnzlS: foreach ($result as $key => $row) { $ret[$row->id_mapel] = $row->nama_mapel; PWkRR: } goto U1eeN; esBVu: AkVAy: goto x4GgI; KHrka: $this->db->select("\52"); goto sj5_K; Kis2q: $result = $this->db->get("\x6d\x61\x73\x74\145\x72\137\x6d\141\160\x65\x6c")->result(); goto gFhRA; fOZ78: foreach ($res as $key => $row) { $ress[$row->id_kel_mapel] = $row->kode_kel_mapel; bQIJS: } goto Y1Ov7; mJ0PR: nfBI6: goto OovPG; sj5_K: $this->db->from("\x6d\141\x73\x74\x65\162\137\x6b\x65\x6c\157\155\160\157\153\x5f\155\x61\160\x65\154"); goto iS6zb; R612M: $this->db->order_by("\x75\x72\165\x74\x61\x6e\137\x74\x61\x6d\160\151\154"); goto Kis2q; KD3JW: if (!$res) { goto nfBI6; } goto fOZ78; CIm8D: $this->db->where_in("\153\x65\154\157\155\160\157\153", $ress); goto R612M; x4GgI: xayZf: goto qa5S5; U1eeN: ILvp9: goto esBVu; gFhRA: if (!$result) { goto AkVAy; } goto vnzlS; qa5S5: return $ret; goto jp07i; tDzt1: if (!(count($ress) > 0)) { goto xayZf; } goto CIm8D; OovPG: $ret = []; goto tDzt1; Y1Ov7: H9n5J: goto mJ0PR; sPXjt: $res = $this->db->get("\155\141\163\x74\145\x72\137\x6d\141\x70\145\154")->result(); goto O3Hmo; jp07i: } public function getAllKodePeminatan() { goto yQMCH; yQMCH: $this->db->select("\x2a"); goto dCSG0; mDxnp: $this->db->where("\153\141\x74\x65\147\x6f\162\151\40\74\x3e\40\x22\x50\101\111\40\x28\x4b\x65\x6d\x65\156\x61\x67\51\42"); goto k6Wwc; AwAIb: if (!$res) { goto dyMlX; } goto L_UsF; KyXGU: SSKGx: goto PnxXN; QoRj2: $res = $this->db->get("\155\x61\x73\x74\145\162\137\155\141\x70\145\x6c")->result(); goto vjuR1; dCSG0: $this->db->from("\155\141\163\x74\x65\x72\x5f\153\145\154\x6f\x6d\x70\x6f\x6b\x5f\x6d\x61\160\145\154"); goto Culw0; sN0X3: return $ress; goto zLTkS; k6Wwc: $this->db->where("\x6b\141\x74\x65\147\x6f\162\151\x20\74\76\x20\x22\x4d\125\114\117\113\42"); goto QoRj2; vjuR1: $ress = []; goto AwAIb; Culw0: $this->db->where("\x6b\141\164\145\147\x6f\x72\x69\40\x3c\76\40\x22\x57\x41\x4a\111\102\x22"); goto mDxnp; PnxXN: dyMlX: goto sN0X3; L_UsF: foreach ($res as $key => $row) { $ress[$row->id_kel_mapel] = $row; Jvhq5: } goto KyXGU; zLTkS: } public function getMapelPeminatan($arr_kelompok) { goto nNRnA; nizqd: n5Vkv: goto uxQdu; nNRnA: if (count($arr_kelompok) > 0) { goto kVUsU; } goto u2KxO; VaNyd: $ret = []; goto FHOXh; uxQdu: return $ret; goto tb7an; u2KxO: return []; goto HL52x; FHOXh: if (!$result) { goto n5Vkv; } goto Jlhg0; Jlhg0: foreach ($result as $key => $row) { $ret[$row->kelompok][$row->id_mapel] = $row->nama_mapel; PBJAB: } goto a1Nvg; tb7an: f6Vr3: goto PXwxv; q4R8P: $this->db->where_in("\153\145\154\157\155\160\157\153", $arr_kelompok); goto EMypJ; EMypJ: $this->db->order_by("\x75\162\165\x74\141\x6e\137\x74\141\155\x70\x69\154"); goto T_zIk; MOYhn: kVUsU: goto q4R8P; a1Nvg: G2z_y: goto nizqd; T_zIk: $result = $this->db->get("\x6d\141\163\164\145\x72\137\x6d\x61\160\145\x6c")->result(); goto VaNyd; HL52x: goto f6Vr3; goto MOYhn; PXwxv: } public function getAllLevel($jenjang) { goto GpbAd; KHr7g: $levels = ["\x37" => "\x37", "\70" => "\70", "\x39" => "\71"]; goto aQzCU; a5rsj: return $levels; goto BBCH6; tnC0I: H0WE5: goto XuwdK; zUPE_: if ($jenjang == "\61") { goto H0WE5; } goto v7oUK; Big2u: esK7K: goto KHr7g; s2Bo7: JNnoy: goto jOEt1; XuwdK: $levels = ["\x31" => "\x31", "\62" => "\x32", "\63" => "\63", "\x34" => "\64", "\x35" => "\x35", "\x36" => "\x36"]; goto pIpAy; pIpAy: goto jTWdw; goto Big2u; GpbAd: $levels = []; goto zUPE_; aQzCU: goto jTWdw; goto s2Bo7; sDQ0r: if ($jenjang == "\63") { goto JNnoy; } goto m3JeM; tBLQl: jTWdw: goto a5rsj; jOEt1: $levels = ["\61\60" => "\x31\60", "\x31\61" => "\x31\x31", "\61\x32" => "\x31\62"]; goto tBLQl; m3JeM: goto jTWdw; goto tnC0I; v7oUK: if ($jenjang == "\62") { goto esK7K; } goto sDQ0r; BBCH6: } public function getAllKelas($tp, $smt, $level = null) { goto QYFTg; YUmTZ: $ret = []; goto p_IvE; nbou9: $this->db->from("\x6d\x61\x73\164\x65\162\x5f\x6b\145\154\x61\163"); goto mbsyv; p_IvE: if (!$result) { goto OQ3oo; } goto YAsSG; ytUmR: OQ3oo: goto QerlA; sNb62: if (!($level != null)) { goto TIStC; } goto TmD0L; QerlA: return $ret; goto RlXzM; mbsyv: $this->db->where("\151\x64\x5f\164\x70", $tp); goto zGJQG; YAsSG: foreach ($result as $key => $row) { $ret[$row->id_kelas] = $row->nama_kelas; Q693V: } goto kCqQE; zGJQG: $this->db->where("\151\144\137\163\155\164", $smt); goto df_2d; ouJpp: TIStC: goto IasAo; kCqQE: nDbiE: goto ytUmR; TmD0L: $this->db->where("\154\x65\166\145\154\x5f\151\144" . $level); goto ouJpp; QYFTg: $this->db->select("\x2a"); goto nbou9; df_2d: $this->db->order_by("\154\145\166\145\x6c\137\x69\x64", "\x41\123\103"); goto X0nbo; X0nbo: $this->db->order_by("\156\x61\155\x61\x5f\x6b\x65\x6c\141\163", "\101\x53\103"); goto sNb62; IasAo: $result = $this->db->get()->result(); goto YUmTZ; RlXzM: } public function getAllKeyKodeKelas($tp, $smt) { goto CdstH; p2sjy: $ret = []; goto eNLRz; pxau6: Sb73i: goto Zcbs8; x2bP1: $this->db->where("\151\x64\x5f\x73\155\x74", $smt); goto OG8Bj; CdstH: $this->db->select("\x2a"); goto KIu6N; U8pcZ: $this->db->where("\x69\x64\137\164\x70", $tp); goto x2bP1; nJHbB: return $ret; goto TJVUw; MiWC8: foreach ($result as $key => $row) { $ret[$row->kode_kelas] = $row->nama_kelas; LHss5: } goto pxau6; eNLRz: if (!$result) { goto D950Q; } goto MiWC8; Zcbs8: D950Q: goto nJHbB; OG8Bj: $result = $this->db->get()->result(); goto p2sjy; KIu6N: $this->db->from("\x6d\141\163\x74\145\162\x5f\x6b\145\154\141\x73"); goto U8pcZ; TJVUw: } public function getAllKodeKelas($tp = null, $smt = null) { goto cI5lb; YBBne: $result = $this->db->get()->result(); goto Xe6ZT; gvC2W: foreach ($result as $key => $row) { $ret[$row->id_kelas] = $row->kode_kelas; sqs1f: } goto OVz07; GfbX2: $this->db->from("\x6d\x61\x73\164\x65\x72\137\x6b\145\154\x61\x73"); goto a4DsR; lW2zL: if (!$result) { goto FAulW; } goto gvC2W; DZPsj: $this->db->where("\x69\144\x5f\x74\160", $tp); goto OGmcb; OVz07: JgNPI: goto JG8i_; JG8i_: FAulW: goto JpeT2; SqTvk: JKdPs: goto YBBne; JpeT2: return $ret; goto a5Xr1; Xe6ZT: $ret = []; goto lW2zL; OGmcb: nkynB: goto h__cr; v5ePz: $this->db->where("\151\144\x5f\163\x6d\164", $smt); goto SqTvk; cI5lb: $this->db->select("\x2a"); goto GfbX2; h__cr: if (!($smt != null)) { goto JKdPs; } goto v5ePz; a4DsR: if (!($tp != null)) { goto nkynB; } goto DZPsj; a5Xr1: } public function getNamaKelasById($tp, $smt, $id) { goto fxr2X; fxr2X: $this->db->select("\x6e\141\155\x61\137\x6b\x65\x6c\141\x73"); goto rnxy5; VyoHe: goto RAW1c; goto a2vjK; RFiJ2: $this->db->where("\x69\144\137\x74\x70", $tp); goto v2NjD; oAsRW: return null; goto VyoHe; v2NjD: $this->db->where("\x69\144\137\163\155\x74", $smt); goto W32kw; a2vjK: kYyAn: goto WgBjG; W32kw: $result = $this->db->get("\155\x61\x73\x74\x65\x72\x5f\x6b\x65\x6c\141\x73")->row(); goto IYDzn; IYDzn: if ($result != null) { goto kYyAn; } goto oAsRW; WgBjG: return $result->nama_kelas; goto gR6jx; rnxy5: $this->db->where("\x69\x64\137\153\x65\154\141\x73", $id); goto RFiJ2; gR6jx: RAW1c: goto SZkBE; SZkBE: } public function getAllKelasByArrayId($tp, $smt, $arrId) { goto S5DVz; iDccO: if (!$result) { goto h1W_p; } goto omPfo; omPfo: foreach ($result as $key => $row) { $ret[$row->id_kelas] = $row->nama_kelas; nOHiK: } goto VgDwC; ZaZh1: $this->db->from("\155\141\163\x74\145\162\x5f\153\x65\x6c\x61\163"); goto FY9Px; FY9Px: $this->db->where("\x69\x64\x5f\x74\x70", $tp); goto YujH_; YujH_: $this->db->where_in("\151\144\137\x6b\145\x6c\141\163", $arrId); goto vecqA; s2j5A: $ret = []; goto iDccO; wdvbW: return $ret; goto pgeU3; vecqA: $result = $this->db->get()->result(); goto s2j5A; LlY8b: h1W_p: goto wdvbW; S5DVz: $this->db->select("\52"); goto ZaZh1; VgDwC: BvbQh: goto LlY8b; pgeU3: } public function getAllEkskul() { goto cbtq5; yWt23: rfnsc: goto gpKjU; ZGq56: foreach ($result as $key => $row) { $ret[$row->id_ekstra] = $row->nama_ekstra; fuccx: } goto Mo3F0; cbtq5: $result = $this->db->get("\155\141\163\164\145\x72\137\145\x6b\x73\x74\162\141")->result(); goto QsJHd; gpKjU: return $ret; goto kjX4s; QsJHd: $ret = []; goto z1RAu; Mo3F0: mvfTn: goto yWt23; z1RAu: if (!$result) { goto rfnsc; } goto ZGq56; kjX4s: } public function getAllKodeEkskul() { goto R_DCb; ne1DS: if (!$result) { goto eHVYO; } goto NYM3A; Cb51o: l3v0x: goto qwds2; NYM3A: foreach ($result as $key => $row) { $ret[$row->id_ekstra] = $row->kode_ekstra; Q6J3i: } goto Cb51o; aUAUs: $ret = []; goto ne1DS; qwds2: eHVYO: goto bNqBi; R_DCb: $result = $this->db->get("\x6d\x61\x73\x74\145\162\x5f\x65\153\163\164\x72\x61")->result(); goto aUAUs; bNqBi: return $ret; goto icOXz; icOXz: } public function getAllJurusan() { goto l36Sd; fdM4_: $ret = []; goto iKnBA; iKnBA: if (!$result) { goto Zb1Gs; } goto bUlV1; l36Sd: $result = $this->db->get("\x6d\x61\163\x74\x65\x72\x5f\x6a\x75\x72\x75\163\x61\156")->result(); goto fdM4_; swKep: Zb1Gs: goto dFvyh; BnWkp: u0xzW: goto swKep; bUlV1: foreach ($result as $key => $row) { $ret[$row->id_jurusan] = $row->kode_jurusan; fXwfD: } goto BnWkp; dFvyh: return $ret; goto aCBCM; aCBCM: } public function getAllGuru() { goto Xwnrj; Xwnrj: $this->db->select("\141\56\x69\144\137\147\165\162\x75\x2c\40\141\56\x6e\141\155\141\x5f\x67\165\x72\165"); goto UJnRh; UJnRh: $this->db->from("\155\x61\163\164\145\162\137\x67\165\162\x75\40\x61"); goto oMVg8; oMVg8: $this->db->join("\165\x73\145\x72\x73\x20\x65", "\141\x2e\x75\163\145\162\156\141\x6d\x65\x3d\145\x2e\165\163\145\162\156\x61\155\x65"); goto Nw8Fi; qbO9i: foreach ($result as $key => $row) { $ret[$row->id_guru] = $row->nama_guru; w4eUr: } goto dFCqr; IQ3os: kaR4o: goto SlfH9; Nw8Fi: $result = $this->db->get()->result(); goto jucGY; SlfH9: return $ret; goto kfWiT; dFCqr: g2TJc: goto IQ3os; jucGY: $ret["\60"] = "\x50\x69\x6c\x69\x68\x20\x47\165\x72\165\x20\72"; goto JEI_U; JEI_U: if (!$result) { goto kaR4o; } goto qbO9i; kfWiT: } public function getAllLevelGuru() { goto vPy1a; vPy1a: $result = $this->db->get("\154\145\166\145\154\x5f\x67\x75\x72\165")->result(); goto oIzPs; tkxs3: return $ret; goto ncFdh; No7sI: YwvjK: goto QwZ5v; oIzPs: $ret[''] = "\120\x69\x6c\x69\x68\40\x4a\141\x62\x61\164\x61\156\40\72"; goto ayxMc; Y77Ff: foreach ($result as $key => $row) { $ret[$row->id_level] = $row->level; v1IKt: } goto No7sI; ayxMc: if (!$result) { goto EmShR; } goto Y77Ff; QwZ5v: EmShR: goto tkxs3; ncFdh: } public function getAllJenisUjian() { goto NFX6a; OEDq3: foreach ($result as $key => $row) { $ret[$row->id_jenis] = $row->nama_jenis . "\x20\x28" . $row->kode_jenis . "\51"; AiVDf: } goto sloTy; tf7gf: return $ret; goto T9sNq; NFX6a: $result = $this->db->get("\x63\x62\164\x5f\x6a\x65\156\151\x73")->result(); goto i5hF4; LK2D6: UKifJ: goto tf7gf; i5hF4: $ret = []; goto bUGM7; bUGM7: if (!$result) { goto UKifJ; } goto OEDq3; sloTy: OUkCV: goto LK2D6; T9sNq: } public function getAllBankSoal() { goto HUlGf; e7IdU: QxWxO: goto Fk_Ub; jqD4L: pWuxh: goto e7IdU; NzPLq: $ret[''] = "\120\x69\x6c\151\x68\x20\102\x61\156\x6b\40\x53\x6f\141\154\40\72"; goto rrsbx; HUlGf: $result = $this->db->get("\143\142\x74\x5f\142\141\156\153\137\163\157\x61\154")->result(); goto NzPLq; Fk_Ub: return $ret; goto rqL4B; rH8i2: foreach ($result as $key => $row) { $ret[$row->id_bank] = $row->bank_kode; KgdBU: } goto jqD4L; rrsbx: if (!$result) { goto QxWxO; } goto rH8i2; rqL4B: } public function getAllJadwal($tp, $smt) { goto fZXV5; zQAAD: $this->db->join("\143\x62\x74\x5f\x62\x61\x6e\153\137\163\157\x61\154\x20\142", "\142\x2e\x69\144\x5f\142\141\156\153\75\x61\x2e\x69\x64\137\x62\141\x6e\x6b"); goto qFoOX; GSnSc: oCEs0: goto zURKa; lxIEu: $this->db->where("\141\56\151\144\137\163\x6d\x74", $smt); goto VW8A9; y2KFJ: foreach ($result as $key => $row) { $ret[$row->id_jadwal] = $row->bank_kode; a6lne: } goto GSnSc; zURKa: zMHSF: goto yp99_; qFoOX: $this->db->where("\141\56\x69\x64\x5f\x74\x70", $tp); goto lxIEu; p3JUW: $ret = []; goto C58p8; fZXV5: $this->db->from("\x63\x62\x74\137\x6a\x61\144\x77\x61\154\x20\x61"); goto zQAAD; yp99_: return $ret; goto Zwmd2; VW8A9: $result = $this->db->get()->result(); goto p3JUW; C58p8: if (!$result) { goto zMHSF; } goto y2KFJ; Zwmd2: } public function getAllJadwalMapel($tp, $smt) { goto vr_Pj; M2oAA: $this->db->join("\x6d\x61\163\164\145\162\x5f\155\x61\160\145\x6c\40\x64", "\x64\56\x69\144\x5f\155\141\160\x65\154\75\x62\56\x62\x61\x6e\153\x5f\x6d\141\160\145\154\x5f\151\144"); goto pEYL7; VfhJW: return array_unique($ret); goto lf_ao; l3305: if (!$result) { goto mLLhV; } goto UNOUQ; NxHbx: $result = $this->db->get()->result(); goto slE6x; tzXx8: mLLhV: goto VfhJW; X27TW: $this->db->join("\x63\x62\x74\x5f\x62\141\156\x6b\137\x73\157\x61\x6c\40\x62", "\x62\56\x69\144\x5f\x62\x61\156\153\x3d\141\56\x69\144\137\x62\x61\156\153"); goto M2oAA; UNOUQ: foreach ($result as $key => $row) { $ret[$row->id_jadwal] = $row->nama_mapel; nWRox: } goto E5_S4; vr_Pj: $this->db->select("\x61\x2e\x69\x64\137\x6a\x61\144\x77\x61\154\54\40\x62\56\142\x61\x6e\x6b\x5f\x6b\x6f\x64\x65\54\x20\144\56\x6e\x61\155\141\137\x6d\141\160\145\154"); goto vWguq; vWguq: $this->db->from("\143\x62\164\137\152\141\x64\x77\x61\x6c\x20\141"); goto X27TW; E5_S4: r5vl_: goto tzXx8; slE6x: $ret = []; goto l3305; MSZg_: $this->db->where("\x61\x2e\151\x64\x5f\163\155\164", $smt); goto NxHbx; pEYL7: $this->db->where("\x61\56\151\144\137\x74\x70", $tp); goto MSZg_; lf_ao: } public function getAllJadwalGuru($tp, $smt, $guru) { goto UcOyl; P7tiP: $ret = []; goto QywvP; SOcSx: foreach ($result as $key => $row) { $ret[$row->id_jadwal] = $row->bank_kode; Gi46o: } goto krwOT; wv2X8: $this->db->where("\141\56\151\x64\137\x74\x70", $tp); goto DFC8Q; OMpFB: return $ret; goto Bgkac; DFC8Q: $this->db->where("\141\x2e\151\x64\x5f\x73\x6d\x74", $smt); goto Ag_8A; Ag_8A: $result = $this->db->get()->result(); goto P7tiP; UcOyl: $this->db->from("\x63\142\164\137\152\x61\x64\167\141\154\x20\x61"); goto owq5f; krwOT: QE9sh: goto iGRJJ; iGRJJ: kJCp1: goto OMpFB; QywvP: if (!$result) { goto kJCp1; } goto SOcSx; owq5f: $this->db->join("\x63\142\164\137\142\x61\x6e\153\x5f\x73\x6f\x61\x6c\x20\142", "\142\56\x69\144\137\x62\141\x6e\153\75\141\x2e\151\144\137\142\x61\156\x6b\x20\101\x4e\104\x20\142\56\x62\x61\156\x6b\x5f\147\165\x72\165\137\151\144\75" . $guru); goto wv2X8; Bgkac: } public function getAllJenisJadwal($tp, $smt, $jenis, $mapel) { goto JIZcG; HRrte: foreach ($result as $key => $row) { $ret[$row->id_jadwal] = $row->bank_kode; lPOgr: } goto ngKna; Qrk_I: $this->db->where("\141\x2e\x69\x64\137\163\155\164", $smt); goto GdKWM; OJ3OJ: v6cin: goto sZ982; Un5LG: $this->db->join("\x63\x62\164\x5f\x62\x61\156\x6b\x5f\163\x6f\x61\154\40\x62", "\x62\x2e\151\x64\137\142\x61\x6e\153\x3d\x61\56\x69\x64\x5f\142\x61\x6e\x6b\x20\101\x4e\x44\40\142\56\142\x61\x6e\x6b\137\x6d\x61\x70\145\154\137\x69\x64\x3d" . $mapel . "\x20"); goto lAt5v; GdKWM: $this->db->where("\x61\56\x69\144\x5f\x6a\x65\156\x69\x73", $jenis); goto dLuZz; jkBSf: if (!$result) { goto v6cin; } goto HRrte; sZ982: return $ret; goto ebe6K; Ny82E: tpqae: goto z22cM; jf4TU: $this->db->join("\143\x62\x74\x5f\142\141\x6e\x6b\x5f\x73\x6f\x61\x6c\40\142", "\142\56\151\144\x5f\142\141\156\x6b\x3d\x61\56\x69\x64\x5f\x62\141\x6e\153"); goto Ny82E; fFtrh: A1zih: goto jf4TU; b8i73: if ($mapel == "\60") { goto A1zih; } goto Un5LG; Il9lR: $ret = []; goto jkBSf; JIZcG: $this->db->from("\143\x62\x74\x5f\x6a\141\x64\167\141\x6c\40\141"); goto b8i73; z22cM: $this->db->where("\141\56\151\x64\137\x74\x70", $tp); goto Qrk_I; lAt5v: goto tpqae; goto fFtrh; ngKna: n1_NC: goto OJ3OJ; dLuZz: $result = $this->db->get()->result(); goto Il9lR; ebe6K: } }
