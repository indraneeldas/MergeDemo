<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript" src="<%= ResolveUrl("~") %>Scripts/tinymce_3.5.6/jscripts/tiny_mce/tiny_mce.js"></script>
    <script type="text/javascript">
        tinyMCE.init({        // General options
            mode: "exact",
            theme: "advanced",
            elements: "sample",
            plugins: "autolink,lists,spellchecker,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template",
            // Theme options       
            theme_advanced_buttons1: "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect,formatselect,fontselect,fontsizeselect", theme_advanced_buttons2: "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor", 
            theme_advanced_buttons3: "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen", 
            theme_advanced_buttons4: "insertlayer,moveforward,movebackward,absolute,|,styleprops,spellchecker,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,blockquote,pagebreak,|,insertfile,insertimage",
            theme_advanced_toolbar_location: "top",
            theme_advanced_toolbar_align: "left",
            theme_advanced_statusbar_location: "bottom", 
            theme_advanced_resizing: true,
            // Skin options       
            skin: "o2k7", skin_variant: "silver",
            // Example content CSS (should be your site CSS)        
            content_css: "css/example.css",
            // Drop lists for link/image/media/template dialogs        
            template_external_list_url: "js/template_list.js",
            external_link_list_url: "js/link_list.js",
            external_image_list_url: "js/image_list.js", 
            media_external_list_url: "js/media_list.js",
            // Replace values for the template plugin
            template_replace_values: { username: "Some User", staffid: "991234" }
        });
    </script>
    <div id="sample" style="width: 100%">
        I am implementing tinymce into a web app instead of a text area, which writes into an Access Database. The text is then read from that database into a webpage which the user reads.
        I am finding carriage return works fine for a new line, but when carriage return is not used the text returns in a big long line when I view the text in my "read" page.

In a normal textarea - wrap=hard solves this, then using <pre> *text here*</pre> on the read page and it keeps the same formatting as the user entered.

        <div style="width: auto;">
            Child Div here
        </div>

        IE fires the "controlselect" event in this case and to place the cursor within the content and return false. I eventually managed to get this example to run, but while it suppresses the initial selection of the content it then seems to become random as to whether a given click inside the content places a cursor there or not.
    </div>
</asp:Content>
