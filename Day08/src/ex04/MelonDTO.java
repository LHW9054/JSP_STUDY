package ex04;
//	create table melon (
//		ranking		number,
//		title		varchar2(100),
//		artist		varchar2(100),
//		album		varchar2(100),
//		likeCount	number
//	);

public class MelonDTO {

	private int ranking;
	private String title;
	private String artist;
	private String album;
	private int likeCount;
	
	public int getRanking() {
		return ranking;
	}
	public void setRanking(int ranking) {
		this.ranking = ranking;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getArtist() {
		return artist;
	}
	public void setArtist(String artist) {
		this.artist = artist;
	}
	public String getAlbum() {
		return album;
	}
	public void setAlbum(String album) {
		this.album = album;
	}
	public int getLikeCount() {
		return likeCount;
	}
	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}
	
	
}
