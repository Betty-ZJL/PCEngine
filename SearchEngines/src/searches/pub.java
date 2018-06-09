package searches;


import java.util.Iterator;
import java.util.List;

import Index.PC;

public class pub {

	public static void bianli(List list) {
		System.out.println("-------------------------------");
		Iterator iter = list.iterator();
		PC pc;
		while (iter.hasNext()) {
			pc = (PC) iter.next();
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
			System.out.println("-------------------------------");
		}
	}

}
