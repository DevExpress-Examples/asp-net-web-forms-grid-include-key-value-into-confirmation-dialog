<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128541480/13.1.5%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E131)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->

# # Grid View for ASP.NET Web Forms - How to include a deleted row key value into the delete confirmation dialog
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e131/)**
<!-- run online end -->

In this example, DataItemTemplate contains a link. 

```aspx
<dxwgv:GridViewDataTextColumn Name="Delete" >
    <DataItemTemplate>
        <a id="DeleteButton" href="javascript:OnLinkClick(<%# Container.KeyValue.ToString()%>, <%# Container.VisibleIndex.ToString()%>);">Delete</a>
    </DataItemTemplate>
</dxwgv:GridViewDataTextColumn>
```

When a user clicks the link, the `OnLinkClick` function displays a confirmation dialog with the row key value.

```js
function OnLinkClick(id, visibleIndex) {
    if (confirm('Do you wish to delete row with ID = ' + id + '?'))
        ASPxGridView1.DeleteRow(visibleIndex);
}
```

![](grid-with-confirmation-dialog.png)

## Implementation Details

<p>This demo demonstrates how to include the Delete link into a column's  Container, and fetch information about the clicked row to the delete confirmation dialog


## Files to Review

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))

## More Examples

* [Grid View for ASP.NET Web Forms - How to implement a delete confirmation dialog with a "don't ask me again" option](https://github.com/DevExpress-Examples/asp-net-web-forms-grid-delete-confirm-dialog-with-dont-ask-me-again-option)
