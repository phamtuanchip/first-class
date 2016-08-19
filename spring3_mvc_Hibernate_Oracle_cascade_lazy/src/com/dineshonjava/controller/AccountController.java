//package com.dineshonjava.controller;
//
//import java.util.ArrayList;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//import java.util.Set;
//
//import javax.validation.Valid;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.validation.BindingResult;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.servlet.ModelAndView;
//
//import com.dineshonjava.bean.AccountBean;
//import com.dineshonjava.model.Account;
//import com.dineshonjava.service.AccountService;
//import com.dineshonjava.service.CardService;
//import com.dineshonjava.model.Card;
//import com.dineshonjava.bean.CardBean;
//
///**
// * @author Dinesh Rajput
// *
// */
//@Controller
//public class AccountController {
//	
////	@Autowired
////	private AccountService accountService;
////	@Autowired
////	private CardService cardService;
////	@RequestMapping(value = "/save", method = RequestMethod.POST)
////	public ModelAndView saveAccount(@Valid @ModelAttribute("command") AccountBean accountBean, 
////			BindingResult result) {
////		Account account = prepareModel(accountBean);
////		accountService.addAccount(account);
////		return new ModelAndView("redirect:/add.html");
////	
////	}
////	
////	@RequestMapping(value="/accounts", method = RequestMethod.GET)//
////	public ModelAndView listAccounts() {
////		Map<String, Object> model = new HashMap<String, Object>();
////		model.put("accounts",  prepareListofBean(accountService.listAccount()));
////		return new ModelAndView("accountsList", model);
////	}
////
////	@RequestMapping(value = "/add", method = RequestMethod.GET)
////	public ModelAndView addAccount(@ModelAttribute("command")  AccountBean accountBean,
////			BindingResult result) {
////		Map<String, Object> model = new HashMap<String, Object>();
////		model.put("accounts",  prepareListofBean(accountService.listAccount()));
////		return new ModelAndView("addAccount", model);
////	}
////	
//	@RequestMapping(value = "/index", method = RequestMethod.GET)
//	public ModelAndView welcome(){
//		return new ModelAndView("index");
//	}
////	
////	@RequestMapping(value = "/delete", method = RequestMethod.GET)
////	public ModelAndView editAccount(@ModelAttribute("command")  AccountBean accountBean,
////			BindingResult result) {
////		accountService.deleteAccount(prepareModel(accountBean));
////		Map<String, Object> model = new HashMap<String, Object>();
////		model.put("account", null);
////		model.put("accounts",  prepareListofBean(accountService.listAccount()));
////		return new ModelAndView("addAccount", model);
////	}
////	
////	@RequestMapping(value = "/edit", method = RequestMethod.GET)
////	public ModelAndView deleteAccount(@ModelAttribute("command")  AccountBean accountBean,
////			BindingResult result) {
////		Map<String, Object> model = new HashMap<String, Object>();
////		model.put("account", prepareAccountBean(accountService.getAccount(accountBean.getId())));
////		model.put("accounts",  prepareListofBean(accountService.listAccount()));
////		return new ModelAndView("addAccount", model);
////	}
////	
////	private Account prepareModel(AccountBean accountBean){
////		Account account = new Account();
////		account.setUsers(accountBean.getUsers());
////		account.setEmails(accountBean.getEmails());
////		account.setPasswd(accountBean.getPasswd());
////		account.setPhone(accountBean.getPhone());
////		account.setEmpAddress(accountBean.getAddress());
////		account.setEmpAge(accountBean.getAge());
////		account.setEmpName(accountBean.getName());
////		account.setIdentityCard(accountBean.getIdentityCard());
////		account.setEmpId(accountBean.getId());
////		accountBean.setId(null);
////		return account;
////	}
////	
////	private List<AccountBean> prepareListofBean(List<Account> accounts){
////		List<AccountBean> beans = null;
////		if(accounts != null && !accounts.isEmpty()){
////			beans = new ArrayList<AccountBean>();
////			AccountBean bean = null;
////			for(Account account : accounts){
////				bean = new AccountBean();
////				bean.setName(account.getEmpName());
////				bean.setId(account.getEmpId());
////				bean.setEmails(account.getEmails());
////				bean.setPhone(account.getPhone());
////				bean.setUsers(account.getUsers());
////				bean.setPasswd(account.getPasswd());
////				bean.setAddress(account.getEmpAddress());
////				bean.setIdentityCard(account.getIdentityCard());
////				bean.setAge(account.getEmpAge());
////				beans.add(bean);
////			}
////		}
////		return beans;
////	}
////	
////	private AccountBean prepareAccountBean(Account account){
////		AccountBean bean = new AccountBean();
////		bean.setAddress(account.getEmpAddress());
////		bean.setAge(account.getEmpAge());
////		bean.setEmails(account.getEmails());
////		bean.setUsers(account.getUsers());
////		bean.setPhone(account.getPhone());
////		bean.setPasswd(account.getPasswd());
////		bean.setName(account.getEmpName());
////		bean.setIdentityCard(account.getIdentityCard());
////		bean.setId(account.getEmpId());
////		return bean;
////	}
//	////////////////////////////////////////////////////////////////////////////////////////////////////////////
////	@RequestMapping(value = "/savecard", method = RequestMethod.POST)
////	public ModelAndView saveCard(@ModelAttribute("command") CardBean cardBean, 
////			BindingResult result) {
////		Card card = cardModel(cardBean);
////		card.setAccounts(accountService.getAccount(cardBean.getAid()));
////		cardService.addCard(card);
////		return new ModelAndView("redirect:/listall.html");
////	}
////	
////	
////	@RequestMapping(value="/cards", method = RequestMethod.GET)
////	public ModelAndView listCards( CardBean cardBean) {
////		Map<String, Object> model = new HashMap<String, Object>();
////		model.put("cards",  prepareBean(accountService.getAccount(cardBean.getId()).getCards()));
////		return new ModelAndView("cardList", model);
////	}
////	
////	@RequestMapping(value="/listall", method = RequestMethod.GET)//danh sÃ¡ch táº¥t cáº£ cÃ¡c Card   [ok].
////	public ModelAndView listCardacc() {
////		Map<String, Object> model = new HashMap<String, Object>();
////		model.put("cards",  prepareCardBean(cardService.listCard()));
////		return new ModelAndView("cardAll", model);
////	}
////		
////	@RequestMapping(value = "/addcard", method = RequestMethod.GET)//[ok]
////	public ModelAndView addCard(@ModelAttribute("command")  CardBean cardBean,
////			BindingResult result) {
////		Map<String, Object> model = new HashMap<String, Object>();
////		model.put("cards",  prepareBean(accountService.getAccount(cardBean.getAid()).getCards()));
////		return new ModelAndView("addCard", model);
////	}
////	
////	@RequestMapping(value = "/deletecard", method = RequestMethod.GET)
////	public ModelAndView editCard(@ModelAttribute("command")  CardBean cardBean,
////			BindingResult result) {
////		cardService.deleteCard(cardModel(cardBean));
////		Map<String, Object> model = new HashMap<String, Object>();
////		model.put("card", null);
////		model.put("cards",  prepareCardBean(cardService.listCard()));
////		return new ModelAndView("addCard", model);
////	}
////	
////	@RequestMapping(value = "/editcard", method = RequestMethod.GET)
////	public ModelAndView deleteCard(@ModelAttribute("command")  CardBean cardBean,
////			BindingResult result) {
////		Map<String, Object> model = new HashMap<String, Object>();
////		model.put("card", preCardBean(cardService.getCard(cardBean.getId())));
////		//model.put("cards",  prepareBean(accountService.getAccount(cardBean.getId()).getCards()));
////		return new ModelAndView("addCard", model);
////	}
////	
////	private Card cardModel(CardBean cardBean){
////		Card card = new Card();
////		card.setAccountHolders(cardBean.getAccountHolders());
////		card.setBranch(cardBean.getBranch());
////		card.setId(cardBean.getId());
////		card.setName(cardBean.getName());
////		card.setNumberAc(cardBean.getNumberAc());
////		card.setType(cardBean.getType());
////		
////		///card.setAccounts(cardBean.getAccount());
////		cardBean.setId(null);
////		return card;
////	}
////	
////	private List<CardBean> prepareCardBean(List<Card> cards){
////		List<CardBean> beans = null;
////		if(cards != null && !cards.isEmpty()){
////			beans = new ArrayList<CardBean>();
////			CardBean bean = null;
////			for(Card card : cards){
////				bean = new CardBean();
////				bean.setName(card.getName());
////				bean.setId(card.getId());
////				bean.setAccountHolders(card.getAccountHolders());
////				bean.setBranch(card.getBranch());
////				bean.setNumberAc(card.getNumberAc());
////				bean.setType(card.getType());
////				bean.setAid(card.getAccounts().getEmpId());
////				beans.add(bean);
////			}
////		}
////		return beans;
////	}
////	private List<CardBean> prepareBean(Set<Card> cards){
////		List<CardBean> beans = null;
////		if(cards != null && !cards.isEmpty()){
////			beans = new ArrayList<CardBean>();
////			CardBean bean = null;
////			for(Card card : cards){
////				bean = new CardBean();
////				bean.setName(card.getName());
////				bean.setId(card.getId());
////				bean.setAccountHolders(card.getAccountHolders());
////				bean.setBranch(card.getBranch());
////				bean.setNumberAc(card.getNumberAc());
////				bean.setType(card.getType());
////				bean.setAid(card.getAccounts().getEmpId());
////				beans.add(bean);
////			}
////		}
////		return beans;
////	}
////	private CardBean preCardBean(Card card){
////		CardBean bean = new CardBean();
////		bean.setName(card.getName());
////		bean.setId(card.getId());
////		bean.setAccountHolders(card.getAccountHolders());
////		bean.setBranch(card.getBranch());
////		bean.setNumberAc(card.getNumberAc());
////		bean.setType(card.getType());
////     	bean.setAid(card.getAccounts().getEmpId());
////		return bean;
////	}
//}
