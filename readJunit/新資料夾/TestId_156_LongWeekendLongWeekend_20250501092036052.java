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
@Order(156)
public class TestId_156_LongWeekendLongWeekend_20250501092036052{

String baseURL ="https://date.nager.at/";

	private void test0() throws JSONException{
		//OPERATION 0
		//Parameter initialization
		Object request0_path_year = 1900;
		Object request0_path_countryCode = "ZW";
		Object request0_query_subdivisonCode = null;
		Object request0_query_availableBridgeDays = null;
		//Build request
 		RequestSpecification request0 = RestAssured.given();
		request0.pathParam("year" , request0_path_year);
		request0.pathParam("countryCode" , request0_path_countryCode);
		request0.queryParam("subdivisonCode" , request0_query_subdivisonCode);
		request0.queryParam("availableBridgeDays" , request0_query_availableBridgeDays);
		//Build Response
		Response response0 = request0.when().get(baseURL+"/api/v3/LongWeekend/{year}/{countryCode}");
		String response0_response_body = response0.getBody().asString();

		Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
	}
	@Test
	public void test_LongWeekendLongWeekend_20250501092036052()  throws JSONException{
		test0();
	}
}
