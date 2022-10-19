import UIKit

class MoneyView: UIView {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.text = "Principal"
        return label
    }()
    
    lazy var tableView: UITableView = {
       let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
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
        image.layer.cornerRadius = 45
        image.image = UIImage(named: "diego")
       return image
    }()
    
    lazy var saldoConta: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.text = "O saldo em conta é R$ 2.000,00"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configSuperView()
        self.configBackGround()
        self.setConstraints()
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
         
            self.tableView.topAnchor.constraint(equalTo: self.titleLabel.topAnchor, constant: 80),
            self.tableView.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor),
            self.tableView.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor),
            self.tableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}
