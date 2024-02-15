package cgvBoard;

public class MVBoardVO {
	private long no;
	private String title;
	private String content;
	private String type;
	private String file;
	private String time;
	private String autor;
	private String date;
	
	public MVBoardVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public long getNo() {
		return no;
	}
	public void setNo(long no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getAutor() {
		return autor;
	}
	public void setAutor(String autor) {
		this.autor = autor;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public MVBoardVO(long no, String title, String content, String type, String file, String time, String autor,
			String date) {
		super();
		this.no = no;
		this.title = title;
		this.content = content;
		this.type = type;
		this.file = file;
		this.time = time;
		this.autor = autor;
		this.date = date;
	}
	@Override
	public String toString() {
		return "MVBoardVO [no=" + no + ", title=" + title + ", content=" + content + ", type=" + type + ", file=" + file
				+ ", time=" + time + ", autor=" + autor + ", date=" + date + "]";
	}
	
	
	
	
}
