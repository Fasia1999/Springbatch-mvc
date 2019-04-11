package cn.edu.nju.sa2017.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import org.springframework.batch.core.Job;
import org.springframework.batch.core.JobExecution;
import org.springframework.batch.core.JobParameters;
import org.springframework.batch.core.launch.JobLauncher;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

@Controller
public class WriteController {

	@RequestMapping(value = "/csv2json", method = RequestMethod.GET)
	public ModelAndView json() {

		String[] springConfig =
                {
                        "spring/batch/jobs/job-hello-world.xml"
                };

        ApplicationContext context =
                new ClassPathXmlApplicationContext(springConfig);

        JobLauncher jobLauncher = (JobLauncher) context.getBean("jobLauncher");
        Job job = (Job) context.getBean("helloWorldJob");

        try {

            JobExecution execution = jobLauncher.run(job, new JobParameters());

        } catch (Exception e) {
            e.printStackTrace();
        }

		ModelAndView model = new ModelAndView();
		model.setViewName("csv2json");
		return model;

	}

}