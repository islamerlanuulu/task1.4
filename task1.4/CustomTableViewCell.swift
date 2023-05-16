//
//  TableViewCell.swift
//  task1.4
//
//  Created by Islam Erlan Uulu on 16/5/23.
//

import UIKit
import SnapKit

class CustomTableViewCell: UITableViewCell {
    
    private let bgView = UIView()
    
    let label1: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = .systemCyan
        return label
    }()
    let label2: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = UIFont.systemFont(ofSize: 11)
        label.textColor = .black
        label.numberOfLines = 0
        return label
    }()
    
    let img = UIImageView()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        addSubview(bgView)
        bgView.addSubview(label1)
        bgView.addSubview(label2)
        bgView.addSubview(img)

        bgView.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.bottom.equalTo(100)
            
        }
        img.snp.makeConstraints { make in
            make.top.leading.equalToSuperview()
            make.height.equalTo(50)
            make.width.equalTo(70)
        }
        label1.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalTo(img.snp.trailing).offset(10)
        }
        label2.snp.makeConstraints { make in
            make.top.equalTo(label1.snp.bottom).offset(3)
            make.leading.equalTo(img.snp.trailing).offset(10)
        }
    }
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }



