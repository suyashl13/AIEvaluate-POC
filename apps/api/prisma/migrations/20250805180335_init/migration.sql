-- CreateTable
CREATE TABLE "public"."InterviewActionPoint" (
    "id" UUID NOT NULL DEFAULT uuid_generate_v4(),
    "created_at" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    "interview_id" UUID,
    "action_text" TEXT,

    CONSTRAINT "InterviewActionPoint_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."InterviewEvaluation" (
    "id" UUID NOT NULL DEFAULT uuid_generate_v4(),
    "created_at" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    "interview_id" UUID,
    "candidate_name" TEXT,
    "interview_role" TEXT,
    "interview_mode" TEXT,
    "interview_date" DATE,
    "total_score" INTEGER,

    CONSTRAINT "InterviewEvaluation_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."InterviewEvaluationParameter" (
    "id" UUID NOT NULL DEFAULT uuid_generate_v4(),
    "created_at" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    "interview_id" UUID,
    "parameter_name" TEXT,
    "score" INTEGER,
    "comment" TEXT,

    CONSTRAINT "InterviewEvaluationParameter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."InterviewHireAssessment" (
    "id" UUID NOT NULL DEFAULT uuid_generate_v4(),
    "created_at" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    "interview_id" UUID,
    "technical" TEXT,
    "behavioral" TEXT,

    CONSTRAINT "InterviewHireAssessment_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."InterviewImprovementArea" (
    "id" UUID NOT NULL DEFAULT uuid_generate_v4(),
    "created_at" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    "interview_id" UUID,
    "weakness" TEXT,
    "explanation" TEXT,
    "how_to_improve" TEXT,

    CONSTRAINT "InterviewImprovementArea_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."InterviewQuestion" (
    "id" UUID NOT NULL DEFAULT uuid_generate_v4(),
    "created_at" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    "resume_id" UUID,
    "interview_id" UUID,
    "question_text" TEXT,
    "question_type" TEXT,
    "topic" TEXT,
    "difficulty_level" TEXT,
    "ai_generated" BOOLEAN,
    "answer" TEXT,
    "feedback" TEXT,
    "order_number" INTEGER,
    "was_pre_genrated" BOOLEAN DEFAULT false,
    "is_project_based_question" BOOLEAN DEFAULT false,

    CONSTRAINT "InterviewQuestion_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."InterviewTargetCompany" (
    "id" UUID NOT NULL DEFAULT uuid_generate_v4(),
    "created_at" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    "interview_id" UUID,
    "company_type" TEXT,

    CONSTRAINT "InterviewTargetCompany_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."Resume" (
    "id" UUID NOT NULL DEFAULT uuid_generate_v4(),
    "created_at" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    "resume_ref_name" TEXT,
    "profile_name" TEXT,
    "user_id" UUID,
    "is_deleted" BOOLEAN DEFAULT false,
    "deleted_at" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Resume_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."ResumeAdditionalAward" (
    "id" UUID NOT NULL DEFAULT uuid_generate_v4(),
    "created_at" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    "title" TEXT,
    "resume_id" UUID,

    CONSTRAINT "ResumeAdditionalAward_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."ResumeCertification" (
    "id" UUID NOT NULL DEFAULT uuid_generate_v4(),
    "created_at" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    "certificate_name" TEXT,
    "certificate_link" TEXT,
    "issued_by" TEXT,
    "resume_id" UUID,

    CONSTRAINT "ResumeCertification_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."ResumeEducation" (
    "id" UUID NOT NULL DEFAULT uuid_generate_v4(),
    "created_at" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    "institution" TEXT,
    "location" TEXT,
    "degree_type" TEXT,
    "field_of_study" TEXT,
    "start_month_year" TEXT,
    "end_month_year" TEXT,
    "score_metric" TEXT,
    "score" TEXT,
    "resume_id" UUID,

    CONSTRAINT "ResumeEducation_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."ResumeExperience" (
    "id" UUID NOT NULL DEFAULT uuid_generate_v4(),
    "created_at" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    "employer" TEXT,
    "Job_title" TEXT,
    "location" TEXT,
    "start_month_year" TEXT,
    "end_month_year" TEXT,
    "resume_id" UUID,

    CONSTRAINT "ResumeExperience_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."ResumePersonalInfo" (
    "id" UUID NOT NULL DEFAULT uuid_generate_v4(),
    "created_at" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    "first_name" TEXT,
    "last_name" TEXT,
    "email" TEXT,
    "phone" TEXT,
    "address" TEXT,
    "dob" TEXT,
    "job_title" TEXT,
    "git_link" TEXT,
    "linkedin_profile" TEXT,
    "portfolio_link" TEXT,
    "resume_id" UUID,

    CONSTRAINT "ResumePersonalInfo_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."ResumeProject" (
    "id" UUID NOT NULL DEFAULT uuid_generate_v4(),
    "created_at" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    "project_name" TEXT,
    "technologies_used" TEXT,
    "project_link" TEXT,
    "description" TEXT,
    "resume_id" UUID,

    CONSTRAINT "ResumeProject_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."ResumeSkillSet" (
    "id" UUID NOT NULL DEFAULT uuid_generate_v4(),
    "created_at" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    "programming_languages" TEXT[],
    "libraries_and_frameworks" TEXT[],
    "tools_and_platforms" TEXT[],
    "databases" TEXT[],
    "concepts" TEXT[],
    "resume_id" UUID,

    CONSTRAINT "ResumeSkillSet_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."ScheduledInterview" (
    "id" UUID NOT NULL DEFAULT uuid_generate_v4(),
    "created_at" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    "user_id" UUID,
    "resume_id" UUID,
    "scheduled_at" TIMESTAMP(6),
    "interview_type" TEXT,
    "difficulty_level" TEXT,
    "question_count" INTEGER,
    "duration_minutes" INTEGER,
    "interview_status" TEXT,

    CONSTRAINT "ScheduledInterview_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."User" (
    "id" UUID NOT NULL DEFAULT uuid_generate_v4(),
    "created_at" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    "first_name" TEXT,
    "last_name" TEXT,
    "email" TEXT,
    "password" TEXT,
    "updated_at" TEXT,
    "is_mail_verified" BOOLEAN DEFAULT false,
    "is_deleted" BOOLEAN DEFAULT false,
    "deleted_at" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "InterviewEvaluation_interview_id_key" ON "public"."InterviewEvaluation"("interview_id");

-- CreateIndex
CREATE UNIQUE INDEX "InterviewHireAssessment_interview_id_key" ON "public"."InterviewHireAssessment"("interview_id");

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "public"."User"("email");

-- AddForeignKey
ALTER TABLE "public"."InterviewActionPoint" ADD CONSTRAINT "InterviewActionPoint_interview_id_fkey" FOREIGN KEY ("interview_id") REFERENCES "public"."ScheduledInterview"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "public"."InterviewEvaluation" ADD CONSTRAINT "InterviewEvaluation_interview_id_fkey" FOREIGN KEY ("interview_id") REFERENCES "public"."ScheduledInterview"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "public"."InterviewEvaluationParameter" ADD CONSTRAINT "InterviewEvaluationParameter_interview_id_fkey" FOREIGN KEY ("interview_id") REFERENCES "public"."ScheduledInterview"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "public"."InterviewHireAssessment" ADD CONSTRAINT "InterviewHireAssessment_interview_id_fkey" FOREIGN KEY ("interview_id") REFERENCES "public"."ScheduledInterview"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "public"."InterviewImprovementArea" ADD CONSTRAINT "InterviewImprovementArea_interview_id_fkey" FOREIGN KEY ("interview_id") REFERENCES "public"."ScheduledInterview"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "public"."InterviewQuestion" ADD CONSTRAINT "InterviewQuestion_interview_id_fkey" FOREIGN KEY ("interview_id") REFERENCES "public"."ScheduledInterview"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "public"."InterviewQuestion" ADD CONSTRAINT "InterviewQuestion_resume_id_fkey" FOREIGN KEY ("resume_id") REFERENCES "public"."Resume"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "public"."InterviewTargetCompany" ADD CONSTRAINT "InterviewTargetCompany_interview_id_fkey" FOREIGN KEY ("interview_id") REFERENCES "public"."ScheduledInterview"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "public"."Resume" ADD CONSTRAINT "Resume_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."User"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "public"."ResumeAdditionalAward" ADD CONSTRAINT "ResumeAdditionalAward_resume_id_fkey" FOREIGN KEY ("resume_id") REFERENCES "public"."Resume"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "public"."ResumeCertification" ADD CONSTRAINT "ResumeCertification_resume_id_fkey" FOREIGN KEY ("resume_id") REFERENCES "public"."Resume"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "public"."ResumeEducation" ADD CONSTRAINT "ResumeEducation_resume_id_fkey" FOREIGN KEY ("resume_id") REFERENCES "public"."Resume"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "public"."ResumeExperience" ADD CONSTRAINT "ResumeExperience_resume_id_fkey" FOREIGN KEY ("resume_id") REFERENCES "public"."Resume"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "public"."ResumePersonalInfo" ADD CONSTRAINT "ResumePersonalInfo_resume_id_fkey" FOREIGN KEY ("resume_id") REFERENCES "public"."Resume"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "public"."ResumeProject" ADD CONSTRAINT "ResumeProject_resume_id_fkey" FOREIGN KEY ("resume_id") REFERENCES "public"."Resume"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "public"."ResumeSkillSet" ADD CONSTRAINT "ResumeSkillSet_resume_id_fkey" FOREIGN KEY ("resume_id") REFERENCES "public"."Resume"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "public"."ScheduledInterview" ADD CONSTRAINT "ScheduledInterview_resume_id_fkey" FOREIGN KEY ("resume_id") REFERENCES "public"."Resume"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "public"."ScheduledInterview" ADD CONSTRAINT "ScheduledInterview_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."User"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
