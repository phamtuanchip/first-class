package com.dineshonjava.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.hibernate.SessionFactory;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.hibernate.Query;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.dineshonjava.bean.AccountBean;
import com.dineshonjava.bean.CardBean;
import com.dineshonjava.model.Account;
import com.dineshonjava.model.Card;
import com.dineshonjava.service.AccountService;
import com.dineshonjava.service.CardService;
public class MultiController extends MultiActionController{
	private AccountService accountService;
	public void setAccountService(AccountService accountService) {
		this.accountService = accountService;
	}
	private AccountBean accountBean;
	public void setAccountBean(AccountBean accountBean) {
		this.accountBean = accountBean;
	}

	private CardService cardService;
	public void setCardService(CardService cardService) {
		this.cardService = cardService;
	}
	private CardBean cardBean;
	public void setCardBean(CardBean cardBean) {
		this.cardBean = cardBean;
	}
	
	public ModelAndView save(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {
//		AccountBean accountBean = (AccountBean) newCommandObject(AccountBean.class);
//		bind(request, accountBean);
		accountBean = (AccountBean) session.getAttribute("accountBean");
		
		Account account = saveModel(accountBean);
		
		
		accountService.addAccount(account);
		dell(accountBean);
		return new ModelAndView("redirect:/multi.html?mode=list");
	}
		public ModelAndView edit(HttpServletRequest request, HttpServletResponse response) throws Exception {

			AccountBean accountBean = (AccountBean) newCommandObject(AccountBean.class);
			bind(request, accountBean);
			accountBean = updateBean(accountService.getAccount(accountBean.getId()));
			Map<String, Object> model = new HashMap<String, Object>();
			model.put("accountBean", accountBean);
			
		//	model.put("accounts",  addBean(accountService.listAccount()));
			return new ModelAndView("accountAdd",model);
		}
	public ModelAndView delete(HttpServletRequest request, HttpServletResponse response) throws Exception {
			accountBean= new AccountBean();
			accountBean.setId(Integer.parseInt(request.getParameter("id")));
			//cardService.deleteCard();
			accountService.deleteAccount(saveModel(accountBean));
			Map<String, Object> model = new HashMap<String, Object>();
			model.put("account", null);
			model.put("accounts",  accountBean(accountService.listAccount()));
			
			return new ModelAndView("redirect:/multi.html?mode=list");
		}

	public ModelAndView list(HttpServletRequest request, HttpServletResponse response) throws Exception {
			Map<String, Object> model = new HashMap<String, Object>();
			model.put("accounts",  accountBean(accountService.listAccount()));
			return new ModelAndView("accountList", model);
			
		}
	public ModelAndView search(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {
		accountBean = (AccountBean) session.getAttribute("accountBean");
		String text= accountBean.getName();
		Integer type= accountBean.getAge();
		Map<String, Object> model = new HashMap<String, Object>();
		accountBean.setLstAccount(accountBean(accountService.searchUser(text,type)));
		model.put("accountBean",  accountBean);
		dell(accountBean);
		return new ModelAndView("accountSearch", model);
	}

		public ModelAndView index(HttpServletRequest request, HttpServletResponse response){
			return new ModelAndView("index");
		}
//		@RequestMapping(value = "/index", method = RequestMethod.GET)
//		public ModelAndView welcome(){
//			return new ModelAndView("index");
//		}
		private AccountBean updateBean(Account account){
			AccountBean bean = new AccountBean();
			bean.setAddress(account.getAddress());
			bean.setAge(account.getAge());
			bean.setEmails(account.getEmails());
			bean.setUsers(account.getUsers());
			bean.setPhone(account.getPhone());
			bean.setPasswd(account.getPasswd());
			bean.setName(account.getName());
			bean.setIdentityCard(account.getIdentityCard());
			bean.setId(account.getId());
			return bean;
		}

		
		private List<AccountBean> accountBean(List<Account> accounts){
			List<AccountBean> beans = null;
			if(accounts != null && !accounts.isEmpty()){
				beans = new ArrayList<AccountBean>();
				AccountBean bean = null;
				for(Account account : accounts){
					bean = new AccountBean();
					bean.setName(account.getName());
					bean.setId(account.getId());
					bean.setEmails(account.getEmails());
					bean.setPhone(account.getPhone());
					bean.setUsers(account.getUsers());
					bean.setPasswd(account.getPasswd());
					bean.setAddress(account.getAddress());
					bean.setIdentityCard(account.getIdentityCard());
					bean.setAge(account.getAge());
					beans.add(bean);
				} 
			}
			return beans;
		}
		private Account saveModel(AccountBean accountBean){
			Account account = new Account();
			account.setUsers(accountBean.getUsers());
			account.setEmails(accountBean.getEmails());
			account.setPasswd(accountBean.getPasswd());
			account.setPhone(accountBean.getPhone());
			account.setAddress(accountBean.getAddress());
			account.setAge(accountBean.getAge());
			account.setName(accountBean.getName());
			account.setIdentityCard(accountBean.getIdentityCard());
			account.setId(accountBean.getId());
			accountBean.setId(null);
			return account;
		}
		private AccountBean dell(AccountBean bean){
			bean.setUsers(null);
			bean.setEmails(null);
			bean.setPasswd(null);
			bean.setPhone(null);
			bean.setAddress(null);
			bean.setAge(null);
			bean.setName(null);
			bean.setIdentityCard(null);
			bean.setId(null);
		return bean;	
		}
	
//--------------------------------------------Card For Account------------------------------------------------
		public ModelAndView cardList(HttpServletRequest request, HttpServletResponse response) throws Exception {
			Map<String, Object> model = new HashMap<String, Object>();
			model.put("cards",  cardTeam(cardService.listCard()));
			return new ModelAndView("cardList", model);
			
		}
		public ModelAndView card(HttpServletRequest request, HttpServletResponse response) throws Exception {
			CardBean cardBean = (CardBean) newCommandObject(CardBean.class);
			bind(request, cardBean);
			Map<String, Object> model = new HashMap<String, Object>();
			model.put("cards",  cardOne(accountService.getAccount(cardBean.getAid()).getCard()));
			return new ModelAndView("card", model);
		}
		public ModelAndView cardSave(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {
//			CardBean cardBean = (CardBean) newCommandObject(CardBean.class);
//			bind(request, cardBean);
			cardBean = (CardBean) session.getAttribute("cardBean");
			Card card = cardModel(cardBean);
			card.setAccount(accountService.getAccount(cardBean.getAid()));
			cardService.addCard(card);
			dellcard(cardBean);
			return new ModelAndView("redirect://multi.html?mode=cardList");
		}
		public ModelAndView cardEdit(HttpServletRequest request, HttpServletResponse response) throws Exception {

			CardBean cardBean = (CardBean) newCommandObject(CardBean.class);
			bind(request, cardBean);
			//System.out.println(cardBean.getId());
			Map<String, Object> model = new HashMap<String, Object>();
			cardBean = cardPre(cardService.getCard(cardBean.getId()));
			model.put("cardBean", cardBean);
			//model.put("cards",  prepareBean(accountService.getAccount(cardBean.getId()).getCards()));
			return new ModelAndView("cardAdd", model);
		}
		public ModelAndView cardDelete(HttpServletRequest request, HttpServletResponse response) throws Exception {
			CardBean cardBean = (CardBean) newCommandObject(CardBean.class);
			bind(request, cardBean);
			System.out.println(cardBean.getId());
			cardService.deleteCard(cardModel(cardBean));
			Map<String, Object> model = new HashMap<String, Object>();
			model.put("card", null);
			model.put("cards",  cardTeam(cardService.listCard()));
			return new ModelAndView("redirect://multi.html?mode=cardList");
								}

		private Card cardModel(CardBean cardBean) {
			Card card = new Card();
			card.setAccountHolders(cardBean.getAccountHolders());
			card.setBranch(cardBean.getBranch());
			card.setId(cardBean.getId());
			card.setName(cardBean.getName());
			card.setNumberAc(cardBean.getNumberAc());
			card.setType(cardBean.getType());
			cardBean.setId(null);
			return card;
		}
		private CardBean dellcard(CardBean bean){
			bean.setAccountHolders(null);
			bean.setAid(null);
			bean.setBranch(null);
			bean.setId(null);
			bean.setName(null);
			bean.setNumberAc(null);
			bean.setType(null);
			return bean;	
		}
		private List<CardBean> cardOne(Set<Card> cards){
			List<CardBean> beans = null;
			System.out.println(cards.size());
			if(cards != null && !cards.isEmpty()){
				beans = new ArrayList<CardBean>();
				CardBean bean = null;
				for(Card card : cards){
					bean = new CardBean();
					bean.setName(card.getName());
					bean.setId(card.getId());
					bean.setAccountHolders(card.getAccountHolders());
					bean.setBranch(card.getBranch());
					bean.setNumberAc(card.getNumberAc());
					bean.setType(card.getType());
					bean.setAid(card.getAccount().getId());
					beans.add(bean);
				}
			}
			return beans;
			
			
		}
		private List<CardBean> cardTeam(List<Card> cards){
			List<CardBean> beans = null;
			if(cards != null && !cards.isEmpty()){
				beans = new ArrayList<CardBean>();
				CardBean bean = null;
				for(Card card : cards){
					bean = new CardBean();
					bean.setName(card.getName());
					bean.setId(card.getId());
					bean.setAccountHolders(card.getAccountHolders());
					bean.setBranch(card.getBranch());
					bean.setNumberAc(card.getNumberAc());
					bean.setType(card.getType());
					bean.setAid(card.getAccount().getId());
					beans.add(bean);
				}
			}
			return beans;
		}
		private CardBean cardPre(Card card){
			CardBean bean = new CardBean();
			bean.setName(card.getName());
			bean.setId(card.getId());
			bean.setAccountHolders(card.getAccountHolders());
			bean.setBranch(card.getBranch());
			bean.setNumberAc(card.getNumberAc());
			bean.setType(card.getType());
	     	bean.setAid(card.getAccount().getId());
			return bean;
		}
}