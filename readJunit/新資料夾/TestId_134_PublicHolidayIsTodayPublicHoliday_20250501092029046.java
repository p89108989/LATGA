package NominalFuzzer;

import static io.restassured.RestAssured.*;
import com.jayway.jsonpath.JsonPath;
import io.restassured.RestAssured;
import io.restassured.specification.RequestSpecification;
import static io.restassured.matcher.RestAssuredMatchers.*;
import static org.hamcrest.Matchers.*;
import io.restassured.http.ContentType;
import io.restassured.response.Response;
import io.restassured.common.mapper.TypeRef;
import java.util.List;
import java.util.Map;
import java.util.HashMap;
import org.json.*;
import org.junit.jupiter.api.*;
//import org.junit.runners.*;

//@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.DEFINED_PORT)
@Order(134)
public class TestId_134_PublicHolidayIsTodayPublicHoliday_20250501092029046{

String baseURL ="https://date.nager.at/";

	private void test0() throws JSONException{
		//OPERATION 0
		//Parameter initialization
		Object request0_path_countryCode = "1@";
		Object request0_query_offset = null;
		Object request0_query_countyCode = null;
		//Build request
 		RequestSpecification request0 = RestAssured.given();
		request0.pathParam("countryCode" , request0_path_countryCode);
		request0.queryParam("offset" , request0_query_offset);
		request0.queryParam("countyCode" , request0_query_countyCode);
		//Build Response
		Response response0 = request0.when().get(baseURL+"/api/v3/IsTodayPublicHoliday/{countryCode}");
		String response0_response_body = response0.getBody().asString();

		Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
	}
	@Test
	public void test_PublicHolidayIsTodayPublicHoliday_20250501092029046()  throws JSONException{
		test0();
	}
}
