<#assign portlet_display = portletDisplay/>

<#assign portlet_id = htmlUtil.escapeAttribute(portlet_display.getId())/>
<#assign portlet_title = portlet_display.getTitle()/>
<#assign portlet_content = portlet_display.getContent()/>
<#assign portlet_back_url = htmlUtil.escape(portlet_display.getURLBack())/>

<div class="portlet" id="portlet-wrapper-${portlet_id}">
	<div class="portlet-topper">
		<span class="portlet-title">
			${theme.iconPortlet()} <span class="portlet-title-text">${portlet_title}</span>
		</span>

		<div class="portlet-icons" id="portlet-small-icon-bar_${portlet_id}">
			<#if portlet_display.isShowBackIcon()>
				<a href="${portlet_back_url}" class="portlet-icon-back"><@liferay.language key="return-to-full-page" /></a>
			<#else>
				${theme.iconOptions()}
				${theme.iconMinimize()}
				${theme.iconMaximize()}
				${theme.iconClose()}
			</#if>
		</div>
	</div>

	<div class="portlet-content">
		${portlet_content}
	</div>
</div>