package com.javaPro.DAO.Registration;

import java.util.List;
import java.util.Random;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.javaPro.DTO.Registration.RegDTO;
import com.javaPro.DTO.Registration.RegDetails;




@Repository
@Transactional(propagation=Propagation.REQUIRED)
public class RegDAOImpl implements IRegDAO {


	@Autowired
	SessionFactory factory;

	public SimpleMailMessage email=new SimpleMailMessage();

	@Autowired
	private MailSender mailSender;
	@Override
	public int saveUser(RegDTO dto) {
		// TODO Auto-generated method stub
		Session session=factory.openSession();
		Transaction tx=session.beginTransaction();
		int flag=0;

		Random autoGen=new Random();
		int i=autoGen.nextInt(10000);
		String generatedPass=String.valueOf(i);
		try{
			String recipientAddress=dto.getEmail_id();
			String subject="Successfully Registered to Hellshield";
			String message="Hello ....."+dto.getName()+"\n HellShield Welcomes you!!! \n"+"your UserId="+dto.getEmail_id()+"\n and your Password="+i+"\n This is system generated email.Please don't replay.\n Have a good day";

			email.setTo(recipientAddress);
			email.setSubject(subject);
			email.setText(message);
			mailSender.send(email);
			System.out.println("mail Sent Successfully");

			dto.setPassword(String.valueOf(i));


			session.saveOrUpdate(dto);
			flag=1;

			tx.commit();

			session.close();

		}catch(Exception e){
			e.printStackTrace();
		}

		 
	
		return flag;
	}
	@Override
	public int getLogDetails(String username, String pass) {
		// TODO Auto-generated method stub
		int i=(int) factory.getCurrentSession().createQuery("select id from RegDTO where email_id='"+username+"' and password='"+pass+"'").uniqueResult();
		return i;
	}
	@Override
	public int updatePass(String email1) {
		Session session=factory.openSession();
		Transaction tx=session.beginTransaction();
		Random autoGen=new Random();
		int a=autoGen.nextInt(10000);
		String Generatedpass=String.valueOf(a);
		int id=(int) factory.getCurrentSession().createQuery("select id from RegDTO where email_id='"+email1+"'").uniqueResult();

		if(id>0){
			session.createQuery("update RegDTO set password = '"+Generatedpass+"' where id='"+id+"'").executeUpdate();
			tx.commit();

			try{
				String recipientAddress=email1;
				String subject="Reset Password Request";
				String message="Hello .....\nyour request for reset password has approved!!! \n"+"your UserId="+email1+"\nand your Password="+a+"\nThis is system generated email.Please don't replay.\nHave a good day";

				email.setTo(recipientAddress);
				email.setSubject(subject);
				email.setText(message);
				mailSender.send(email);
				System.out.println("mail Sent Successfully");
			}catch(Exception e){
				e.printStackTrace();
			}

		}

		return id;
	}
	@Override
	public String searchEmail(String emailid) {
		// TODO Auto-generated method stub
		return (String) factory.getCurrentSession().createQuery("select email_id from RegDTO where email_id='"+emailid+"'").uniqueResult();
	}
	@Override
	public List<RegDTO> fetchAll() {
		// TODO Auto-generated method stub
		return factory.getCurrentSession().createQuery("from RegDTO").list();
	}
	@Override
	public RegDTO fetchId(String selected) {
		// TODO Auto-generated method stub
		int id=Integer.valueOf(selected);
		return (RegDTO) factory.getCurrentSession().createQuery("from RegDTO where id="+id).uniqueResult();
	}


	
}
