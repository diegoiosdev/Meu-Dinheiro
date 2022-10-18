import UIKit

class GastosFixosView: UIView {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.text = "Gastos fixos"
        return label
    }()
    
    lazy var tableView: UITableView = {
       let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()

    @objc func tappedButton(sender: UIButton){
        print("deu certo o seu botão\(GastosFixosView())")
    }
    
    lazy var title: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .red
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configSuperView()
        self.setConstraints()
    }
 
     func configSuperView(){
        addSubview(tableView)
        addSubview(titleLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            
            self.titleLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 15),
            self.titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 30),
            self.titleLabel.topAnchor.constraint(equalTo:self.safeAreaLayoutGuide.topAnchor, constant: 2),
                
            self.tableView.topAnchor.constraint(equalTo: self.titleLabel.topAnchor),
            self.tableView.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor),
            self.tableView.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor),
            self.tableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}
