package searches;

import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.TokenStream;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.queryparser.classic.ParseException;
import org.apache.lucene.queryparser.classic.QueryParser;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.Sort;
import org.apache.lucene.search.SortField;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.search.highlight.Formatter;
import org.apache.lucene.search.highlight.Fragmenter;
import org.apache.lucene.search.highlight.Highlighter;
import org.apache.lucene.search.highlight.InvalidTokenOffsetsException;
import org.apache.lucene.search.highlight.QueryScorer;
import org.apache.lucene.search.highlight.Scorer;
import org.apache.lucene.search.highlight.SimpleFragmenter;
import org.apache.lucene.search.highlight.SimpleHTMLFormatter;
import org.apache.lucene.store.FSDirectory;
import org.apache.lucene.util.Version;

import Index.PC;

public class simpleSearch {

	public List simpleQP(String keys) throws ParseException, IOException,
			InvalidTokenOffsetsException {

		IndexReader reader = DirectoryReader.open(FSDirectory.open(new File(
				"/Users/zjl/Desktop/PCEngine/pcIndex")));
		IndexSearcher searcher = new IndexSearcher(reader);
		Version version = Version.LUCENE_47;
		Analyzer analyzer = new StandardAnalyzer(version);

		String field = "title";
		String queryStr = keys;
		QueryParser parser = new QueryParser(version, field, analyzer);
		parser.setDefaultOperator(QueryParser.AND_OPERATOR);
		Query query = parser.parse(queryStr);
		System.out.println(query.toString());

		Sort sort = new Sort(new SortField("price", SortField.Type.INT, false));

		TopDocs results = searcher.search(query, 20, sort);
		ScoreDoc[] hits = results.scoreDocs;

		Formatter formatter = new SimpleHTMLFormatter("<font color='red'>",
				"</font>");
		Scorer score = new QueryScorer(query);
		Highlighter highlighter = new Highlighter(formatter, score);
		
		Fragmenter fragmenter = new SimpleFragmenter(100);
		highlighter.setTextFragmenter(fragmenter);

		List pcList = new ArrayList();
		PC pc;
		for (int i = 0; i < hits.length; i++) {
			pc = new PC();
			Document hitDoc = searcher.doc(hits[i].doc);
			String text = hitDoc.get("title");
			if (text != null) {
				TokenStream tokenStream = analyzer.tokenStream("title",
						new StringReader(text));
				String str = highlighter.getBestFragment(tokenStream, text);
				pc.setTitle(str);
			} else {
				pc.setTitle(hitDoc.get("title"));
			}
			pc.setPrice(Integer.parseInt(hitDoc.get("price")));
			pc.setBrand(hitDoc.get("brand"));
			pc.setTime(hitDoc.get("time"));
			pc.setSize(hitDoc.get("size"));
			pc.setCPU(hitDoc.get("CPU"));
			pc.setXiancun(hitDoc.get("xiancun"));
			pc.setType(hitDoc.get("type"));
			pc.setComment(hitDoc.get("comment"));
			pc.setUrl(hitDoc.get("url"));
			pc.setImgurl(hitDoc.get("imgurl"));
			pc.setFlag(hitDoc.get("flag"));
			pcList.add(pc);
		}

		reader.close();
		return pcList;
	}

}
