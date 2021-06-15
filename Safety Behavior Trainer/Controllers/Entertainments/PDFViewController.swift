//
//  PDFViewController.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 10.06.21.
//

import UIKit
import PDFKit

class PDFViewController: UIViewController {
    
    private let pdfUrl: URL
    private let document: PDFDocument!
    private let outline: PDFOutline?
    private lazy var pdfView = PDFView(frame: CGRect(x: 0, y: 30, width: view.frame.size.width, height: view.frame.size.height))
    
    init(pdfUrl: URL) {
        self.pdfUrl   = pdfUrl
        self.document = PDFDocument(url: pdfUrl)
        self.outline  = document.outlineRoot
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(pdfView)
        pdfView.document         = document
        pdfView.displayDirection = .horizontal
        pdfView.usePageViewController(true)
        pdfView.pageBreakMargins = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        pdfView.autoScales       = true
    }

}
