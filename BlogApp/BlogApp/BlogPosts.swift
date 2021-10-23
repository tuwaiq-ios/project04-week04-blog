//
//  BlogPosts.swift
//  BlogApp
//
//  Created by HANAN on 17/03/1443 AH.
//

import SwiftUI


struct BlogPosts :Identifiable {
    
    var id : Int
    var name : String
    var image : String
    var details : String
}




var latestpost = [
BlogPosts(id: 0,
          name: "Be compassionate with yourself",
          image: "1",
          details: " Be compassionate with yourself and realize all the ways adversity has made you strong.. People who face some adversity in their lives become stronger.  Of course, it depends on a lot of factors, but by learning to deal with stress and getting this experience, you will gain confidence and gain readiness.  Sometimes you may forget about it and focus on how you are a person who is stuck in suffering instead of seeing your own strength.  Consider yourself someone who is better prepared for life than an ordinary person because you have lived so much."),

BlogPosts(id: 1,
          name: "Our invisible eyes",
          image: "2",
          details: "If feelings were a language, they surely seem so easily, they are a strange phenomenon to us, because we find ourselves in a wholly individual and personal kind, an experience that is difficult for us to discern Sometimes understanding it not to mention being able to put it into words and share it with others."),

BlogPosts(id: 2,
          name: "Psychological flexibility ",
          image: "3",
          details: "Psychological flexibility and the most important tips for gaining it : 1- Don't wait for the situation to fix itself Resilient people tend to say: What am I going to do about this?  Instead of how long am I going to survive this? 2- Know your strengths and use them In general, people who are more flexible tend to use their strengths.  No matter what skills and talents you have, use them to get you through."),

BlogPosts(id: 4, name: "Mindfulness", image: "4", details: "One always falls back on one's own paths, gets stuck in one's own paths, and when caught up in the clutches of the familiar, turns one's back on existence, spinning again and again around one's own circle."),

BlogPosts(id: 3,
          name: "Mental presence as a strategy to deal with life's stresses",
          image: "5",
          details: "Research shows that stress anxiety has evolved to help motivate you to get the job done, by increasing your energy and focus.  Instead of focusing on getting rid of the stress itself.  Which can lead you to irrational strategies that weaken rather than improve your psychological well-being.  You can acknowledge that your response to pressure may serve your values.  Looking at the phenomenon (post-traumatic growth) may give us an example of the process by which experiencing stress and adversity eventually leads to positive results, such as: a deep social bond after an intense quarrel with a spouse, a greater appreciation of life after a health crisis.  This third step involves embracing the idea that stress can enhance your well-being in the long run. This does not mean that you are blind to the fact that burnout can occur as a result of it, but that you are aware of the possibility of achieving a high level of well-being, not despite the stress but perhaps  because of her."),

BlogPosts(id: 5,
          name: "Neurons are the mirror that reflects the strength and depth of the connections that bind us to others.” G Rizzolatti, C Sinigaglia",
          image: "7",
          details: "In fact, the early care a child receives shapes the nervous system, and determines how the child will interpret and respond to stress and stress. Childhood is a central stage in building organizational habits. The brain and nervous system at this stage are flexible, fragile, immature, and underdeveloped. The brain is still  It is under construction, and this is what makes simple events - which we adults may see marginal - a great impact on the fate of the child."),

BlogPosts(id: 6, name: "Stimulus", image: "6", details: "Others' feelings have inherent motivational properties that directly regulate and motivate our behavior, for example admiration, congratulations, and reproach act as rewards or punishments for what we do. These processes are not mutually exclusive.  In the sense that you can catch someone's smile to feel happy for you too because of the emotional infection, and evaluate the situation as positive considering that his emotional reaction is the result of his evaluation of the current situation, and this smile is also a motive to repeat the action that provoked his smile in the beginning."),

]
 var featuredpost = [
    
    BlogPosts(id: 0, name: "Thinking or not thinking",
              image: "8",
              details: "How can you solve your problems without thinking about them?  You can not.  Does that mean you have to tolerate stress until it reaches high levels that may cause you symptoms of anxiety?  no not like that.  But you should be able to differentiate between healthy thinking about your problems, such as introspection, and unhealthy thinking, such as rumination."),

    BlogPosts(id: 1, name: "Ignorance and knowledge",
              image: "9",
              details: "I perceive ignorance only as a friend and faithful to evil;  Serve him without hesitation or grace.  Ignorance easily and unconsciously makes us evil.  Therefore, knowledge is a moral value;  When we know, we can choose - with insight - the good, and avoid the evil."),
    
    BlogPosts(id: 2, name: "Be compassionate with yourself",
              image: "1",
              details: "Be compassionate with yourself and realize all the ways adversity has made you strong.. People who face some adversity in their lives become stronger.  Of course, it depends on a lot of factors, but by learning to deal with stress and getting this experience, you will gain confidence and gain readiness.  Sometimes you may forget about it and focus on how you are a person who is stuck in suffering instead of seeing your own strength.  Consider yourself someone who is better prepared for life than an ordinary person because you have lived so much."),
    
    BlogPosts(id: 3,
              name: "Our invisible eyes",
              image: "2",
              details: "If feelings were a language, they surely seem so easily, they are a strange phenomenon to us, because we find ourselves in a wholly individual and personal kind, an experience that is difficult for us to discern Sometimes understanding it not to mention being able to put it into words and share it with others."),

    BlogPosts(id: 4,
              name: "Psychological flexibility ", image: "3",
              details: "1- Don't wait for the situation to fix itself Resilient people tend to say: What am I going to do about this?  Instead of how long am I going to survive this? 2- Know your strengths and use them In general, people who are more flexible tend to use their strengths.  No matter what skills and talents you have, use them to get you through."),

    BlogPosts(id: 5,
              name: "Mindfulness",
              image: "4",
              details: "One always falls back on one's own paths, gets stuck in one's own paths, and when caught up in the clutches of the familiar, turns one's back on existence, spinning again and again around one's own circle."),

    BlogPosts(id: 6,
              name: "Mental presence as a strategy to deal with life's stresses",
              image: "5",
              details: "Research shows that stress anxiety has evolved to help motivate you to get the job done, by increasing your energy and focus.  Instead of focusing on getting rid of the stress itself.  Which can lead you to irrational strategies that weaken rather than improve your psychological well-being.  You can acknowledge that your response to pressure may serve your values.  Looking at the phenomenon (post-traumatic growth) may give us an example of the process by which experiencing stress and adversity eventually leads to positive results, such as: a deep social bond after an intense quarrel with a spouse, a greater appreciation of life after a health crisis.  This third step involves embracing the idea that stress can enhance your well-being in the long run. This does not mean that you are blind to the fact that burnout can occur as a result of it, but that you are aware of the possibility of achieving a high level of well-being, not despite the stress but perhaps  because of her."),

    BlogPosts(id: 7,
              name: "Neurons are the mirror that reflects the strength and depth of the connections that bind us to others.",
              image: "7",
              details: "In fact, the early care a child receives shapes the nervous system, and determines how the child will interpret and respond to stress and stress. Childhood is a central stage in building organizational habits. The brain and nervous system at this stage are flexible, fragile, immature, and underdeveloped. The brain is still  It is under construction, and this is what makes simple events - which we adults may see marginal - a great impact on the fate of the child."),

    BlogPosts(id: 8,
              name: "Stimulus",
              image: "6",
              details: "Others' feelings have inherent motivational properties that directly regulate and motivate our behavior, for example admiration, congratulations, and reproach act as rewards or punishments for what we do. These processes are not mutually exclusive.  In the sense that you can catch someone's smile to feel happy for you too because of the emotional infection, and evaluate the situation as positive considering that his emotional reaction is the result of his evaluation of the current situation, and this smile is also a motive to repeat the action that provoked his smile in the beginning."),
    
    BlogPosts(id: 9,
              name: "Friendship relationship",
              image: "10",
              details: "Every true friendship is a project of continuous restoration of what life's difficulties destroy within us, it is the relationship that makes our existence more than a distance, as Adler describes: The most important thing we gain from friendship, is the widening of our field of vision and feeling, because we see things with another person's eye, and feel with his heart. And how important it is for us not to see things with our own eyes.")

 ]
