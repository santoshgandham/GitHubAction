public class ExternalAPICall {
  @future(callout=true)
  public static void postAPI(String Id) {
    Http http = new Http();
    HttpRequest request = new HttpRequest();
    request.setEndpoint('https://c2eb476f63c869.lhrtunnel.link/messages');
    request.setMethod('POST');
    request.setHeader('Content-Type', 'application/json;charset=UTF-8');
    // Set the body as a JSON object
    request.setBody(Id); 
    // Santosh changes 
    HttpResponse response = http.send(request);
    // Parse the JSON response
    if(response.getStatusCode() == 200) {
        System.debug(response.getBody());
    } else {
        System.debug('Error' + response.getStatusCode() + ' ' + response.getStatus());
    }
  }
}