//
//  TodoListViewController
//  Todoey
//
//  Created by Marcio Morais on 18/05/2018.
//  Copyright © 2018 Marcio Morais. All rights reserved.

//  -- 1. Renomeada da oringial
//  -- Linkar a Class Customer
// 3 - Identificar ToDoItemCell o (Table View Cell)

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Pagar Contas","Médico","Tarefas","FACT"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("primeira tela carregou")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

        //MARK - TableViewDataSource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
        
    }
    
        //MARK - Tableview Delegate Methods - Ao clicar em qualquer célula
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(indexPath.row)  // Linha selecionada
        //print(itemArray[indexPath.row])
        
        // check no item selecionado
        
        
        // remover a selecionada
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        else
        {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        // marcar item - Acessório do Checkmark no Item Cell
        
        
        
    }
    
}


