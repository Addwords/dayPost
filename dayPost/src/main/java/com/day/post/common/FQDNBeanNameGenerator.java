package com.day.post.common;

import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.support.BeanDefinitionRegistry;
import org.springframework.beans.factory.support.BeanNameGenerator;

public class FQDNBeanNameGenerator implements BeanNameGenerator{

	
	//spring annotation-driven 시  bean name 중복(충돌, conflicts) 해결
	//↑무슨말인지 모르겠음
	@Override
	public String generateBeanName(BeanDefinition definition, BeanDefinitionRegistry registry) {
		String fullClassName = definition.getBeanClassName();
		return fullClassName;
	}

}
