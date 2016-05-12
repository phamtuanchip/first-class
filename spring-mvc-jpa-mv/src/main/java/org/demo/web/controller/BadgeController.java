/*
 * Created on 3 avr. 2014 ( Time 19:39:49 )
 * Generated by Telosys Tools Generator ( version 2.1.0 )
 */
package org.demo.web.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

//--- Common classes
import org.demo.web.common.AbstractController;
import org.demo.web.common.FormMode;
import org.demo.web.common.Message;
import org.demo.web.common.MessageType;

//--- Entities
import org.demo.bean.Badge;

//--- Services 
import org.demo.business.service.BadgeService;


/**
 * Spring MVC controller for 'Badge' management.
 */
@Controller
@RequestMapping("/badge")
public class BadgeController extends AbstractController {

	//--- Variables names ( to be used in JSP with Expression Language )
	private static final String MAIN_ENTITY_NAME = "badge";
	private static final String MAIN_LIST_NAME   = "list";

	//--- JSP pages names ( View name in the MVC model )
	private static final String JSP_FORM   = "badge/form";
	private static final String JSP_LIST   = "badge/list";

	//--- SAVE ACTION ( in the HTML form )
	private static final String SAVE_ACTION_CREATE   = "/badge/create";
	private static final String SAVE_ACTION_UPDATE   = "/badge/update";

	//--- Main entity service
	@Resource
    private BadgeService badgeService; // Injected by Spring
	//--- Other service(s)

	//--------------------------------------------------------------------------------------
	/**
	 * Default constructor
	 */
	public BadgeController() {
		super(BadgeController.class, MAIN_ENTITY_NAME );
		log("BadgeController created.");
	}

	//--------------------------------------------------------------------------------------
	// Spring MVC model management
	//--------------------------------------------------------------------------------------

	/**
	 * Populates the Spring MVC model with the given entity and eventually other useful data
	 * @param model
	 * @param badge
	 */
	private void populateModel(Model model, Badge badge, FormMode formMode) {
		//--- Main entity
		model.addAttribute(MAIN_ENTITY_NAME, badge);
		if ( formMode == FormMode.CREATE ) {
			model.addAttribute(MODE, MODE_CREATE); // The form is in "create" mode
			model.addAttribute(SAVE_ACTION, SAVE_ACTION_CREATE); 			
			//--- Other data useful in this screen in "create" mode (all fields)
		}
		else if ( formMode == FormMode.UPDATE ) {
			model.addAttribute(MODE, MODE_UPDATE); // The form is in "update" mode
			model.addAttribute(SAVE_ACTION, SAVE_ACTION_UPDATE); 			
			//--- Other data useful in this screen in "update" mode (only non-pk fields)
		}
	}

	//--------------------------------------------------------------------------------------
	// Request mapping
	//--------------------------------------------------------------------------------------
	/**
	 * Shows a list with all the occurrences of Badge found in the database
	 * @param model Spring MVC model
	 * @return
	 */
	@RequestMapping()
	public String list(Model model) {
		log("Action 'list'");
		List<Badge> list = badgeService.findAll();
		model.addAttribute(MAIN_LIST_NAME, list);		
		return JSP_LIST;
	}

	/**
	 * Shows a form page in order to create a new Badge
	 * @param model Spring MVC model
	 * @return
	 */
	@RequestMapping("/form")
	public String formForCreate(Model model) {
		log("Action 'formForCreate'");
		//--- Populates the model with a new instance
		Badge badge = new Badge();	
		populateModel( model, badge, FormMode.CREATE);
		return JSP_FORM;
	}

	/**
	 * Shows a form page in order to update an existing Badge
	 * @param model Spring MVC model
	 * @param badgeNumber  primary key element
	 * @return
	 */
	@RequestMapping(value = "/form/{badgeNumber}")
	public String formForUpdate(Model model, @PathVariable("badgeNumber") Integer badgeNumber ) {
		log("Action 'formForUpdate'");
		//--- Search the entity by its primary key and stores it in the model 
		Badge badge = badgeService.findById(badgeNumber);
		populateModel( model, badge, FormMode.UPDATE);		
		return JSP_FORM;
	}

	/**
	 * 'CREATE' action processing. <br>
	 * This action is based on the 'Post/Redirect/Get (PRG)' pattern, so it ends by 'http redirect'<br>
	 * @param badge  entity to be created
	 * @param bindingResult Spring MVC binding result
	 * @param model Spring MVC model
	 * @param redirectAttributes Spring MVC redirect attributes
	 * @param httpServletRequest
	 * @return
	 */
	@RequestMapping(value = "/create" ) // GET or POST
	public String create(@Valid Badge badge, BindingResult bindingResult, Model model, RedirectAttributes redirectAttributes, HttpServletRequest httpServletRequest) {
		log("Action 'create'");
		try {
			if (!bindingResult.hasErrors()) {
				Badge badgeCreated = badgeService.create(badge); 
				model.addAttribute(MAIN_ENTITY_NAME, badgeCreated);

				//---
				messageHelper.addMessage(redirectAttributes, new Message(MessageType.SUCCESS,"save.ok"));
				return redirectToForm(httpServletRequest, badge.getBadgeNumber() );
			} else {
				populateModel( model, badge, FormMode.CREATE);
				return JSP_FORM;
			}
		} catch(Exception e) {
			log("Action 'create' : Exception - " + e.getMessage() );
			messageHelper.addException(model, "badge.error.create", e);
			populateModel( model, badge, FormMode.CREATE);
			return JSP_FORM;
		}
	}

	/**
	 * 'UPDATE' action processing. <br>
	 * This action is based on the 'Post/Redirect/Get (PRG)' pattern, so it ends by 'http redirect'<br>
	 * @param badge  entity to be updated
	 * @param bindingResult Spring MVC binding result
	 * @param model Spring MVC model
	 * @param redirectAttributes Spring MVC redirect attributes
	 * @param httpServletRequest
	 * @return
	 */
	@RequestMapping(value = "/update" ) // GET or POST
	public String update(@Valid Badge badge, BindingResult bindingResult, Model model, RedirectAttributes redirectAttributes, HttpServletRequest httpServletRequest) {
		log("Action 'update'");
		try {
			if (!bindingResult.hasErrors()) {
				//--- Perform database operations
				Badge badgeSaved = badgeService.update(badge);
				model.addAttribute(MAIN_ENTITY_NAME, badgeSaved);
				//--- Set the result message
				messageHelper.addMessage(redirectAttributes, new Message(MessageType.SUCCESS,"save.ok"));
				log("Action 'update' : update done - redirect");
				return redirectToForm(httpServletRequest, badge.getBadgeNumber());
			} else {
				log("Action 'update' : binding errors");
				populateModel( model, badge, FormMode.UPDATE);
				return JSP_FORM;
			}
		} catch(Exception e) {
			messageHelper.addException(model, "badge.error.update", e);
			log("Action 'update' : Exception - " + e.getMessage() );
			populateModel( model, badge, FormMode.UPDATE);
			return JSP_FORM;
		}
	}

	/**
	 * 'DELETE' action processing. <br>
	 * This action is based on the 'Post/Redirect/Get (PRG)' pattern, so it ends by 'http redirect'<br>
	 * @param redirectAttributes
	 * @param badgeNumber  primary key element
	 * @return
	 */
	@RequestMapping(value = "/delete/{badgeNumber}") // GET or POST
	public String delete(RedirectAttributes redirectAttributes, @PathVariable("badgeNumber") Integer badgeNumber) {
		log("Action 'delete'" );
		try {
			badgeService.delete( badgeNumber );
			//--- Set the result message
			messageHelper.addMessage(redirectAttributes, new Message(MessageType.SUCCESS,"delete.ok"));	
		} catch(Exception e) {
			messageHelper.addException(redirectAttributes, "badge.error.delete", e);
		}
		return redirectToList();
	}

}
