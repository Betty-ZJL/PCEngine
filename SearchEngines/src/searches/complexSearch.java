package searches;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.queryparser.classic.MultiFieldQueryParser;
import org.apache.lucene.queryparser.classic.ParseException;
import org.apache.lucene.search.BooleanClause;
import org.apache.lucene.search.BooleanQuery;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.NumericRangeQuery;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.Sort;
import org.apache.lucene.search.SortField;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.search.highlight.InvalidTokenOffsetsException;
import org.apache.lucene.store.FSDirectory;
import org.apache.lucene.util.Version;

import Index.PC;

public class complexSearch {

	private static void addQuery(BooleanQuery boolQuery, String fname,
			String[] fvalues) throws ParseException {
		if (fvalues != null && fvalues.length != 0) {
			String[] fields = new String[fvalues.length];
			String[] queries = new String[fvalues.length];
			BooleanClause.Occur[] clauses = new BooleanClause.Occur[fvalues.length];
			for (int i = 0; i < fvalues.length; i++) {
				fields[i] = fname;
				queries[i] = "\"" + fvalues[i] + "\"";
				clauses[i] = BooleanClause.Occur.SHOULD;
			}
			Query mulQuery = MultiFieldQueryParser.parse(Version.LUCENE_47,
					queries, fields, clauses, new StandardAnalyzer(
							Version.LUCENE_47));
			boolQuery.add(mulQuery, BooleanClause.Occur.MUST);
		}
	}

	public List complexQP(String[] brand, String[] size, String[] CPU,
			String[] type, String[] xiancun, String minprice, String maxprice)
			throws ParseException, IOException, InvalidTokenOffsetsException {
		IndexReader reader = DirectoryReader.open(FSDirectory.open(new File(
				"/Users/zjl/Desktop/PCEngine/pcIndex")));
		IndexSearcher searcher = new IndexSearcher(reader);
		Version version = Version.LUCENE_47;
		Analyzer analyzer = new StandardAnalyzer(version);

		BooleanQuery boolQuery = new BooleanQuery();

		addQuery(boolQuery, "brand", brand);
		addQuery(boolQuery, "size", size);
		addQuery(boolQuery, "CPU", CPU);
		addQuery(boolQuery, "type", type);
		addQuery(boolQuery, "xiancun", xiancun);

		Query priceRangeQuery = NumericRangeQuery.newIntRange("price",
				Integer.parseInt(minprice), Integer.parseInt(maxprice), true,
				true);
		boolQuery.add(priceRangeQuery, BooleanClause.Occur.MUST);

		System.out.println(boolQuery.toString());

		Sort sort = new Sort(new SortField("price", SortField.Type.INT, false));

		TopDocs results = searcher.search(boolQuery, 20, sort);
		ScoreDoc[] hits = results.scoreDocs;

		List pcList = new ArrayList();
		PC pc;
		for (int i = 0; i < hits.length; i++) {
			pc = new PC();
			Document hitDoc = searcher.doc(hits[i].doc);
			pc.setTitle(hitDoc.get("title"));
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
