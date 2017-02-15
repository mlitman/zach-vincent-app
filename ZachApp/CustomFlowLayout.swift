import UIKit

class CustomFlowLayout: UICollectionViewFlowLayout
{
    var numCols = CGFloat(2)
    var relativeWidth = CGFloat(1)
    var relativeHeight = CGFloat(1)
    
    override init() {
        super.init()
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupLayout()
    }
    
    override var itemSize: CGSize {
        set {
            
        }
        get {
            let numberOfColumns: CGFloat = numCols
            
            let itemWidth = (self.collectionView!.frame.width - (numberOfColumns - 1)) / numberOfColumns
            return CGSize(width: itemWidth*self.relativeWidth, height: itemWidth*self.relativeHeight)
        }
    }
    
    func setupLayout() {
        minimumInteritemSpacing = 1
        minimumLineSpacing = 1
        scrollDirection = .vertical
    }
    
}
