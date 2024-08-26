pageextension 50105 TestMyExtension extends "Purchase Order"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
        addfirst("O&rder")
        {
            action(Hypelink)
            {
                Caption = 'Sync to Sharepoint';
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;


                trigger OnAction()
                var
                    //TempLocation: Record ContainerDetails temporary;
                    ContainerData: Record ContainerData;


                begin
                    //Hyperlink('https://www.google.com' + Rec."Vendor Order No.");
                    //SendPostRequest();
                    //GetContainerLocationDetails();
                    //ShowPopup();
                    ContainerData.SetRange(ContainerNumber, 'UETU2206651');
                    Page.Run(50105, ContainerData);
                    // TempLocation.Init();
                    // TempLocation.No := '1';
                    // TempLocation.Location := 'Testing';
                    // TempLocation.Insert();

                    // TempLocation.Init();
                    // TempLocation.No := '12';
                    // TempLocation.Location := 'Testing23';
                    // TempLocation.Insert();

                    // TempLocation.Init();
                    // TempLocation.No := '13';
                    // TempLocation.Location := 'Testing23';
                    // TempLocation.Insert();

                    // TempLocation.Init();
                    // TempLocation.No := '14';
                    // TempLocation.Location := 'Testing23';
                    // TempLocation.Insert();

                    // TempLocation.Init();
                    // TempLocation.No := '15';
                    // TempLocation.Location := 'Testing23';
                    // TempLocation.Insert();

                    //Page.Run(50104, TempLocation);

                end;
            }
        }
    }

    procedure SendPostRequest()
    var
        HttpClient: HttpClient;
        HttpRequestMessage: HttpRequestMessage;
        HttpResponseMessage: HttpResponseMessage;
        Content: HttpContent;
        JsonObject: JsonObject;
        JsonText: Text;
        ResponseText: Text;
        Headers: HttpHeaders;
    begin
        JsonObject.Add('VendorShipmentNumber', Rec."Vendor Shipment No.");
        JsonObject.Add('PONumber', Rec."No.");
        JsonObject.Add('VendorName', Rec."Buy-from Vendor Name");
        JsonObject.WriteTo(JsonText);
        Content.WriteFrom(JsonText);

        HttpRequestMessage.Method := 'POST';
        HttpRequestMessage.SetRequestUri('https://prod-02.centralindia.logic.azure.com:443/workflows/41bb3dfece3e4826834c5ba6c83e647d/triggers/manual/paths/invoke?api-version=2016-06-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=n-HOckPsp_yf04ua-OWJ0y01TvN86CdX_MF9g2654q0');

        Content.GetHeaders(Headers);
        Headers.Clear();
        Headers.Add('Content-Type', 'application/json');
        HttpRequestMessage.Content := Content;

        // Send the request
        if HttpClient.Send(HttpRequestMessage, HttpResponseMessage) then begin
            HttpResponseMessage.Content.ReadAs(ResponseText);
            Message('Sharepoint updated succesfully..');
        end else begin
            Message('Error sending request');
        end;
    end;




    procedure GetContainerLocationDetails()
    var
        HttpClient: HttpClient;
        HttpResponseMessage: HttpResponseMessage;
        ResponseText: Text;
    begin
        // Set the API endpoint URL
        HttpClient.Get('https://tracking.searates.com/tracking?api_key=K-8A209FCB-A578-455E-84FC-257A5F427128&number=OOLU1968977&route=true&force_update=true', HttpResponseMessage);

        // Check if the request was successful (status code 200)
        if HttpResponseMessage.IsSuccessStatusCode() then begin
            // Read the response content
            HttpResponseMessage.Content.ReadAs(ResponseText);
            Message('Response: %1', ResponseText);
        end else begin
            Message('Error: %1', HttpResponseMessage.HttpStatusCode);
        end;
    end;

    var
        myInt: Integer;
        myData: Text;
}