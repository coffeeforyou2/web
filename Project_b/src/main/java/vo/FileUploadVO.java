package vo;

public class FileUploadVO {
	private String name;
	private String subject;
	private String filename1;
	private String filename2;
	private String origfilename1;
	private String origfilename2;

	public FileUploadVO(String name, String subject, String filename1, String filename2, String origfilename1,
			String origfilename2) {
		super();
		this.name = name;
		this.subject = subject;
		this.filename1 = filename1;
		this.filename2 = filename2;
		this.origfilename1 = origfilename1;
		this.origfilename2 = origfilename2;
	}

	public FileUploadVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getFilename1() {
		return filename1;
	}

	public void setFilename1(String filename1) {
		this.filename1 = filename1;
	}

	public String getFilename2() {
		return filename2;
	}

	public void setFilename2(String filename2) {
		this.filename2 = filename2;
	}

	public String getOrigfilename1() {
		return origfilename1;
	}

	public void setOrigfilename1(String origfilename1) {
		this.origfilename1 = origfilename1;
	}

	public String getOrigfilename2() {
		return origfilename2;
	}

	public void setOrigfilename2(String origfilename2) {
		this.origfilename2 = origfilename2;
	}

	@Override
	public String toString() {
		return "FileUploadVO [name=" + name + ", subject=" + subject + ", filename1=" + filename1 + ", filename2="
				+ filename2 + ", origfilename1=" + origfilename1 + ", origfilename2=" + origfilename2 + "]";
	}

}
