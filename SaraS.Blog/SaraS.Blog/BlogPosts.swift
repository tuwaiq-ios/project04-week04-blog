//
//  BlogPosts.swift
//  SaraS.Blog
//
//  Created by SARA SAUD on 3/18/1443 AH.
//


import Foundation
struct BlogPosts :Identifiable {
    
    var id : Int
    var name : String
    var image : String
    var details : String
    var Pimage : String
    var person : String
 
}
var latestpost = [
    BlogPosts(id: 0, name: "Front-End Tools", image: "a1", details:"5 Front-End Tools To Ease the Web Development Process"
            , Pimage: "b1", person: "By Simpy Harwani.October 8, 2021"),
    
    BlogPosts(id: 1, name: "Effectively Communicate", image: "a2", details: "5 Tips Programmers Can Use To Effectively Communicate With Marketers",Pimage: "b2",person: "By Ron Stefanski.October 6, 2021"),

BlogPosts(id: 2, name: "Code Reuse", image: "a3", details: "Code Reuse – What Is It and How Does It Benefit Programmers?", Pimage: "b3", person: "By Ashish Parmar.October 1, 2021"),


]
 var featuredpost = [
    BlogPosts(id: 0, name: "Front-End Tools", image: "a1", details: "5 Front-End Tools To Ease the Web Development Process, front-end toolsBeing a web development writer for over two years, I have been part of many web development communities in order to stay updated with the trends. The most common conversations I have come across have always been about how to ease the process of web development. Some programmers are on the lookout for tools that allow them to write less code, while others need help with quicker testing. So, I decided to write a blog post featuring the top web development tools that help you do just that.  However, one blog post will not suffice if I have to mention both the front-end and back-end tools in detail. I’ll cover the back-end tools in my next post. For now, here are the five most useful front-end web development tools that will enable you to create more with less.and peppred sirloin beefA dish made of strips of salted and peppred sirloin beef",Pimage: "b1",person: "By Simpy Harwani"),

    BlogPosts(id: 1, name: "Effectively Communicate", image: "a2", details: "5 Tips Programmers Can Use To Effectively Communicate With Marketers programmers communicate with marketersProgrammers are the gatekeepers of a digital product’s success. Although they are not responsible for the product’s live application, they are responsible for its blueprint. And for the project to be a success, they need to be able to communicate effectively with the marketing team in order to create a product that users love.  Marketers and programmers are the two main players in most organizations. They are also experts in their own individual field who share little knowledge of the processes, capabilities, or constraints faced by their counterparts.  And that’s where problems arise. The majority of internet experts are from the tech world, which is why there’s often a disconnect between them and marketers who work with many different channels. For the most part, programmers don’t understand marketing strategies. On the other hand, marketers view things from specific lenses, and they don’t speak programming languages. According to web design agencies, with such huge communication barriers between the two teams, the results are impractical designs, decreased velocity, and inaccurate implementation—all of which translate to project failure. Luckily, there’s a lot that programmers can do to enhance the flow of communication with marketers so both parties can benefit. Read on to discover the five tips programmers can use to effectively communicate with marketing. But first, let’s take a look at why communication between programmers and marketers is so vital.  Why Is Effective Communication Important? It’s important for marketers and programmers to communicate effectively because there is an ever-growing range of software for achieving marketing objectives, staying competitive, and keeping up with expectations of an increasingly tech-savvy customer base. However, to nonprogrammers this can seem like a daunting task. That’s why it’s important for programmers to find effective ways to communicate: so marketers can gain the confidence of making well-informed decisions where software is concerned.",Pimage: "b2",person: "By Ron Stefanski"),
    
    
    BlogPosts(id: 2, name: "Code Reuse", image: "a3", details:
                "Accuracy and speed are the two most important virtues that modern-day applications need in order to succeed. As consumers across the globe demand products that provide value for their hard-earned money, innovation has become necessary for businesses that want to stay competitive. For software developers, code reuse helps simplify and speed up software production as well as rectify the technical challenges associated with businesses. However, to reuse the code effectively, one has to understand its nuances. In this post I’ll show you all about code reuse. From what it is and what benefits it has, to when it’s best to avoid it and why, you’ll find all the information you need to optimize your workflow.  What Is Code Reuse, and When Is It Possible? Code reuse is also known as software reuse. As the name suggests, it is the art of reusing existing (already written) code either from external sources or from one’s own past projects to develop new software.  Programmers perform this action to get the same or similar functions. Nevertheless, only quality code (with no bugs or complexity) can be reused. Quite simply, if the code has flaws, it will not be reliable, secure, or safe.  Developing fast, reliable, and secure software consistently requires a lot of programming skills and knowledge. Thus, developers need to analyze the conditions and requirements of an app before going ahead with its code reuse. In a nutshell, conditions favoring code reuse include the following:  When the code is transferred to different hardware.  If the code is devoid of defects that impact the security and safety of the application in the long run.  When the code can be extended and accepted in the new application easily. With these in mind, let’s now see some of the benefits of reusing code." ,Pimage: "b3",person: "By Ashish Parmar.October 1, 2021")


 ]
