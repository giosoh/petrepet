import Foundation
import UIKit

class CachorroViewController: UIViewController {
    
    override func viewDidLoad(){
        super.viewDidLoad()
        bGround.image = UIImage(named: "Background")
        catioro.image = UIImage(named: "dog")
    }
    
    //FUNDO E CACHORRO
    @IBOutlet weak var bGround: UIImageView!
    @IBOutlet weak var catioro: UIImageView!
    
    //TEXTO E CORAÇÃO
    @IBOutlet weak var reacaoDoCachorro: UILabel!
    @IBOutlet weak var coracao1: UIImageView!
    @IBOutlet weak var coracao2: UIImageView!
    @IBOutlet weak var coracao3: UIImageView!
    
    
    var streak: Int = 0
    var life: Int = 3
    
    
    //FUNÇÃO PRINCIPAL
    func tudoQueOBotaoFaz(parte: String){
        if sequenciaMovimentos[streak].contains(parte) {
            streak = streak + 1
            reacaoDoCachorro.text = respostaPositiva[Int.random(in: 0...5)]
            if streak == sequenciaMovimentos.count{
                reacaoDoCachorro.text = respostaVitoria[Int.random(in: 0...2)]
                streak = 0
            }
        }
            
        else{
            reacaoDoCachorro.text = respostaNegativa[Int.random(in: 0...4)]
            
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
            reacaoDoCachorro.text = "Você avacalhou o sistema. Não quero brincar agora."
        }
    }
    
    
    //BOTÕES
    @IBAction func cabeça(_ sender: Any) {tudoQueOBotaoFaz(parte: "cabeça")}
        
    @IBAction func costas(_ sender: Any) {tudoQueOBotaoFaz(parte: "costas")}
    
    @IBAction func popo(_ sender: Any) {tudoQueOBotaoFaz(parte: "popo")}
    
    @IBAction func pataDianteira(_ sender: Any) {tudoQueOBotaoFaz(parte: "patadianteira")}
    
    @IBAction func pataTraseira(_ sender: Any) {tudoQueOBotaoFaz(parte: "patatraseira")}
}
