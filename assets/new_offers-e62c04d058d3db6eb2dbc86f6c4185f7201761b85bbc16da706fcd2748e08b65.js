var offers=new Vue({el:"#offers",data:{loading:!0,offers:[],selectedOfferNr:-1,overlayActive:!1,translations:{},leads_api_url:"",gonData:{}},computed:{selectedOffer:function(){var e=this;return e.offers[e.selectedOfferNr].suboffers[0]},selectedOfferType:function(){return"long"==this.selectedOffer.form_type?"Offer Sales":"Offer Generic"},anchors:function(){var e=this,a=[];return e.offers.forEach(function(o,n){var t=getSlug(e.offers[n].anchor);""==t&&(t="offer-"+n),a.push(t)}),a}},methods:{fetchData:function(){var e=this;baseUrl=gon.base_url,apiUrl=baseUrl+"/api/offers",this.$http.get(apiUrl).then(function(a){e.offers=a.data})},fetchTranslations:function(){var e=this,a=gon.translations;e.translations=a},globalTransforms:function(){var e=this;$("html").toggleClass("noscroll"),$.each(["header",".inpage-nav",".offers-menu"],function(a,o){$(o).css("transition","opacity .5s"),e.overlayActive?$(o).css("opacity","0"):$(o).css("opacity","1")});var a=$("#body_content_wrapper");e.overlayActive?(a.css("transition","none"),a.css("background-color","#181818")):(a.css("transition","background-color 1s step-end"),a.css("background-color","#fff"))},goToOffer:function(e){var a=this;a.selectedOfferNr=e,a.selectedOffer.cta_url||(a.openOverlay(e),location.hash=a.offers[e].suboffers[0].link);var o=a.offers[e].suboffers[0].car_model_key;a.pushData("offerFormView","View",o)},openOverlay:function(e){var a=this;a.overlayActive=!0,a.globalTransforms();var o=a.offers[e].suboffers[0].car_model_key;a.pushData("offerFormView","View",o)},closeOverlay:function(){var e=this;e.overlayActive=!1,e.selectedOfferNr=-1,e.globalTransforms(),location.hash=location.hash.split("?")[0]+"-"},sendLead:function(e){var a=this;$.ajax({type:"POST",url:leads_api_url,data:JSON.stringify(e),contentType:"application/json",complete:function(){var e;e=$("#lead-form").serializeArray(),$.grep(e,function(e){e.name});var o=a.selectedOfferType;a.pushData("offerFormFinish","Finish Form",o),a.closeOverlay()},succes:function(){a.closeOverlay()},error:function(e){console.log(e)}})},submit:function(){var e=this;lead_data=$("#lead-form").serializeArray().reduce(function(e,a){return e[a.name]=a.value,e},{}),lead_data.url=window.location.toString(),e.sendLead({lead:lead_data})},pushData:function(e,a,o){window.dataLayer.push({event:e,eventCategory:"Offers",eventAction:a,eventLabel:o})},scrollTo:function(e){if($("body").hasClass("lrdx"))var a=$(".inpage-nav").height(),o=$("#"+e).parent();else{a=$(".offers-menu").height();var n=$(".utility-bar");n.is(":visible")&&(a+=n.height());o=$("#"+e)}$("html, body").animate({scrollTop:o.offset().top-a},500),location.hash=e},showOfferFromLink:function(){var e=this;if(location.hash)var a=location.hash;e.offers.forEach(function(o,n){"#"+e.anchors[n]+"-"==a||"#"+e.anchors[n]==a?e.scrollTo(e.anchors[n]):e.offers[n].suboffers[0].link==a&&(e.scrollTo(e.anchors[n]),e.goToOffer(n))})},watchScroll:function(){$(".offers-menu").length&&(window.onscroll=function(){var e,a,o=$(".offers-menu"),n=$("header"),t=$(".utility-bar");e=t.is(":visible")?t.height():0,window.pageYOffset>n.height()-e?(o.addClass("fixed"),o.css("top",e),n.css("margin-top",o.height())):(o.removeClass("fixed"),n.css("margin-top",0));var r=[];$(".anchor").each(function(){r.push($(this).offset().top)}),a=r.map(function(a){return a-(window.pageYOffset+o.height()+e)}).filter(function(e){return e<=1}).length,$(o.find(".menu-item")).removeClass("active"),$(o.find("#menu-item-"+(a-1))).addClass("active")})},launchInPageNav:function(){$("#ipn-nav").length&&inPageNav&&($("#ipn-nav").find("ul").empty(),inPageNav())}},created:function(){var e=this;e.fetchData(),e.fetchTranslations(),e.gonData=gon,e.leads_api_url=gon.leads_api_url,e.watchScroll()},mounted:function(){var e=this;document.onreadystatechange=function(){"complete"==document.readyState&&(e.loading=!1,e.launchInPageNav(),e.showOfferFromLink())}},updated:function(){}});