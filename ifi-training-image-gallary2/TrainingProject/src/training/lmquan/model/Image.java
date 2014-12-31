package training.lmquan.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "image", catalog = "imagelibrary")
public class Image implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int imageId;
	private Category category;
	private String imageName;
	private String imageType;
	private byte[] image;
	private String description;
	private String uploader;

	public Image() {
	}

	public Image(Category category, String imageName, String imageType,
			byte[] image, String description, String uploader) {
		this.category = category;
		this.imageName = imageName;
		this.imageType = imageType;
		this.image = image;
		this.description = description;
		this.uploader = uploader;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "ImageId", unique = true, nullable = false)
	public int getImageId() {
		return this.imageId;
	}

	public void setImageId(int imageId) {
		this.imageId = imageId;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "CategoryId")
	public Category getCategory() {
		return this.category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	@Column(name = "ImageName", length = 100)
	public String getImageName() {
		return this.imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	@Column(name = "ImageType", length = 100)
	public String getImageType() {
		return this.imageType;
	}

	public void setImageType(String imageType) {
		this.imageType = imageType;
	}

	@Column(name = "Image")
	public byte[] getImage() {
		return this.image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	@Column(name = "Description", length = 500)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "Uploader", length = 100)
	public String getUploader() {
		return this.uploader;
	}

	public void setUploader(String uploader) {
		this.uploader = uploader;
	}

}
