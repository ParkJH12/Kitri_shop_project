6/28 해야할 것

2. 주문내역 추가 (DB - ORDER TABLE // JSP - 새로하나팔것 // JAVA :: ORDERCONTROLLER전까지 구현)
   - 세션.NAME != 작성자.NAME일 경우 "주문"버튼이 들어나도록 함
3. 구매버튼을 클릭 시 해당 값이 구매내역으로 이동(이때, count와 price에 값이 조정되어 캐시가 조정됨)
    - 주문취소 시 price값과 count가 각각 리턴된다. (해당 데이터는 삭제)  
4. 판매목록에 LIST에 들어가서 제목을 클릭하면 상품수정 가능하게끔함 (삭제도 구현)
    만약 다른사람이 들어갈경우 구매버튼 / 장바구니가 활성화되게끔 수정
5. BOARD에 IMG넣을 수 있도록 하고 BOARDLIST를 보다 자세히 뿌려주도록 한다

====================================================

6/29 해야할 것

1. 상품목록(sellist)에 검색기능추가(글쓴이/내용/제목별로)

2. 장바구니구현

3. 많이 팔리는 품목 구현

4.  


 ================================================================   
한글깨짐ㅅ ㅣ ::

	<filter>
		<filter-name>encodingFilter</filter-name>
		<filter-class>org.springframework.web.filter.CharacterEncodingFilter</filter-class>
		<init-param>
			<param-name>encoding</param-name>
			<param-value>UTF-8</param-value>
		</init-param>
	</filter>

	<filter-mapping>
		<filter-name>encodingFilter</filter-name>
		<url-pattern>/*</url-pattern>
	</filter-mapping>


==============