package inventory.model;

public class Paging {
	private long totalRows;
	private long totalPages;
	private int indexPage;
	private int recordPerPage = 10;
	private int offset;

	public Paging(int recordPerPage) {
		this.recordPerPage = recordPerPage;
	}

	public Paging() {
		super();
	}

	public Paging(long totalRows, long totalPages, int indexPage, int recordPerPage, int offset) {
		super();
		this.totalRows = totalRows;
		this.totalPages = totalPages;
		this.indexPage = indexPage;
		this.recordPerPage = recordPerPage;
		this.offset = offset;
	}

	public long getTotalRows() {
		return totalRows;
	}

	public void setTotalRows(long totalRows) {
		if(totalPages>0) {
			totalPages = (int) Math.ceil(totalRows/(double)recordPerPage);
		}
		this.totalRows = totalRows;
	}

	public long getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(long totalRecord) {
		this.totalPages = totalRecord;
	}

	public int getIndexPage() {
		return indexPage;
	}

	public void setIndexPage(int indexPage) {
		this.indexPage = indexPage;
	}

	public int getRecordPerPage() {
		return recordPerPage;
	}

	public void setRecordPerPage(int recordPerPage) {
		this.recordPerPage = recordPerPage;
	}

	public int getOffset() {
		return offset;
	}

	public void setOffset(int offset) {
		if(indexPage>0) {
			offset = indexPage*recordPerPage-recordPerPage;
		}
		this.offset = offset;
	}
}
