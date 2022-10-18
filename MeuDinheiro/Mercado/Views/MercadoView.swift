import UIKit

class MercadoView: UIView {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.text = "Consultas Moedas"
        return label
    }()
    
    lazy var imageMercado: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "dollar-1")
        image.contentMode = .scaleAspectFit
       return image
    }()
    
    lazy var tableView: UITableView = {
       let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configSuperView()
        self.setConstraints()
        self.configBackGround()
    }
 
     func configSuperView(){
        addSubview(titleLabel)
        addSubview(tableView)
        addSubview(imageMercado)
    }
    
    func configBackGround() {
       self.backgroundColor = UIColor(red: 50/255, green: 120/255, blue: 104/255, alpha: 2.0)
   }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            
            self.titleLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 15),
            self.titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 30),
            self.titleLabel.topAnchor.constraint(equalTo:self.safeAreaLayoutGuide.topAnchor, constant: 2),
        
            self.imageMercado.leadingAnchor.constraint(equalTo: self.titleLabel.leadingAnchor, constant: 10),
            self.imageMercado.trailingAnchor.constraint(equalTo: self.titleLabel.trailingAnchor, constant: 200),
            self.imageMercado.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            self.imageMercado.heightAnchor.constraint(equalToConstant: 50),
            self.imageMercado.widthAnchor.constraint(equalToConstant: 50),
         
            self.tableView.topAnchor.constraint(equalTo: self.titleLabel.topAnchor, constant: 50),
            self.tableView.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor),
            self.tableView.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor),
            self.tableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}
