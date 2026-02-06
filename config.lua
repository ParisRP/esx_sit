Config = {}

-- Liste complète des props où on peut s'asseoir (avec offsets spécifiques)
Config.SitableObjects = {
    -- Bancs
    ['prop_bench_01a'] = { offset = {x = 0.0, y = 0.0, z = 0.5}, heading = 180.0, type = 'bench', scenario = 'PROP_HUMAN_SEAT_BENCH' },
    ['prop_bench_01b'] = { offset = {x = 0.0, y = 0.0, z = 0.5}, heading = 180.0, type = 'bench', scenario = 'PROP_HUMAN_SEAT_BENCH' },
    ['prop_bench_01c'] = { offset = {x = 0.0, y = 0.0, z = 0.5}, heading = 180.0, type = 'bench', scenario = 'PROP_HUMAN_SEAT_BENCH' },
    ['prop_bench_02'] = { offset = {x = 0.0, y = 0.0, z = 0.5}, heading = 180.0, type = 'bench', scenario = 'PROP_HUMAN_SEAT_BENCH' },
    ['prop_bench_03'] = { offset = {x = 0.0, y = 0.0, z = 0.5}, heading = 180.0, type = 'bench', scenario = 'PROP_HUMAN_SEAT_BENCH' },
    ['prop_bench_04'] = { offset = {x = 0.0, y = 0.0, z = 0.5}, heading = 180.0, type = 'bench', scenario = 'PROP_HUMAN_SEAT_BENCH' },
    ['prop_bench_05'] = { offset = {x = 0.0, y = 0.0, z = 0.5}, heading = 180.0, type = 'bench', scenario = 'PROP_HUMAN_SEAT_BENCH' },
    ['prop_bench_06'] = { offset = {x = 0.0, y = 0.0, z = 0.5}, heading = 180.0, type = 'bench', scenario = 'PROP_HUMAN_SEAT_BENCH' },
    ['prop_bench_07'] = { offset = {x = 0.0, y = 0.0, z = 0.5}, heading = 180.0, type = 'bench', scenario = 'PROP_HUMAN_SEAT_BENCH' },
    ['prop_bench_08'] = { offset = {x = 0.0, y = 0.0, z = 0.5}, heading = 180.0, type = 'bench', scenario = 'PROP_HUMAN_SEAT_BENCH' },
    ['prop_bench_09'] = { offset = {x = 0.0, y = 0.0, z = 0.5}, heading = 180.0, type = 'bench', scenario = 'PROP_HUMAN_SEAT_BENCH' },
    ['prop_bench_10'] = { offset = {x = 0.0, y = 0.0, z = 0.5}, heading = 180.0, type = 'bench', scenario = 'PROP_HUMAN_SEAT_BENCH' },
    ['prop_bench_11'] = { offset = {x = 0.0, y = 0.0, z = 0.5}, heading = 180.0, type = 'bench', scenario = 'PROP_HUMAN_SEAT_BENCH' },
    ['prop_fib_3b_bench'] = { offset = {x = 0.0, y = 0.0, z = 0.5}, heading = 180.0, type = 'bench', scenario = 'PROP_HUMAN_SEAT_BENCH' },
    ['prop_ld_bench01'] = { offset = {x = 0.0, y = 0.0, z = 0.5}, heading = 180.0, type = 'bench', scenario = 'PROP_HUMAN_SEAT_BENCH' },
    ['prop_wait_bench_01'] = { offset = {x = 0.0, y = 0.0, z = 0.5}, heading = 180.0, type = 'bench', scenario = 'PROP_HUMAN_SEAT_BENCH' },
    
    -- Chaises diverses
    ['hei_prop_heist_off_chair'] = { offset = {x = 0.0, y = 0.0, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['hei_prop_hei_skid_chair'] = { offset = {x = 0.0, y = 0.0, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_chair_01a'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_chair_01b'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_chair_02'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_chair_03'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_chair_04a'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_chair_04b'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_chair_05'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_chair_06'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_chair_07'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_chair_08'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_chair_09'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_chair_10'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    
    -- Chaises spéciales
    ['v_club_stagechair'] = { offset = {x = 0.0, y = -0.2, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_chateau_chair_01'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_clown_chair'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_cs_office_chair'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'office_chair', scenario = 'PROP_HUMAN_SEAT_OFFICE_CHAIR' },
    ['prop_direct_chair_01'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'director_chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_direct_chair_02'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'director_chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    
    -- Chaises de bureau
    ['prop_gc_chair02'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'office_chair', scenario = 'PROP_HUMAN_SEAT_OFFICE_CHAIR' },
    ['prop_off_chair_01'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'office_chair', scenario = 'PROP_HUMAN_SEAT_OFFICE_CHAIR' },
    ['prop_off_chair_03'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'office_chair', scenario = 'PROP_HUMAN_SEAT_OFFICE_CHAIR' },
    ['prop_off_chair_04'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'office_chair', scenario = 'PROP_HUMAN_SEAT_OFFICE_CHAIR' },
    ['prop_off_chair_04b'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'office_chair', scenario = 'PROP_HUMAN_SEAT_OFFICE_CHAIR' },
    ['prop_off_chair_04_s'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'office_chair', scenario = 'PROP_HUMAN_SEAT_OFFICE_CHAIR' },
    ['prop_off_chair_05'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'office_chair', scenario = 'PROP_HUMAN_SEAT_OFFICE_CHAIR' },
    
    -- Chaises anciennes
    ['prop_old_deck_chair'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_old_wood_chair'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_rock_chair_01'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    
    -- Chaises skid
    ['prop_skid_chair_01'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_skid_chair_02'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_skid_chair_03'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_sol_chair'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    
    -- Fauteuils roulants
    ['prop_wheelchair_01'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'wheelchair', scenario = 'PROP_HUMAN_SEAT_WHEELCHAIR' },
    ['prop_wheelchair_01_s'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'wheelchair', scenario = 'PROP_HUMAN_SEAT_WHEELCHAIR' },
    
    -- Fauteuils
    ['p_armchair_01_s'] = { offset = {x = 0.0, y = -0.2, z = 0.3}, heading = 180.0, type = 'armchair', scenario = 'PROP_HUMAN_SEAT_ARMCHAIR' },
    ['p_clb_officechair_s'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'office_chair', scenario = 'PROP_HUMAN_SEAT_OFFICE_CHAIR' },
    ['p_dinechair_01_s'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'dining_chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['p_ilev_p_easychair_s'] = { offset = {x = 0.0, y = -0.2, z = 0.3}, heading = 180.0, type = 'armchair', scenario = 'PROP_HUMAN_SEAT_ARMCHAIR' },
    ['p_soloffchair_s'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'office_chair', scenario = 'PROP_HUMAN_SEAT_OFFICE_CHAIR' },
    ['p_yacht_chair_01_s'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'yacht_chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    
    -- Chaises de bureau (variantes)
    ['v_club_officechair'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'office_chair', scenario = 'PROP_HUMAN_SEAT_OFFICE_CHAIR' },
    ['v_corp_bk_chair3'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'office_chair', scenario = 'PROP_HUMAN_SEAT_OFFICE_CHAIR' },
    ['v_corp_cd_chair'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'office_chair', scenario = 'PROP_HUMAN_SEAT_OFFICE_CHAIR' },
    ['v_corp_offchair'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'office_chair', scenario = 'PROP_HUMAN_SEAT_OFFICE_CHAIR' },
    ['v_ilev_chair02_ped'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['v_ilev_hd_chair'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['v_ilev_p_easychair'] = { offset = {x = 0.0, y = -0.2, z = 0.3}, heading = 180.0, type = 'armchair', scenario = 'PROP_HUMAN_SEAT_ARMCHAIR' },
    ['v_ret_gc_chair03'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    
    -- Chaises fermières
    ['prop_ld_farm_chair01'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    
    -- Chaises de table
    ['prop_table_04_chr'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'dining_chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_table_05_chr'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'dining_chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_table_06_chr'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'dining_chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['v_ilev_leath_chr'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_table_01_chr_a'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'dining_chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_table_01_chr_b'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'dining_chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_table_02_chr'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'dining_chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_table_03b_chr'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'dining_chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_table_03_chr'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'dining_chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    
    -- Tabourets et sièges divers
    ['prop_torture_ch_01'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['v_ilev_fh_dineeamesa'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'dining_chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['v_ilev_fh_kitchenstool'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'stool', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['v_ilev_tort_stool'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'stool', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    
    -- Sièges yacht
    ['hei_prop_yah_seat_01'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'yacht_chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['hei_prop_yah_seat_02'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'yacht_chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['hei_prop_yah_seat_03'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'yacht_chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_waiting_seat_01'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'waiting_chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_yacht_seat_01'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'yacht_chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_yacht_seat_02'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'yacht_chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_yacht_seat_03'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'yacht_chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    
    -- Siège SDF
    ['prop_hobo_seat_01'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'bench', scenario = 'PROP_HUMAN_SEAT_BENCH' },
    
    -- Canapés
    ['prop_rub_couch01'] = { offset = {x = 0.0, y = -0.2, z = 0.3}, heading = 180.0, type = 'couch', scenario = 'PROP_HUMAN_SEAT_COUCH' },
    ['miss_rub_couch_01'] = { offset = {x = 0.0, y = -0.2, z = 0.3}, heading = 180.0, type = 'couch', scenario = 'PROP_HUMAN_SEAT_COUCH' },
    ['prop_ld_farm_couch01'] = { offset = {x = 0.0, y = -0.2, z = 0.3}, heading = 180.0, type = 'couch', scenario = 'PROP_HUMAN_SEAT_COUCH' },
    ['prop_ld_farm_couch02'] = { offset = {x = 0.0, y = -0.2, z = 0.3}, heading = 180.0, type = 'couch', scenario = 'PROP_HUMAN_SEAT_COUCH' },
    ['prop_rub_couch02'] = { offset = {x = 0.0, y = -0.2, z = 0.3}, heading = 180.0, type = 'couch', scenario = 'PROP_HUMAN_SEAT_COUCH' },
    ['prop_rub_couch03'] = { offset = {x = 0.0, y = -0.2, z = 0.3}, heading = 180.0, type = 'couch', scenario = 'PROP_HUMAN_SEAT_COUCH' },
    ['prop_rub_couch04'] = { offset = {x = 0.0, y = -0.2, z = 0.3}, heading = 180.0, type = 'couch', scenario = 'PROP_HUMAN_SEAT_COUCH' },
    ['p_lev_sofa_s'] = { offset = {x = 0.0, y = -0.2, z = 0.3}, heading = 180.0, type = 'sofa', scenario = 'PROP_HUMAN_SEAT_COUCH' },
    ['p_res_sofa_l_s'] = { offset = {x = 0.0, y = -0.2, z = 0.3}, heading = 180.0, type = 'sofa', scenario = 'PROP_HUMAN_SEAT_COUCH' },
    ['p_v_med_p_sofa_s'] = { offset = {x = 0.0, y = -0.2, z = 0.3}, heading = 180.0, type = 'sofa', scenario = 'PROP_HUMAN_SEAT_COUCH' },
    ['p_yacht_sofa_01_s'] = { offset = {x = 0.0, y = -0.2, z = 0.3}, heading = 180.0, type = 'sofa', scenario = 'PROP_HUMAN_SEAT_COUCH' },
    ['v_ilev_m_sofa'] = { offset = {x = 0.0, y = -0.2, z = 0.3}, heading = 180.0, type = 'sofa', scenario = 'PROP_HUMAN_SEAT_COUCH' },
    ['v_res_tre_sofa_s'] = { offset = {x = 0.0, y = -0.2, z = 0.3}, heading = 180.0, type = 'sofa', scenario = 'PROP_HUMAN_SEAT_COUCH' },
    ['v_tre_sofa_mess_a_s'] = { offset = {x = 0.0, y = -0.2, z = 0.3}, heading = 180.0, type = 'sofa', scenario = 'PROP_HUMAN_SEAT_COUCH' },
    ['v_tre_sofa_mess_b_s'] = { offset = {x = 0.0, y = -0.2, z = 0.3}, heading = 180.0, type = 'sofa', scenario = 'PROP_HUMAN_SEAT_COUCH' },
    ['v_tre_sofa_mess_c_s'] = { offset = {x = 0.0, y = -0.2, z = 0.3}, heading = 180.0, type = 'sofa', scenario = 'PROP_HUMAN_SEAT_COUCH' },
    
    -- Rollers
    ['prop_roller_car_01'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'roller', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['prop_roller_car_02'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'roller', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    
    -- Customs
    ['v_ret_gc_chair02'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    ['v_serv_ct_chair02'] = { offset = {x = 0.0, y = -0.1, z = 0.5}, heading = 180.0, type = 'chair', scenario = 'PROP_HUMAN_SEAT_CHAIR' }
}

-- Configuration des animations/scénarios par type
Config.Animations = {
    bench = { scenario = 'PROP_HUMAN_SEAT_BENCH' },
    chair = { scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    office_chair = { scenario = 'PROP_HUMAN_SEAT_OFFICE_CHAIR' },
    armchair = { scenario = 'PROP_HUMAN_SEAT_ARMCHAIR' },
    wheelchair = { scenario = 'PROP_HUMAN_SEAT_WHEELCHAIR' },
    couch = { scenario = 'PROP_HUMAN_SEAT_COUCH' },
    sofa = { scenario = 'PROP_HUMAN_SEAT_COUCH' },
    stool = { scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    dining_chair = { scenario = 'PROP_HUMAN_SEAT_CHAIR' },
    yacht_chair = { scenario = 'PROP_HUMAN_SEAT_CHAIR' }
}

-- Options de configuration
Config.Options = {
    maxDistance = 2.0, -- Distance maximale pour détecter un siège
    autoStandUpDistance = 5.0, -- Distance à laquelle on se lève automatiquement
    debug = false, -- Mode debug
    useScenarios = true, -- Utiliser les scénarios GTA (recommandé)
    enableKeybind = true, -- Activer le raccourci clavier
    keybind = 'F2', -- Touche par défaut
    enableCommand = true, -- Activer la commande /sit
    commandName = 'sit', -- Nom de la commande
    notify = true -- Activer les notifications
}

-- Localisation
Config.Locales = {
    sit = "S'asseoir",
    stand_up = "Se lever",
    already_sitting = "Vous êtes déjà assis !",
    no_chair_nearby = "Aucun siège à proximité",
    stand_up_instruction = "Appuyez sur ~g~E~s~ pour vous lever"
}
