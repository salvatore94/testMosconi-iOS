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
        if(row == 0)
        {
            nr = nomi[0]
        }
        else if(row == 1)
        {
            nr = nomi[1]
        }
        else if(row == 2)
        {
            nr = nomi[2]
        }
        else if(row == 3)
        {
            nr = nomi[3]
        }
        else if(row == 4)
        {
            nr = nomi[4]
        }
        else if(row == 5)
        {
            nr = nomi[5]
        }
        else if(row == 6)
        {
            nr = nomi[6]
        }
        else if(row == 7)
        {
            nr = nomi[7]
        }
        else if(row == 8)
        {
            nr = nomi[8]
        }
        else if(row == 9)
        {
            nr = nomi[9]
        }
        else if(row == 10)
        {
            nr = nomi[10]
        }
        else if(row == 11)
        {
            nr = nomi[11]
        }
        else if(row == 12)
        {
            nr = nomi[12]
        }
        else if(row == 13)
        {
            nr = nomi[13]
        }
        else if(row == 14)
        {
            nr = nomi[14]
        }
        else if(row == 15)
        {
            nr = nomi[15]
        }
        else if(row == 16)
        {
            nr = nomi[16]
        }
        else if(row == 17)
        {
            nr = nomi[17]
        }
        else if(row == 18)
        {
            nr = nomi[18]
        }
        else if(row == 19)
        {
            nr = nomi[19]
        }
        else if(row == 20)
        {
            nr = nomi[20]
        }
        else if(row == 21)
        {
            nr = nomi[21]
        }
        else if(row == 22)
        {
            nr = nomi[22]
        }
        else if(row == 23)
        {
            nr = nomi[23]
        }
        else if(row == 24)
        {
            nr = nomi[24]
        }
        else if(row == 25)
        {
            nr = nomi[25]
        }
        else if(row == 26)
        {
            nr = nomi[26]
        }
        else if(row == 27)
        {
            nr = nomi[27]
        }
        else if(row == 28)
        {
            nr = nomi[28]
        }
        else if(row == 29)
        {
            nr = nomi[29]
        }
        else if(row == 30)
        {
            nr = nomi[30]
        }
        else if(row == 31)
        {
            nr = nomi[31]
        }
        else if(row == 32)
        {
            nr = nomi[32]
        }
        else if(row == 33)
        {
            nr = nomi[33]
        }
        else if(row == 34)
        {
            nr = nomi[34]
        }
        else if(row == 35)
        {
            nr = nomi[35]
        }
        else if(row == 36)
        {
            nr = nomi[36]
        }
        else if(row == 37)
        {
            nr = nomi[37]
        }
        else if(row == 38)
        {
            nr = nomi[38]
        }
        else if(row == 39)
        {
            nr = nomi[39]
        }
        else if(row == 40)
        {
            nr = nomi[40]
        }
        else if(row == 41)
        {
            nr = nomi[41]
        }
        else if(row == 42)
        {
            nr = nomi[42]
        }
        else if(row == 43)
        {
            nr = nomi[43]
        }
        else if(row == 44)
        {
            nr = nomi[44]
        }
        else if(row == 45)
        {
            nr = nomi[45]
        }
        else if(row == 46)
        {
            nr = nomi[46]
        }
        else if(row == 47)
        {
            nr = nomi[47]
        }
        else if(row == 48)
        {
            nr = nomi[48]
        }
        else if(row == 49)
        {
            nr = nomi[49]
        }
        else if(row == 50)
        {
            nr = nomi[50]
        }
        else if(row == 51)
        {
            nr = nomi[51]
        }

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

