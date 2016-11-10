//
//  ViewController.swift
//  testMosconi
//
//  Created by Salvatore  Polito on 06/11/16.
//  Copyright © 2016 Salvatore  Polito. All rights reserved.
//

import UIKit
import SpriteKit
import MediaPlayer
import AVFoundation


class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    var nr = "ah_non_lo_so_io"
    var mp = AVAudioPlayer()
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        nr = nomi[row]
        apriMP()
        return pickerDataSource[row]
    }

    
    @IBOutlet weak var picker: UIPickerView!
    
    var nomi = ["ah_non_lo_so_io","avanti_e_n_drio","avv_bisagno","carte_co_la_cola","chi_e_quel_mona","chi_fa_quel_rumore_li","come_se_ciama_elo_li","cos_e_caduto","cosa_ghe_qua_sotto","d_p","dai_va_la","dio_bono_de_dio","dio_bubu","dio_camaja_de_dio","dio_cazzo","dio_pa_pa_pa_pa","dio_po_dio","dio_porco__dio_cane","dio_ss","e_con_questo","gabriele_sborina","germano_e_il_telefono","il_punteggio_dio_cane","in_primo_piano","la_societa","ma_che_ooooh","ma_e_possibile_che_sia_cosi_degli_imbecilli","madonna_puttinaaaa","madonna","no_nessuno","no_no_vai_in_mona","non_e_possibile","non_si_puo_scrivere_ste_notizie_in_maiuscolo","orco_dio_in_serie","passar_davanti","pilota_romano_romano_andrea_de_cesaris","porca_madonna","porco_dio_1","porco_dio_2","portanna_la_madonna","se_non_bestemmio_guarda","se_trovo_quello_che_mi_fa_innervosire","se_venite_avanti_vi_do_un_pugno", "serie_esplosiva", "serrare_la_porta", "squadre","stronzi","tutto_da_capo","vaffanculo_ti_e_tutti_quanti", "vaffanculo", "vai_in_mona", "vedo_tutto_meno_quello_che_dovrei_vedere"]
    
    var pickerDataSource = [ "Ah non lo so io","Avanti e n drio","Avv bisagno","Carte co la cola","Chi e quel mona","Chi fa quel rumore li","Come se ciama elo li","Cos\'e caduto","Cosa ghe qua sotto","Dio porco","Dai va la","Dio bono de Dio","Dio bubu","Dio camaja de Dio","Dio cazzo","Dio pa pa pa pa","Dio po Dio","Dio porco  Dio cane","Dio ss","E con questo","Gabriele Sborina","Germano e il telefono","Il punteggio Dio cane","In primo piano","La societa","Ma che ooooh","Ma e possibile che sia cosi degli imbecilli","Madonna puttinaaaa","Madonna","No nessuno","No no vai in mona","Non e possibile","Non si puo scrivere ste notizie in maiuscolo","Orco Dio in serie","Passar davanti","Pilota romano romano Andrea DeCesaris","Porca Madonna","Porco Dio 1","Porco Dio 2","Portata la madonna","Se non bestemmio guarda","Se trovo quello che mi fa innervosire","Se venite avanti vi do un pugno","Serie esplosiva","Serrare la porta","Squadre","Stronzi","Tutto da capo","Vaffanculo ti e tutti quanti","Vaffanculo","Vai in mona","Vedo tutto meno quello che dovrei vedere"];
    
    
    @IBAction func riproduci(_ sender: Any) {
        if mp.isPlaying {
            mp.stop()
            apriMP()
          }
        mp.play()
    }
    
    func apriMP () {
        let sound = NSURL(fileURLWithPath: Bundle.main.path(forResource: nr, ofType: "aiff")!)
        do {
            try mp = AVAudioPlayer(contentsOf: sound as URL)
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        }
        catch {
            // report for an error
        }
        mp.prepareToPlay()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.picker.dataSource = self
        self.picker.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

