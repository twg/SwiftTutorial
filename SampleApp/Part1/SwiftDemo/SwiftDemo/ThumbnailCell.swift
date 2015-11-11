import UIKit

class ThumbnailCell: UICollectionViewCell {

    lazy var imageView:UIImageView = {
        let view = UIImageView()
        view.contentMode = .ScaleAspectFit
        view.adjustsImageWhenAncestorFocused = true
        return view
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        self.contentView.addSubview(self.imageView)
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        self.imageView.frame = self.contentView.bounds
    }
}
