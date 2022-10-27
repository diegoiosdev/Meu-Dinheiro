import UIKit

class MoneyView: UIView {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.text = "Principal"
        return label
    }()
    
    lazy var tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .insetGrouped)
        table.translatesAutoresizingMaskIntoConstraints = false
//        table.separatorStyle = .none // retira as linhas
        table.separatorInset = .init(top: 0, left: 50, bottom: 0, right: 10) // posicao da telas
//        table.register(MercadoTableViewCell.self, forCellReuseIdentifier: MercadoTableViewCell.identifier)
        return table
    }()
    
    
    lazy var imageHome: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named:"save-money")
        image.contentMode = .scaleAspectFit
       return image
    }()
    
    lazy var imagePerson: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layoutIfNeeded()
        image.layoutSubviews()
        image.clipsToBounds = true
        image.layer.cornerRadius = image.frame.width/2
        image.contentMode = .scaleToFill
        image.layer.cornerRadius = 50
        image.image = UIImage(named: "man-user")
       return image
    }()
    
    lazy var saldoConta: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.text = "O saldo em conta é R$ 2.000,00"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configSuperView()
        self.configBackGround()
        self.setConstraints()
        tableView.dataSource = self
        tableView.delegate = self
    }
 
     func configSuperView(){
        addSubview(titleLabel)
        addSubview(tableView)
        addSubview(imageHome)
        addSubview(imagePerson)
        addSubview(saldoConta)
    }
    
     func configBackGround(){
        self.backgroundColor = UIColor(red: 50/255, green: 120/255, blue: 104/255, alpha: 2.0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            
            self.imagePerson.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            self.imagePerson.trailingAnchor.constraint(equalTo: self.titleLabel.trailingAnchor, constant: -350),
            self.imagePerson.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            self.imagePerson.heightAnchor.constraint(equalToConstant: 90),
            self.imagePerson.widthAnchor.constraint(equalToConstant: 90),
            
            self.saldoConta.leadingAnchor.constraint(equalTo: self.imagePerson.leadingAnchor, constant: 110),
            self.saldoConta.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 30),
            self.saldoConta.topAnchor.constraint(equalTo:self.safeAreaLayoutGuide.topAnchor, constant: 60),
            
            self.titleLabel.leadingAnchor.constraint(equalTo: self.imagePerson.leadingAnchor, constant: 150),
            self.titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 30),
            self.titleLabel.topAnchor.constraint(equalTo:self.safeAreaLayoutGuide.topAnchor, constant: 15),
               
            self.imageHome.leadingAnchor.constraint(equalTo: self.titleLabel.leadingAnchor, constant: 5),
            self.imageHome.trailingAnchor.constraint(equalTo: self.titleLabel.trailingAnchor),
            self.imageHome.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            self.imageHome.heightAnchor.constraint(equalToConstant: 50),
            self.imageHome.widthAnchor.constraint(equalToConstant: 50),
    
            self.tableView.topAnchor.constraint(equalTo:self.titleLabel.topAnchor,constant: 80),
            self.tableView.leadingAnchor.constraint(equalTo:leadingAnchor),
            self.tableView.trailingAnchor.constraint(equalTo:trailingAnchor),
            self.tableView.bottomAnchor.constraint(equalTo:bottomAnchor),
        ])
    }
}

extension MoneyView: UITableViewDelegate, UITableViewDataSource {
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 6
        }
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "UITableViewCell")
        cell.textLabel?.text = "Teste conta"
        return cell
    }
 
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
     
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Receita Mensal"
        }
        return "Gastos Mensais"
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section == 2 {
            return "Você no controle!"
        }
        return nil
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 85
    }
    
}
