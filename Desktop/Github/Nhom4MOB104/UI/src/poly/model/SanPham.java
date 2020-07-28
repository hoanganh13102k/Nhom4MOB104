package poly.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="SanPham")
public class SanPham {
	@Id
	@Column(name="MaSP")
	private String masp;
	@Column(name="TenSP")
	private String tensp;
	@Column(name="KichCo")
	private String kichco;
	@Column(name="MauSac")
	private String mausac;
	@Column(name="MaLoai")
	private String maloai;
	@Column(name="SoLuongTon")
	private String soluongton;
	@Column(name="DonGia")
	private String dongia;
	@Column(name="Anh")
	private String anh;
	@Column(name="ChatLieu")
	private String chatlieu;
	public String getMasp() {
		return masp;
	}
	public void setMasp(String masp) {
		this.masp = masp;
	}
	public String getTensp() {
		return tensp;
	}
	public void setTensp(String tensp) {
		this.tensp = tensp;
	}
	public String getKichco() {
		return kichco;
	}
	public void setKichco(String kichco) {
		this.kichco = kichco;
	}
	public String getMausac() {
		return mausac;
	}
	public void setMausac(String mausac) {
		this.mausac = mausac;
	}
	public String getMaloai() {
		return maloai;
	}
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	public String getSoluongton() {
		return soluongton;
	}
	public void setSoluongton(String soluongton) {
		this.soluongton = soluongton;
	}
	public String getDongia() {
		return dongia;
	}
	public void setDongia(String dongia) {
		this.dongia = dongia;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public String getChatlieu() {
		return chatlieu;
	}
	public void setChatlieu(String chatlieu) {
		this.chatlieu = chatlieu;
	}
	
	
}
