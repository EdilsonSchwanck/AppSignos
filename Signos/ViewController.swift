//
//  ViewController.swift
//  Signos
//
//  Created by Edilson Schwanck Borges on 14/02/22.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos:[String] = []
    var significado:[String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //configurar signos
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgen")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sagitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        
        //configura significado
        
        significado.append("O ariano é uma pessoa cheia de energia e entusiamo. Pioneiro e aventureiro, lhe enctantam as metas, a liberdade e as idéias novas")
        significado.append("Zeloso e possessivo, um couro pode tender a ser inflexível e ressetido. As vezes os Touro oecam de ser cobiçosos e permitir-se tudo.")
        significado.append("*3-..*")
        significado.append("*4-..")
        significado.append("*5-..")
        significado.append("*6-..")
        significado.append("*7-..")
        significado.append("*8-..")
        significado.append("*9-..")
        significado.append("*10-..")
        significado.append("*11-..")
        significado.append("*12-..")
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        celula.textLabel?.text = signos[indexPath.row]
        return celula
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertaController = UIAlertController(title: "Significado do signo", message: significado[indexPath.row], preferredStyle: .alert)
        
        let acaoConfirmar = UIAlertAction(title: "ok", style: .default, handler: nil)
        
        alertaController.addAction(acaoConfirmar)
        
        present(alertaController, animated: true, completion: nil)
        
        //print(significado[indexPath.row])
    }
}

