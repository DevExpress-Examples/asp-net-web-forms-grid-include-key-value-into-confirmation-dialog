<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128541480/13.1.5%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E131)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
[![](https://img.shields.io/badge/💬_Leave_Feedback-feecdd?style=flat-square)](#does-this-example-address-your-development-requirementsobjectives)
<!-- default badges end -->

# Grid View for ASP.NET Web Forms - How to include a row key value into the delete confirmation dialog

This example demonstrates how to include a row key value in the delete confirmation dialog.

![](grid-with-confirmation-dialog.png)

## Implementation Details

In this example, [DataItemTemplate](https://docs.devexpress.com/AspNet/DevExpress.Web.GridViewDataColumn.DataItemTemplate) contains a link element. 

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

## Files to Review

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))

## More Examples

* [Grid View for ASP.NET Web Forms - How to implement a delete confirmation dialog with a "don't ask me again" option](https://github.com/DevExpress-Examples/asp-net-web-forms-grid-delete-confirm-dialog-with-dont-ask-me-again-option)
<!-- feedback -->
## Does this example address your development requirements/objectives?

[<img src="https://www.devexpress.com/support/examples/i/yes-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=asp-net-web-forms-grid-include-key-value-into-confirmation-dialog&~~~was_helpful=yes) [<img src="https://www.devexpress.com/support/examples/i/no-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=asp-net-web-forms-grid-include-key-value-into-confirmation-dialog&~~~was_helpful=no)

(you will be redirected to DevExpress.com to submit your response)
<!-- feedback end -->
