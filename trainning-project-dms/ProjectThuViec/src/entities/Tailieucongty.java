package entities;

// Generated Nov 28, 2014 10:20:21 AM by Hibernate Tools 3.4.0.CR1

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Tailieucongty generated by hbm2java
 */
@Entity
@Table(name = "tailieucongty", catalog = "thuviecdatabase")
public class Tailieucongty implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer matl;
	private Danhmuc danhmuc;
	private String tentl;
	private String mota;
	private Date ngayupload;
	private String keyword;
	private byte[] noidung;

	public Tailieucongty() {
	}
	

	public Tailieucongty(Danhmuc danhmuc, String tentl, String mota,
			Date ngayupload, String keyword, byte[] noidung) {
		this.danhmuc = danhmuc;
		this.tentl = tentl;
		this.mota = mota;
		this.ngayupload = ngayupload;
		this.keyword = keyword;
		this.noidung = noidung;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "matl", unique = true, nullable = false)
	public Integer getMatl() {
		return this.matl;
	}

	public void setMatl(Integer matl) {
		this.matl = matl;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "danhmucid")
	public Danhmuc getDanhmuc() {
		return this.danhmuc;
	}

	public void setDanhmuc(Danhmuc danhmuc) {
		this.danhmuc = danhmuc;
	}

	@Column(name = "tentl", length = 250)
	public String getTentl() {
		return this.tentl;
	}

	public void setTentl(String tentl) {
		this.tentl = tentl;
	}

	@Column(name = "mota")
	public String getMota() {
		return this.mota;
	}

	public void setMota(String mota) {
		this.mota = mota;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "ngayupload", length = 0)
	public Date getNgayupload() {
		return this.ngayupload;
	}

	public void setNgayupload(Date ngayupload) {
		this.ngayupload = ngayupload;
	}

	@Column(name = "keyword", length = 45)
	public String getKeyword() {
		return this.keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	@Column(name = "noidung")
	public byte[] getNoidung() {
		return this.noidung;
	}

	public void setNoidung(byte[] noidung) {
		this.noidung = noidung;
	}

}
