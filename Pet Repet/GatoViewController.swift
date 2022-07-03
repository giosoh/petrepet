/*

 lista1 = {[1, 3], [2], [3], [4]}
 lista2 = [1, 2, 3, 4]
 var vida = 3
 
 🕹️ let input usuário
 var streak INT = 1
 
 ✅ se input in lista
    streak =+ 1
    imprimir = "nada mal""
     se streak = 5
         imprimir = "parabéns pelo mínimo"
         tela de vitória

 ❌ else
    streak = 0
    imprimir = "lixo"
    vida = vidas - 1
    se vida = 0
        imprimir = "humano lixo, sempre soube"
        tela de derrota
 
*/


import Foundation
import UIKit

class GatoViewController: UIViewController {
    
    override func viewDidLoad(){
        super.viewDidLoad()
        bGround.image = UIImage(named: "Background")
        gato.image = UIImage(named: "cat")

    }
    
    @IBOutlet weak var bGround: UIImageView!
    @IBOutlet weak var gato: UIImageView!
    
    
    @IBOutlet weak var bgTexto: UILabel!
    @IBOutlet weak var reacaoGato: UILabel!
    @IBOutlet weak var coracao1: UIImageView!
    @IBOutlet weak var coracao2: UIImageView!
    @IBOutlet weak var coracao3: UIImageView!
    
    
    let respostaPositiva: [String] = ["Nada mal.", "Uhum", "Eu não odeio isso.", "Boa tecnica.", "Isso.", "'prrr'"]

    let respostaVitoria: [String] = ["Creio que o subestimei. Bom trabalho. (= - ﻌ - =) ", "Não fez mais que sua obrigação.(= ¬ ﻌ ¬ =)" , "Muito bem, agora quero que você me deixe em paz. ( = ` ﻌ ´= )"]


    /*------------------------*/


    let respostaNegativa: [String] = ["Deprimente", "Sai, maluco", "Parabéns, odiei", "Patético", "Esse é o seu melhor?"]


    /*------------------------*/


    let sequenciaMovimentos: [[String]] = [["cabeça", "costas"], ["costas", "popo"], ["costas", "cabeça"], ["popo"]]
    
    
    
    var streak: Int = 0
    var life: Int = 3
    
    func tudoQueOBotaoFaz(parte: String){
        if sequenciaMovimentos[streak].contains(parte) {
            streak = streak + 1
            reacaoGato.text = respostaPositiva[Int.random(in: 0...5)]
            if streak == sequenciaMovimentos.count{
                reacaoGato.text = respostaVitoria[Int.random(in: 0...2)]
                streak = 0
            }
        }
            
        else{
            reacaoGato.text = respostaNegativa[Int.random(in: 0...4)]
            
            if (coracao3.isHidden == false){
                coracao3.isHidden = true
            }
            else if (coracao2.isHidden == false){
                coracao2.isHidden = true
            }
            else if (coracao1.isHidden == false){
                coracao1.isHidden = true
            }
            
            life = life - 1
            streak = 0
            
            }
        
        if life == 0 {
            reacaoGato.text = "Você arruinou meu dia, parabéns."
        }
    }
    
    
    @IBAction func cabeça(_ sender: Any) {tudoQueOBotaoFaz(parte: "cabeça")}
    
    @IBAction func costas(_ sender: Any) {tudoQueOBotaoFaz(parte: "costas")}
    
    @IBAction func popo(_ sender: Any) {tudoQueOBotaoFaz(parte: "popo")}
    
    @IBAction func pataDianteira(_ sender: Any) {tudoQueOBotaoFaz(parte: "paradianteira")}
    
    @IBAction func pataTraseira(_ sender: Any) {tudoQueOBotaoFaz(parte: "patatraseira")}
}

