//
//  CooperationCriteria.swift
//  CooperationStation
//
//  Created by Kyle Peterson on 9/12/23.
//

import Foundation

enum CooperationCriteria: Hashable {
    // Define the main categories
    case objectiveMetrics(ObjectiveMetrics)
    case communication(Communication)
    case rolesResponsibilities(RolesResponsibilities)
    case conflictProblemSolving(ProblemSolving)
    case trustRespect(TrustRespect)
    case groupDynamics(GroupDynamics)
    case feedbackEvaluation(FeedbackEvaluation)
    case goalAlignment(GoalAlignment)
    case culturalContextual(CulturalContextual)
    
    // Define nested enums for subtypes
    enum ObjectiveMetrics: String, CaseIterable {
        case taskCompletion = "Task Completion"
        case attendanceParticipation = "Attendance and Participation"
        case conflictResolution = "Conflict Resolution"
        case projectTimeliness = "Project Timeliness"
        case qualityOfDeliverables = "Quality of Deliverables"
        case resourceUtilization = "Resource Utilization"
        case innovationCreativity = "Innovation and Creativity"
        case taskDistributionFairness = "Task Distribution Fairness"
        case workloadBalance = "Workload Balance"
        case communicationEfficiency = "Communication Efficiency"
        case meetingEffectiveness = "Meeting Effectiveness"
        case resourceAllocation = "Resource Allocation"
        case taskInterdependencies = "Task Interdependencies"
        case clientCustomerSatisfaction = "Client/Customer Satisfaction"
        case adherenceToStandards = "Adherence to Standards"
        case costControl = "Cost Control"
        case riskManagement = "Risk Management"
        case adaptability = "Adaptability"
        case clientRetention = "Client Retention"
        case safetyCompliance = "Safety and Compliance"
        case environmentalImpact = "Environmental Impact"
        
        var description: String {
            switch self {
            case .taskCompletion:
                return "Assess whether the group consistently meets its goals and completes tasks efficiently. On-time project delivery and achieving objectives can be indicators of good cooperation."
            case .attendanceParticipation:
                return "Measure the level of attendance and active participation in group meetings and activities. Consistent participation may suggest a cooperative group."
            case .conflictResolution:
                return "Evaluate how effectively the group resolves conflicts and disagreements. Minimal conflicts or conflicts that are constructively resolved can indicate cooperation."
            case .projectTimeliness:
                return "Assess whether the group consistently meets project deadlines and completes tasks within specified timeframes. Timely project delivery is often an indicator of effective cooperation."
            case .qualityOfDeliverables:
                return "Evaluate the quality of the work produced by the group. High-quality deliverables can be a reflection of strong cooperation and collaboration."
            case .resourceUtilization:
                return "Analyze how efficiently the group utilizes resources such as materials, budget, and manpower. Effective resource management is crucial for cooperation."
            case .innovationCreativity:
                return "Measure the group's ability to generate innovative ideas and creative solutions. A cooperative group may be more open to exploring new approaches."
            case .taskDistributionFairness:
                return "Determine if tasks and responsibilities are distributed fairly among group members. Fair allocation promotes cooperation and equity."
            case .workloadBalance:
                return "Evaluate whether the workload is evenly distributed among group members. An imbalanced workload can hinder cooperation."
            case .communicationEfficiency:
                return "Measure the efficiency of communication within the group. Fast and effective communication is vital for cooperation."
            case .meetingEffectiveness:
                return "Assess the effectiveness of group meetings in terms of achieving goals, making decisions, and promoting collaboration."
            case .resourceAllocation:
                return "Analyze how the group allocates resources to different projects or tasks. Effective resource allocation can impact cooperation."
            case .taskInterdependencies:
                return "Consider the extent to which tasks within a project are interdependent. Groups that understand and manage task interdependencies well tend to cooperate effectively."
            case .clientCustomerSatisfaction:
                return "Gauge the satisfaction of clients or customers with the group's products or services. High satisfaction may indicate good cooperation."
            case .adherenceToStandards:
                return "Evaluate whether the group adheres to industry standards, best practices, or quality guidelines. Compliance with standards can be a sign of cooperation."
            case .costControl:
                return "Examine the group's ability to control costs and stay within budget constraints. Effective cost control can reflect cooperative efforts."
            case .riskManagement:
                return "Assess how well the group identifies, analyzes, and mitigates risks. A cooperative group may excel in managing uncertainties."
            case .adaptability:
                return "Evaluate the group's ability to adapt to changing circumstances or unexpected challenges. Cooperative groups often exhibit resilience and adaptability."
            case .clientRetention:
                return "Track client retention rates to assess whether the group maintains long-term client relationships, which can be indicative of cooperation."
            case .safetyCompliance:
                return "Consider safety records and regulatory compliance. A cooperative group prioritizes safety and legal adherence."
            case .environmentalImpact:
                return "If relevant, evaluate the group's environmental impact and sustainability practices. Cooperation may extend to environmental responsibility."
            }
        }
    }
    
    enum Communication: String, CaseIterable {
        case openHonestCommunication = "Open and Honest Communication"
        case activeListening = "Active Listening"
        case clearExpressionIdeas = "Clear Expression of Ideas"
        case effectiveFeedback = "Effective Feedback"
        case conflictResolutionCommunication = "Conflict Resolution Communication"
        case knowledgeSharing = "Knowledge Sharing"
        case crossFunctionalCommunication = "Cross-Functional Communication"
        case digitalCommunicationSkills = "Digital Communication Skills"
        case nonverbalCommunication = "Nonverbal Communication"
        
        var description: String {
            switch self {
            case .openHonestCommunication:
                return "Evaluate whether group members communicate openly and honestly with each other. Transparency and effective communication are essential for cooperation."
            case .activeListening:
                return "Assess whether group members actively listen to each other's ideas and feedback. Active listening promotes understanding and collaboration."
            case .clearExpressionIdeas:
                return "Rate the group's ability to express ideas and thoughts clearly and concisely. Clear expression enhances effective communication."
            case .effectiveFeedback:
                return "Evaluate the quality of feedback provided within the group. Constructive feedback can improve cooperation and communication."
            case .conflictResolutionCommunication:
                return "Assess how the group communicates during conflict resolution. Effective communication during conflicts is crucial for cooperation."
            case .knowledgeSharing:
                return "Measure the extent to which group members share knowledge and expertise with each other. Knowledge sharing is critical for cooperation and learning."
            case .crossFunctionalCommunication:
                return "Consider how well the group communicates across different functions or departments. Cross-functional communication is vital in complex organizations."
            case .digitalCommunicationSkills:
                return "Rate the group's proficiency in digital communication tools and platforms. Digital skills facilitate remote collaboration and communication."
            case .nonverbalCommunication:
                return "Evaluate the group's nonverbal communication skills, such as body language and facial expressions. Nonverbal cues can impact understanding."
            }
        }
    }
    
    enum RolesResponsibilities: String, CaseIterable {
        case clearRoleAllocation = "Clear Role Allocation"
        case accountability = "Accountability"
        case delegationEfficiency = "Delegation Efficiency"
        case taskDocumentation = "Task Documentation"
        case roleAdaptability = "Role Adaptability"
        
        var description: String {
            switch self {
            case .clearRoleAllocation:
                return "Check if the group has clear roles and responsibilities for each member. A well-defined structure can facilitate cooperation."
            case .accountability:
                return "Evaluate whether group members are accountable for their assigned tasks and responsibilities. Accountability contributes to group cohesion."
            case .delegationEfficiency:
                return "Assess how efficiently tasks are delegated within the group. Effective delegation can enhance cooperation and productivity."
            case .taskDocumentation:
                return "Rate the group's practice of documenting tasks and responsibilities. Documentation helps clarify roles and expectations."
            case .roleAdaptability:
                return "Evaluate the group's ability to adapt roles and responsibilities when needed."
            }
        }
    }
    
    
    enum ProblemSolving: String, CaseIterable {
        case conflictManagement = "Conflict Management"
        case problemSolvingSkills = "Problem-Solving Skills"
        case decisionMaking = "Decision Making"
        case creativityInnovation = "Creativity and Innovation"
        case solutionImplementation = "Solution Implementation"
        case rootCauseAnalysis = "Root Cause Analysis"
        
        var description: String {
            switch self {
            case .conflictManagement:
                return "Assess how the group handles conflicts and disagreements. A cooperative group is often skilled at resolving issues constructively."
            case .problemSolvingSkills:
                return "Evaluate the group's problem-solving skills. Effective problem-solving can enhance cooperation."
            case .decisionMaking:
                return "Rate the group's decision-making process. Effective decision-making is vital for problem-solving and cooperation."
            case .creativityInnovation:
                return "Measure the group's ability to generate creative and innovative solutions to problems. Creativity can drive cooperation in finding unique solutions."
            case .solutionImplementation:
                return "Assess how well the group implements solutions to problems. Effective implementation is a key aspect of successful problem-solving and cooperation."
            case .rootCauseAnalysis:
                return "Evaluate the group's capability to conduct root cause analysis. Identifying underlying issues promotes effective problem-solving and cooperation."
            }
        }
    }
    
    enum TrustRespect: String, CaseIterable {
        case trustBuilding = "Trust Building"
        case mutualRespect = "Mutual Respect"
        case transparentCommunication = "Transparent Communication"
        case conflictResolutionTrust = "Conflict Resolution Trust"
        case culturalRespect = "Cultural Respect"
        case ethicalBehavior = "Ethical Behavior"
        case confidentialityTrust = "Confidentiality Trust"
        
        var description: String {
            switch self {
            case .trustBuilding:
                return "Evaluate the group's efforts in building trust among its members. Trust is essential for open communication and cooperation."
            case .mutualRespect:
                return "Rate the level of mutual respect within the group. Respect for each other's perspectives and contributions is a cornerstone of cooperation."
            case .transparentCommunication:
                return "Assess the transparency of communication within the group. Transparent communication fosters trust and cooperation."
            case .conflictResolutionTrust:
                return "Evaluate the level of trust in the group's conflict resolution process. Trust in resolving conflicts promotes cooperation and resolution acceptance."
            case .culturalRespect:
                return "Measure the group's respect for cultural diversity. Cultural respect contributes to an inclusive and cooperative environment."
            case .ethicalBehavior:
                return "Rate the group's adherence to ethical behavior and principles. Ethical conduct is vital for trust and cooperation."
            case .confidentialityTrust:
                return "Assess the trust in maintaining confidentiality within the group. Trust in confidentiality is crucial for sharing sensitive information."
            }
        }
    }
    
    enum GroupDynamics: String, CaseIterable {
        case teamCohesion = "Team Cohesion"
        case communicationPatterns = "Communication Patterns"
        case decisionMakingProcesses = "Decision-Making Processes"
        case leadershipEffectiveness = "Leadership Effectiveness"
        case conflictResolutionApproaches = "Conflict Resolution Approaches"
        case rolesClarification = "Roles Clarification"
        case groupNorms = "Group Norms"
        
        var description: String {
            switch self {
            case .teamCohesion:
                return "Assess the level of cohesion within the team. Team cohesion is vital for collaboration and cooperation."
            case .communicationPatterns:
                return "Evaluate the group's communication patterns. Effective communication patterns are essential for cooperation."
            case .decisionMakingProcesses:
                return "Rate the group's decision-making processes. Effective decision-making processes facilitate cooperation and problem-solving."
            case .leadershipEffectiveness:
                return "Assess the effectiveness of leadership within the group. Effective leadership promotes cooperation and goal alignment."
            case .conflictResolutionApproaches:
                return "Evaluate the group's approaches to conflict resolution. Effective conflict resolution approaches enhance cooperation."
            case .rolesClarification:
                return "Check if roles and responsibilities are well clarified within the group. Clear roles promote cooperation and task efficiency."
            case .groupNorms:
                return "Examine the group's established norms and behaviors. Adherence to group norms can influence cooperation and behavior consistency."
            }
        }
    }
    
    enum FeedbackEvaluation: String, CaseIterable {
        case feedbackQuality = "Feedback Quality"
        case feedbackTimeliness = "Feedback Timeliness"
        case constructiveCriticism = "Constructive Criticism"
        case feedbackReceptiveness = "Feedback Receptiveness"
        case performanceAppraisals = "Performance Appraisals"
        case peerFeedback = "Peer Feedback"
        case selfAssessment = "Self-Assessment"
        case feedbackActionability = "Feedback Actionability"
        // Add other subtypes within FeedbackEvaluation here...
        
        var description: String {
            switch self {
            case .feedbackQuality:
                return "Evaluate the quality of feedback provided within the group. Constructive and insightful feedback promotes cooperation and improvement."
            case .feedbackTimeliness:
                return "Assess the timeliness of feedback delivery. Timely feedback allows for quick adjustments and fosters cooperation."
            case .constructiveCriticism:
                return "Rate the ability of group members to provide constructive criticism. Constructive feedback is essential for personal and collective growth."
            case .feedbackReceptiveness:
                return "Evaluate how receptive group members are to feedback. Receptiveness promotes a culture of continuous improvement and cooperation."
            case .performanceAppraisals:
                return "Assess the effectiveness of performance appraisal processes. Effective appraisals help align individual and group goals."
            case .peerFeedback:
                return "Consider the role of peer feedback within the group. Peer feedback can provide valuable insights for cooperation and self-improvement."
            case .selfAssessment:
                return "Evaluate whether group members engage in self-assessment. Self-awareness is important for personal growth and cooperation."
            case .feedbackActionability:
                return "Assess whether feedback is actionable and leads to concrete improvements. Actionable feedback enhances cooperation and performance."
                // Add descriptions for other subtypes within FeedbackEvaluation here...
            }
        }
    }
    
    enum GoalAlignment: String, CaseIterable {
        case strategicAlignment = "Strategic Alignment"
        case goalClarity = "Goal Clarity"
        case goalConsistency = "Goal Consistency"
        case goalPriority = "Goal Priority"
        case goalTracking = "Goal Tracking"
        case individualContributions = "Individual Contributions"
        case teamContributions = "Team Contributions"
        case sharedPurpose = "Shared Purpose"
        
        var description: String {
            switch self {
            case .strategicAlignment:
                return "Assess the alignment of individual or team goals with the organization's strategic objectives. Strategic alignment is essential for cooperation and organizational success."
            case .goalClarity:
                return "Evaluate the clarity of goals and objectives within the group. Clear and well-defined goals facilitate cooperation and task execution."
            case .goalConsistency:
                return "Rate the consistency of goals among team members or units. Consistency in goals helps prevent conflicts and fosters cooperation."
            case .goalPriority:
                return "Assess the prioritization of goals within the group. Proper goal prioritization ensures that efforts are focused on key objectives."
            case .goalTracking:
                return "Evaluate how well goals are tracked and monitored. Effective goal tracking promotes accountability and cooperation."
            case .individualContributions:
                return "Assess individual contributions toward shared goals. Recognizing individual efforts contributes to cooperation and a sense of achievement."
            case .teamContributions:
                return "Evaluate how well the team contributes to achieving collective goals. Effective team contributions are crucial for cooperation."
            case .sharedPurpose:
                return "Consider the presence of a shared sense of purpose within the group. A shared purpose fosters cooperation by aligning members toward a common mission."
            }
        }
    }
    
    enum CulturalContextual: String, CaseIterable {
        case culturalAwareness = "Cultural Awareness"
        case diversityInclusion = "Diversity and Inclusion"
        case crossCulturalCommunication = "Cross-Cultural Communication"
        case culturalCompetence = "Cultural Competence"
        case culturalSensitivity = "Cultural Sensitivity"
        case globalMindset = "Global Mindset"
        
        var description: String {
            switch self {
            case .culturalAwareness:
                return "Assess the level of cultural awareness within the group. Cultural awareness is vital for understanding different perspectives and promoting cooperation."
            case .diversityInclusion:
                return "Evaluate the commitment to diversity and inclusion within the group. A diverse and inclusive environment fosters cooperation and innovation."
            case .crossCulturalCommunication:
                return "Rate the effectiveness of cross-cultural communication within the group. Effective communication across cultures is essential for cooperation in global settings."
            case .culturalCompetence:
                return "Assess the group's cultural competence in dealing with diverse teams or audiences. Cultural competence promotes cooperation and effectiveness."
            case .culturalSensitivity:
                return "Evaluate the level of cultural sensitivity within the group. Cultural sensitivity helps avoid misunderstandings and conflicts, fostering cooperation."
            case .globalMindset:
                return "Consider the presence of a global mindset within the group. A global mindset is crucial for cooperation in international contexts and diverse markets."
            }
        }
    }
    
    static var criteriaList: [CooperationCriteria] {
            var list: [CooperationCriteria] = []

            // Add all cases from the sub-enums
            list += ObjectiveMetrics.allCases.map { CooperationCriteria.objectiveMetrics($0) }
            list += Communication.allCases.map { CooperationCriteria.communication($0) }
            list += RolesResponsibilities.allCases.map { CooperationCriteria.rolesResponsibilities($0) }
            list += ProblemSolving.allCases.map { CooperationCriteria.conflictProblemSolving($0) }
            list += TrustRespect.allCases.map { CooperationCriteria.trustRespect($0) }
            list += GroupDynamics.allCases.map { CooperationCriteria.groupDynamics($0) }
            list += FeedbackEvaluation.allCases.map { CooperationCriteria.feedbackEvaluation($0) }
            list += GoalAlignment.allCases.map { CooperationCriteria.goalAlignment($0) }
            list += CulturalContextual.allCases.map { CooperationCriteria.culturalContextual($0) }

            return list
        }
}
