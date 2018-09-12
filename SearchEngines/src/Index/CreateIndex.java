package Index;

import java.util.Iterator;
import java.util.List;
import java.io.File;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.IntField;
import org.apache.lucene.document.StringField;
import org.apache.lucene.document.TextField;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.index.IndexWriterConfig.OpenMode;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.SimpleFSDirectory;
import org.apache.lucene.util.Version;

public class CreateIndex {

	public static void main(String[] args) {
		PCDao pcDao = new PCDao();
		List pcList = pcDao.searchPC();
		Iterator iter = pcList.iterator();
		PC pc;
		try {
			File indexDir = new File("/Users/zjl/Desktop/PCEngine/pcIndex");
			Directory dir = new SimpleFSDirectory(indexDir);
			Version version = Version.LUCENE_47;
			Analyzer analyzer = new StandardAnalyzer(version);  
			IndexWriterConfig iwc = new IndexWriterConfig(version,analyzer);
			iwc.setOpenMode(OpenMode.CREATE);  
	        IndexWriter writer = new IndexWriter(dir, iwc); 
	        
			while (iter.hasNext()) {
				pc = (PC) iter.next();
				printPC(pc);
				
				Document doc = new Document();
				doc.add(new TextField("title",pc.getTitle(),Field.Store.YES));
				doc.add(new IntField("price", pc.getPrice(), Field.Store.YES));
				doc.add(new TextField("brand", pc.getBrand(), Field.Store.YES));
				doc.add(new StringField("time", pc.getTime(), Field.Store.YES));
				doc.add(new TextField("size", pc.getSize(), Field.Store.YES));
				doc.add(new TextField("CPU", pc.getCPU(), Field.Store.YES));
				doc.add(new TextField("type",pc.getType(),Field.Store.YES));
			    doc.add(new TextField("xiancun", pc.getXiancun(), Field.Store.YES));
			    doc.add(new StringField("url",pc.getUrl(),Field.Store.YES));
			    doc.add(new StringField("flag", pc.getFlag(), Field.Store.YES));	
			    doc.add(new StringField("comment",pc.getComment(),Field.Store.YES));
			    doc.add(new StringField("imgurl", pc.getImgurl(), Field.Store.YES));	 
				writer.addDocument(doc);
				
				System.out.println("成功");
				System.out.println("-------------------------------");
			}
			//writer.setUseCompoundFile(false);
			//writer.optimize();
			writer.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void printPC(PC pc) {
		System.out.println(pc.getTitle());
		System.out.println(pc.getPrice());
		System.out.println(pc.getBrand());
		System.out.println(pc.getTime());
		System.out.println(pc.getSize());
		System.out.println(pc.getCPU());
		System.out.println(pc.getType());
		System.out.println(pc.getXiancun());
		System.out.println(pc.getUrl());
		System.out.println(pc.getFlag());
		System.out.println(pc.getComment());
		System.out.println(pc.getImgurl());
	}
}
