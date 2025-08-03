prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>25
,p_name=>'rptJobReportingChart'
,p_step_title=>'rptJobReportingChart'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_footer_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script',
'  src="https://code.jquery.com/jquery-2.2.4.js"',
'  integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="',
'  crossorigin="anonymous"></script>',
'<script>',
'jQuery(document).ready(function() {',
'    $("#org").jOrgChart({chartElement :''#orgchart''});',
'',
'});',
'',
'</script>'))
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/**',
' * jQuery org-chart/tree plugin.',
' *',
' * Author: Wes Nolte',
' * http://twitter.com/wesnolte',
' *',
' * Based on the work of Mark Lee',
' * http://www.capricasoftware.co.uk ',
' *',
' * Copyright (c) 2011 Wesley Nolte',
' * Dual licensed under the MIT and GPL licenses.',
' *',
' */',
'(function($) {',
'',
'  $.fn.jOrgChart = function(options) {',
'    var opts = $.extend({}, $.fn.jOrgChart.defaults, options);',
'    var $appendTo = $(opts.chartElement);',
'',
'    // build the tree',
'    $this = $(this);',
'    var $container = $("<div class=''" + opts.chartClass + "''/>");',
'    if($this.is("ul")) {',
'      buildNode($this.find("li:first"), $container, 0, opts);',
'    }',
'    else if($this.is("li")) {',
'      buildNode($this, $container, 0, opts);',
'    }',
'    $appendTo.append($container);',
'',
'    // add drag and drop if enabled',
'    if(opts.dragAndDrop){',
'        $(''div.node'').draggable({',
'            cursor      : ''move'',',
'            distance    : 40,',
'            helper      : ''clone'',',
'            opacity     : 0.8,',
'            revert      : ''invalid'',',
'            revertDuration : 100,',
'            snap        : ''div.node.expanded'',',
'            snapMode    : ''inner'',',
'            stack       : ''div.node''',
'        });',
'        ',
'        $(''div.node'').droppable({',
'            accept      : ''.node'',          ',
'            activeClass : ''drag-active'',',
'            hoverClass  : ''drop-hover''',
'        });',
'        ',
'      // Drag start event handler for nodes',
'      $(''div.node'').bind("dragstart", function handleDragStart( event, ui ){',
'        ',
'        var sourceNode = $(this);',
'        sourceNode.parentsUntil(''.node-container'')',
'                   .find(''*'')',
'                   .filter(''.node'')',
'                   .droppable(''disable'');',
'      });',
'',
'      // Drag stop event handler for nodes',
'      $(''div.node'').bind("dragstop", function handleDragStop( event, ui ){',
'',
'        /* reload the plugin */',
'        $(opts.chartElement).children().remove();',
'        $this.jOrgChart(opts);      ',
'      });',
'    ',
'      // Drop event handler for nodes',
'      $(''div.node'').bind("drop", function handleDropEvent( event, ui ) {    ',
'    ',
'        var targetID = $(this).data("tree-node");',
'        var targetLi = $this.find("li").filter(function() { return $(this).data("tree-node") === targetID; } );',
'        var targetUl = targetLi.children(''ul'');',
'    ',
'        var sourceID = ui.draggable.data("tree-node");    ',
'        var sourceLi = $this.find("li").filter(function() { return $(this).data("tree-node") === sourceID; } );   ',
'        var sourceUl = sourceLi.parent(''ul'');',
'',
'        if (targetUl.length > 0){',
'          targetUl.append(sourceLi);',
'        } else {',
'          targetLi.append("<ul></ul>");',
'          targetLi.children(''ul'').append(sourceLi);',
'        }',
'        ',
'        //Removes any empty lists',
'        if (sourceUl.children().length === 0){',
'          sourceUl.remove();',
'        }',
'    ',
'      }); // handleDropEvent',
'        ',
'    } // Drag and drop',
'  };',
'',
'  // Option defaults',
'  $.fn.jOrgChart.defaults = {',
'    chartElement : ''body'',',
'    depth      : -1,',
'    chartClass : "jOrgChart",',
'    dragAndDrop: false',
'  };',
'  ',
'  var nodeCount = 0;',
'  // Method that recursively builds the tree',
'  function buildNode($node, $appendTo, level, opts) {',
'    var $table = $("<table cellpadding=''0'' cellspacing=''0'' border=''0''/>");',
'    var $tbody = $("<tbody/>");',
'',
'    // Construct the node container(s)',
'    var $nodeRow = $("<tr/>").addClass("node-cells");',
'    var $nodeCell = $("<td/>").addClass("node-cell").attr("colspan", 2);',
'    var $childNodes = $node.children("ul:first").children("li");',
'    var $nodeDiv;',
'    ',
'    if($childNodes.length > 1) {',
'      $nodeCell.attr("colspan", $childNodes.length * 2);',
'    }',
'    // Draw the node',
'    // Get the contents - any markup except li and ul allowed',
'    var $nodeContent = $node.clone()',
'                            .children("ul,li")',
'                            .remove()',
'                            .end()',
'                            .html();',
'  ',
'      //Increaments the node count which is used to link the source list and the org chart',
'    nodeCount++;',
'    $node.data("tree-node", nodeCount);',
'    $nodeDiv = $("<div>").addClass("node")',
'                                     .data("tree-node", nodeCount)',
'                                     .append($nodeContent);',
'',
'    // Expand and contract nodes',
'    if ($childNodes.length > 0) {',
'      $nodeDiv.click(function() {',
'          var $this = $(this);',
'          var $tr = $this.closest("tr");',
'',
'          if($tr.hasClass(''contracted'')){',
'            $this.css(''cursor'',''n-resize'');',
'            $tr.removeClass(''contracted'').addClass(''expanded'');',
'            $tr.nextAll("tr").css(''visibility'', '''');',
'',
'            // Update the <li> appropriately so that if the tree redraws collapsed/non-collapsed nodes',
'            // maintain their appearance',
'            $node.removeClass(''collapsed'');',
'          }else{',
'            $this.css(''cursor'',''s-resize'');',
'            $tr.removeClass(''expanded'').addClass(''contracted'');',
'            $tr.nextAll("tr").css(''visibility'', ''hidden'');',
'',
'            $node.addClass(''collapsed'');',
'          }',
'        });',
'    }',
'    ',
'    $nodeCell.append($nodeDiv);',
'    $nodeRow.append($nodeCell);',
'    $tbody.append($nodeRow);',
'',
'    if($childNodes.length > 0) {',
'      // if it can be expanded then change the cursor',
'      $nodeDiv.css(''cursor'',''n-resize'');',
'    ',
'      // recurse until leaves found (-1) or to the level specified',
'      if(opts.depth == -1 || (level+1 < opts.depth)) { ',
'        var $downLineRow = $("<tr/>");',
'        var $downLineCell = $("<td/>").attr("colspan", $childNodes.length*2);',
'        $downLineRow.append($downLineCell);',
'        ',
'        // draw the connecting line from the parent node to the horizontal line ',
'        $downLine = $("<div></div>").addClass("line down");',
'        $downLineCell.append($downLine);',
'        $tbody.append($downLineRow);',
'',
'        // Draw the horizontal lines',
'        var $linesRow = $("<tr/>");',
'        $childNodes.each(function() {',
'          var $left = $("<td>&nbsp;</td>").addClass("line left top");',
'          var $right = $("<td>&nbsp;</td>").addClass("line right top");',
'          $linesRow.append($left).append($right);',
'        });',
'',
'        // horizontal line shouldn''t extend beyond the first and last child branches',
'        $linesRow.find("td:first")',
'                    .removeClass("top")',
'                 .end()',
'                 .find("td:last")',
'                    .removeClass("top");',
'',
'        $tbody.append($linesRow);',
'        var $childNodesRow = $("<tr/>");',
'        $childNodes.each(function() {',
'           var $td = $("<td class=''node-container''/>");',
'           $td.attr("colspan", 2);',
'           // recurse through children lists and items',
'           buildNode($(this), $td, level+1, opts);',
'           $childNodesRow.append($td);',
'        });',
'',
'      }',
'      $tbody.append($childNodesRow);',
'    }',
'',
'    // any classes on the LI element get copied to the relevant node in the tree',
'    // apart from the special ''collapsed'' class, which collapses the sub-tree at this point',
'    if ($node.attr(''class'') != undefined) {',
'        var classList = $node.attr(''class'').split(/\s+/);',
'        $.each(classList, function(index,item) {',
'            if (item == ''collapsed'') {',
'                console.log($node);',
'                $nodeRow.nextAll(''tr'').css(''visibility'', ''hidden'');',
'                    $nodeRow.removeClass(''expanded'');',
'                    $nodeRow.addClass(''contracted'');',
'                    $nodeDiv.css(''cursor'',''s-resize'');',
'            } else {',
'                $nodeDiv.addClass(item);',
'            }',
'        });',
'    }',
'',
'    $table.append($tbody);',
'    $appendTo.append($table);',
'    ',
'    /* Prevent trees collapsing if a link inside a node is clicked */',
'    $nodeDiv.children(''a'').click(function(e){',
'        console.log(e);',
'        e.stopPropagation();',
'    });',
'  };',
'',
'})(jQuery);'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Basic styling */',
'/* Draw the lines */',
'',
'.jOrgChart {',
'text-align:center;',
'}',
'.jOrgChart .line {',
'  height                : 20px;',
'  width                 : 4px;',
'}',
'',
'.jOrgChart .down {',
'  background-color         : black;    ',
'  margin                 : 0px auto;',
'}',
'',
'.jOrgChart .top {',
'  border-top          : 3px solid black;',
'}',
'',
'.jOrgChart .left {',
'  border-right          : 2px solid black;',
'}',
'',
'.jOrgChart .right {',
'  border-left           : 2px solid black;',
'}',
'',
'/* node cell */',
'.jOrgChart td {',
'  text-align            : center;',
'  vertical-align        : top;',
'  padding               : 0;',
'}',
'',
'/* The node */',
'.jOrgChart .node {',
'  background-color         : #cccccc;',
'  display               : inline-block;',
'  width                 : 150px;',
'  height                : 120px;',
'  z-index                 : 10;',
'  margin               : 0 2px;',
'}',
'',
'/* jQuery drag ''n drop */',
'',
'.drag-active {',
'  border-style            : dotted !important;',
'}',
'',
'.drop-hover {',
'  border-style            : solid !important;',
'  border-color             : #E05E00 !important;',
'}'))
,p_step_template=>2979075366320325194
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3129200157073698260)
,p_plug_name=>'Position Reporting to Chart'
,p_region_name=>'orgchart'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="overflow:auto"'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_var clob;',
'v_count number := 0;',
'begin',
'V_VAR :=''<ul id=''''org'''' style=''''display:none''''>'';',
'for i in (SELECT a.id,B.ORG_STRUCTURE_ID,POSITION_NAME,upper(UNIT_NAME) UNIT_NAME FROM HR_HCF_POSITION A JOIN HR_HCF_ORGSTRUCTUREDTL B ON B.ID=A.ORGDTL_ID WHERE B.ORG_STRUCTURE_ID =:P25_ORGANISATION_STRUCTURE and REPORT_TO is null) loop',
'  v_count :=v_count+1;',
'  ',
'  v_var := v_var||''<li>''||i.POSITION_NAME||''<br /><img class="emp_image" src="#WORKSPACE_IMAGES#/position_image.png"><br />''||i.UNIT_NAME ||''<ul>''||pkg_global_fnts.pos_get_children(i.ID,''#WORKSPACE_IMAGES#'')||''</ul></li>'';',
'  end loop;',
'  v_var :=v_var||''</ul>'';',
'  htp.p(''<div style=''''text-align:center''''>''||v_var||''</div>'');',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3296187459158660141)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3129200157073698260)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P25_RETURN_PAGE.:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3296186749420660146)
,p_name=>'P25_RETURN_PAGE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3129200157073698260)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3296187193619660144)
,p_name=>'P25_ORGANISATION_STRUCTURE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3129200157073698260)
,p_prompt=>'Organisation Structure'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select org_structure_name||'' AT ''|| date_started, id',
'from hr_hcf_orgstructurehd a',
'where exists (select 1',
'            from VW_USERACCESS x',
'            where x.org_id=a.org_id)',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp.component_end;
end;
/
